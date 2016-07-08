﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using SimplCommerce.Core.ApplicationServices;
using SimplCommerce.Core.Domain.Models;
using SimplCommerce.Infrastructure;
using SimplCommerce.Infrastructure.Domain.IRepositories;
using SimplCommerce.Web.Areas.Admin.ViewModels.Products;
using SimplCommerce.Web.Areas.Admin.ViewModels.SmartTable;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;

namespace SimplCommerce.Web.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = "admin")]
    public class ProductController : Controller
    {
        private readonly IRepository<Product> productRepository;
        private readonly IMediaService mediaService;
        private readonly IProductService productService;
        private readonly IRepository<ProductLink> productLinkRepository;
        private readonly IRepository<ProductCategory> productCategoryRepository;
        private readonly IRepository<ProductOptionValue> productOptionValueRepository;
        private readonly IRepository<ProductAttributeValue> productAttributeValueRepository; 

        public ProductController(
            IRepository<Product> productRepository,
            IMediaService mediaService,
            IProductService productService,
            IRepository<ProductLink> productLinkRepository,
            IRepository<ProductCategory> productCategoryRepository,
            IRepository<ProductOptionValue> productOptionValueRepository,
            IRepository<ProductAttributeValue> productAttributeValueRepository)
        {
            this.productRepository = productRepository;
            this.mediaService = mediaService;
            this.productService = productService;
            this.productLinkRepository = productLinkRepository;
            this.productCategoryRepository = productCategoryRepository;
            this.productOptionValueRepository = productOptionValueRepository;
            this.productAttributeValueRepository = productAttributeValueRepository;
        }

        public IActionResult Get(long id)
        {
            var product = productRepository.Query()
                .Include(x => x.ThumbnailImage)
                .Include(x => x.Medias).ThenInclude(m => m.Media)
                .Include(x => x.ProductLinks).ThenInclude(p => p.LinkedProduct)
                .Include(x => x.OptionValues).ThenInclude(o => o.Option)
                .Include(x => x.AttributeValues).ThenInclude(a => a.Attribute).ThenInclude(g => g.Group)
                .Include(x => x.Categories)
                .FirstOrDefault(x => x.Id == id);

            var productVm = new ProductViewModel
            {
                Id = product.Id,
                Name = product.Name,
                ShortDescription = product.ShortDescription,
                Description = product.Description,
                Specification = product.Specification,
                OldPrice = product.OldPrice,
                Price = product.Price,
                CategoryIds = product.Categories.Select(x => x.CategoryId).ToList(),
                ThumbnailImageUrl = mediaService.GetThumbnailUrl(product.ThumbnailImage),
                BrandId = product.BrandId
            };

            foreach (var productMedia in product.Medias)
            {
                productVm.ProductMedias.Add(new ProductMediaVm
                {
                    Id = productMedia.Id,
                    MediaUrl = mediaService.GetThumbnailUrl(productMedia.Media)
                });
            }

            var options = from opt in product.OptionValues
                             group opt by new
                             {
                                 opt.OptionId,
                                 opt.Option.Name,
                                 opt.ProductId
                             }
                             into g
                             select new ProductOptionVm
                             {
                                 Id = g.Key.OptionId,
                                 Name = g.Key.Name,
                                 Values = g.Select(x => x.Value).Distinct().ToList()
                             };

            productVm.Options = options.ToList();

            foreach (var variation in product.ProductLinks.Where(x => x.LinkType == ProductLinkType.Super).Select(x => x.LinkedProduct).Where(x => !x.IsDeleted))
            {
                productVm.Variations.Add(new ProductVariationVm
                {
                    Id = variation.Id,
                    Name = variation.Name,
                    Price = variation.Price,
                    OptionCombinations = variation.OptionCombinations.Select(x => new ProductOptionCombinationVm
                    {
                        OptionId = x.OptionId,
                        OptionName = x.Option.Name,
                        Value = x.Value
                    }).ToList()
                });
            }

            productVm.Attributes = product.AttributeValues.Select(x => new ProductAttributeVm
            {
                AttributeValueId = x.Id,
                Id = x.AttributeId,
                Name = x.Attribute.Name,
                GroupName = x.Attribute.Group.Name,
                Value = x.Value
            }).ToList();

            return Json(productVm);
        }

        public IActionResult List([FromBody] SmartTableParam param)
        {
            var query = productRepository.Query().Where(x => !x.IsDeleted);
            if (param.Search.PredicateObject != null)
            {
                dynamic search = param.Search.PredicateObject;
                if(search.Name != null)
                {
                    string name = search.Name;
                    query = query.Where(x => x.Name.Contains(name));
                }
            }

            var gridData = query.ToSmartTableResult(
                param,
                x => new ProductListItem
                {
                    Id = x.Id,
                    Name = x.Name,
                    HasOptions = x.HasOptions,
                    IsVisibleIndividually = x.IsVisibleIndividually,
                    CreatedOn = x.CreatedOn,
                    IsPublished = x.IsPublished
                });

            return Json(gridData);
        }

        [HttpPost]
        public IActionResult Create(ProductForm model)
        {
            if (!ModelState.IsValid)
            {
                return new BadRequestObjectResult(ModelState);
            }

            var product = new Product
            {
                Name = model.Product.Name,
                SeoTitle = StringHelper.ToUrlFriendly(model.Product.Name),
                ShortDescription = model.Product.ShortDescription,
                Description = model.Product.Description,
                Specification = model.Product.Specification,
                Price = model.Product.Price,
                OldPrice = model.Product.OldPrice,
                IsPublished = model.Product.IsPublished,
                IsFeatured = model.Product.IsFeatured,
                BrandId = model.Product.BrandId,
                HasOptions = model.Product.Variations.Any() ? true : false,
                IsVisibleIndividually = true 
            };

            foreach (var option in model.Product.Options)
            {
                foreach (var value in option.Values)
                {
                    product.AddOptionValue(new ProductOptionValue
                    {
                        Value = value,
                        OptionId = option.Id
                    });
                }
            }

            foreach (var attribute in model.Product.Attributes)
            {
                var attributeValue = new ProductAttributeValue
                {
                    AttributeId = attribute.Id,
                    Value = attribute.Value
                };

                product.AddAttributeValue(attributeValue);
            }

            foreach (var categoryId in model.Product.CategoryIds)
            {
                var productCategory = new ProductCategory
                {
                    CategoryId = categoryId
                };
                product.AddCategory(productCategory);
            }

            SaveProductImages(model, product);

            MapProductVariationVmToProduct(model, product);

            productService.Create(product);

            return Ok();
        }

        [HttpPost]
        public IActionResult Edit(long id, ProductForm model)
        {
            if (!ModelState.IsValid)
            {
                return new BadRequestObjectResult(ModelState);
            }

            var product = productRepository.Query()
                .Include(x => x.ThumbnailImage)
                .Include(x => x.Medias).ThenInclude(m => m.Media)
                .Include(x => x.ProductLinks).ThenInclude(x => x.LinkedProduct)
                .Include(x => x.OptionValues).ThenInclude(o => o.Option)
                .Include(x => x.AttributeValues).ThenInclude(a => a.Attribute).ThenInclude(g => g.Group)
                .Include(x => x.Categories)
                .FirstOrDefault(x => x.Id == id);
            product.Name = model.Product.Name;
            product.SeoTitle = StringHelper.ToUrlFriendly(product.Name);
            product.ShortDescription = model.Product.ShortDescription;
            product.Description = model.Product.Description;
            product.Specification = model.Product.Specification;
            product.Price = model.Product.Price;
            product.OldPrice = model.Product.OldPrice;
            product.BrandId = model.Product.BrandId;
            product.IsFeatured = model.Product.IsFeatured;
            product.IsPublished = model.Product.IsPublished;

            SaveProductImages(model, product);

            foreach (var productMediaId in model.Product.DeletedMediaIds)
            {
                var productMedia = product.Medias.First(x => x.Id == productMediaId);
                mediaService.DeleteMedia(productMedia.Media);
                product.RemoveMedia(productMedia);
            }

            AddOrDeleteProductOption(model, product);

            AddOrDeleteProductAttribute(model, product);

            AddOrDeleteCategories(model, product);

            AddOrDeleteProductVariation(model, product);

            productService.Update(product);

            return Ok();
        }

        [HttpPost]
        public IActionResult ChangeStatus(long id)
        {
            var product = productRepository.Query().FirstOrDefault(x => x.Id == id);
            if (product == null)
            {
                return NotFound();
            }

            product.IsPublished = !product.IsPublished;
            productRepository.SaveChange();

            return Ok();
        }

        [HttpPost]
        public IActionResult Delete(long id)
        {
            var product = productRepository.Query().FirstOrDefault(x => x.Id == id);
            if (product == null)
            {
                return NotFound();
            }

            productService.Delete(product);

            return Ok();
        }

        private static void MapProductVariationVmToProduct(ProductForm model, Product product)
        {
            foreach (var variationVm in model.Product.Variations)
            {
                var productLink = new ProductLink
                {
                    LinkType = ProductLinkType.Super,
                    Product = product,
                    LinkedProduct = product.Clone()
                };

                productLink.LinkedProduct.Name = variationVm.Name;
                productLink.LinkedProduct.SeoTitle = StringHelper.ToUrlFriendly(variationVm.Name);
                productLink.LinkedProduct.Price = variationVm.Price;
                productLink.LinkedProduct.NormalizedName = variationVm.NormalizedName;
                productLink.LinkedProduct.HasOptions = false;
                productLink.LinkedProduct.IsVisibleIndividually = false;

                foreach (var combinationVm in variationVm.OptionCombinations)
                {
                    productLink.LinkedProduct.AddOptionCombination(new ProductOptionCombination
                    {
                        OptionId = combinationVm.OptionId,
                        Value = combinationVm.Value
                    });
                }

                productLink.LinkedProduct.ThumbnailImage = product.ThumbnailImage;

                product.AddProductLinks(productLink);
            }
        }

        private void AddOrDeleteCategories(ProductForm model, Product product)
        {
            foreach (var categoryId in model.Product.CategoryIds)
            {
                if (product.Categories.Any(x => x.CategoryId == categoryId))
                {
                    continue;
                }

                var productCategory = new ProductCategory
                {
                    CategoryId = categoryId
                };
                product.AddCategory(productCategory);
            }

            var deletedProductCategories =
                product.Categories.Where(productCategory => !model.Product.CategoryIds.Contains(productCategory.CategoryId))
                    .ToList();

            foreach (var deletedProductCategory in deletedProductCategories)
            {
                deletedProductCategory.Product = null;
                product.Categories.Remove(deletedProductCategory);
                productCategoryRepository.Remove(deletedProductCategory);
            }
        }

        private void AddOrDeleteProductOption(ProductForm model, Product product)
        {
            foreach (var optionVm in model.Product.Options)
            {
                foreach (var value in optionVm.Values)
                {
                    if (!product.OptionValues.Any(x => x.OptionId == optionVm.Id && x.Value == value))
                    {
                        product.AddOptionValue(new ProductOptionValue
                        {
                            Value = value,
                            OptionId = optionVm.Id
                        });
                    }
                }
            }

            var deletedProductOptionValues = new List<ProductOptionValue>();
            foreach (var productOptionValue in product.OptionValues)
            {
                var isExist = false;
                foreach (var optionVm in model.Product.Options)
                {
                    foreach (var value in optionVm.Values)
                    {
                        if (productOptionValue.OptionId == optionVm.Id && productOptionValue.Value == value)
                        {
                            isExist = true;
                            break;
                        }
                    }

                    if (isExist)
                    {
                        break;
                    }
                }

                if (!isExist)
                {
                    deletedProductOptionValues.Add(productOptionValue);
                }
            }

            foreach (var productOptionValue in deletedProductOptionValues)
            {
                product.OptionValues.Remove(productOptionValue);
                productOptionValueRepository.Remove(productOptionValue);
            }
        }

        private void AddOrDeleteProductVariation(ProductForm model, Product product)
        {
            foreach (var productVariationVm in model.Product.Variations)
            {
                var productLink = product.ProductLinks.Where(x => x.LinkType == ProductLinkType.Super).FirstOrDefault(x => x.LinkedProduct.Name == productVariationVm.Name);
                if (productLink == null)
                {
                    productLink = productLink = new ProductLink
                    {
                        LinkType = ProductLinkType.Super,
                        Product = product,
                        LinkedProduct = product.Clone()
                    };

                    productLink.LinkedProduct.Name = productVariationVm.Name;
                    productLink.LinkedProduct.SeoTitle = StringHelper.ToUrlFriendly(productVariationVm.Name);
                    productLink.LinkedProduct.Price = productVariationVm.Price;
                    productLink.LinkedProduct.NormalizedName = productVariationVm.NormalizedName;
                    productLink.LinkedProduct.HasOptions = false;
                    productLink.LinkedProduct.IsVisibleIndividually = false;

                    foreach (var combinationVm in productVariationVm.OptionCombinations)
                    {
                        productLink.LinkedProduct.AddOptionCombination(new ProductOptionCombination
                        {
                            OptionId = combinationVm.OptionId,
                            Value = combinationVm.Value
                        });
                    }

                    product.AddProductLinks(productLink);
                }
                else
                {
                    productLink.LinkedProduct.Price = productVariationVm.Price;
                    productLink.LinkedProduct.IsDeleted = false;
                }
            }

            foreach (var productLink in product.ProductLinks.Where(x => x.LinkType == ProductLinkType.Super))
            {
                if (model.Product.Variations.All(x => x.Name != productLink.LinkedProduct.Name))
                {
                    productLinkRepository.Remove(productLink);
                    productLink.LinkedProduct.IsDeleted = true;
                }
            }
        }

        private void AddOrDeleteProductAttribute(ProductForm model, Product product)
        {
            foreach (var productAttributeVm in model.Product.Attributes)
            {
                var productAttrValue =
                    product.AttributeValues.FirstOrDefault(x => x.AttributeId == productAttributeVm.Id);
                if (productAttrValue == null)
                {
                    productAttrValue = new ProductAttributeValue
                    {
                        AttributeId = productAttributeVm.Id,
                        Value = productAttributeVm.Value
                    };
                    product.AddAttributeValue(productAttrValue);
                }
                else
                {
                    productAttrValue.Value = productAttributeVm.Value;
                }
            }

            var deletedAttrValues =
               product.AttributeValues.Where(attrValue => model.Product.Attributes.All(x => x.Id != attrValue.AttributeId))
                   .ToList();

            foreach (var deletedAttrValue in deletedAttrValues)
            {
                deletedAttrValue.Product = null;
                product.AttributeValues.Remove(deletedAttrValue);
                productAttributeValueRepository.Remove(deletedAttrValue);
            }
        }

        private void SaveProductImages(ProductForm model, Product product)
        {
            if (model.ThumbnailImage != null)
            {
                var fileName = SaveFile(model.ThumbnailImage);
                if (product.ThumbnailImage != null)
                {
                    product.ThumbnailImage.FileName = fileName;
                }
                else
                {
                    product.ThumbnailImage = new Media { FileName = fileName };
                }
            }

            // Currently model binder cannot map the collection of file productImages[0], productImages[1]
            foreach (var file in Request.Form.Files)
            {
                if (file.ContentDisposition.Contains("productImages"))
                {
                    model.ProductImages.Add(file);
                }
            }

            foreach (var file in model.ProductImages)
            {
                var fileName = SaveFile(file);
                var productMedia = new ProductMedia
                {
                    Product = product,
                    Media = new Media { FileName = fileName }
                };
                product.AddMedia(productMedia);
            }
        }

        private string SaveFile(IFormFile file)
        {
            var originalFileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Trim('"');
            var fileName = $"{Guid.NewGuid()}{Path.GetExtension(originalFileName)}";
            mediaService.SaveMedia(file.OpenReadStream(), fileName, file.ContentType);
            return fileName;
        }
    }
}