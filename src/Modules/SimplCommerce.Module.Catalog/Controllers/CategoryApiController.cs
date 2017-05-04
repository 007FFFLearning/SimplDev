﻿using System;
using System.IO;
using System.Linq;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Net.Http.Headers;
using SimplCommerce.Infrastructure;
using SimplCommerce.Infrastructure.Data;
using SimplCommerce.Module.Catalog.Models;
using SimplCommerce.Module.Catalog.Services;
using SimplCommerce.Module.Catalog.ViewModels;
using SimplCommerce.Module.Core.Services;
using SimplCommerce.Module.Core.Models;
using SimplCommerce.Infrastructure.Web.SmartTable;

namespace SimplCommerce.Module.Catalog.Controllers
{
    [Authorize(Roles = "admin, vendor")]
    [Route("api/categories")]
    public class CategoryApiController : Controller
    {
        private readonly IRepository<Category> _categoryRepository;
        private readonly IRepository<ProductCategory> _productCategoryRepository;
        private readonly ICategoryService _categoryService;
        private readonly IMediaService _mediaService;

        public CategoryApiController(IRepository<Category> categoryRepository, IRepository<ProductCategory> productCategoryRepository, ICategoryService categoryService, IMediaService mediaService)
        {
            _categoryRepository = categoryRepository;
            _productCategoryRepository = productCategoryRepository;
            _categoryService = categoryService;
            _mediaService = mediaService;
        }

        public IActionResult Get()
        {
            var gridData = _categoryService.GetAll();
            return Json(gridData);
        }

        [HttpGet("{id}")]
        public IActionResult Get(long id)
        {
            var category = _categoryRepository.Query().Include(x => x.ThumbnailImage).FirstOrDefault(x => x.Id == id);
            var model = new CategoryForm
            {
                Id = category.Id,
                Name = category.Name,
                DisplayOrder = category.DisplayOrder,
                Description = category.Description,
                ParentId = category.ParentId,
                IncludeInMenu = category.IncludeInMenu,
                IsPublished = category.IsPublished,
                ThumbnailImageUrl = _mediaService.GetThumbnailUrl(category.ThumbnailImage),
            };

            return Json(model);
        }

        [HttpPost]
        [Authorize(Roles = "admin")]
        public IActionResult Post(CategoryForm model)
        {
            if (ModelState.IsValid)
            {
                var category = new Category
                {
                    Name = model.Name,
                    SeoTitle = model.Name.ToUrlFriendly(),
                    DisplayOrder = model.DisplayOrder,
                    Description = model.Description,
                    ParentId = model.ParentId,
                    IncludeInMenu = model.IncludeInMenu,
                    IsPublished = model.IsPublished
                };

                SaveCategoryImage(category, model);

                _categoryService.Create(category);

                return Ok();
            }
            return new BadRequestObjectResult(ModelState);
        }

        [HttpPut("{id}")]
        [Authorize(Roles = "admin")]
        public IActionResult Put(long id, CategoryForm model)
        {
            if (ModelState.IsValid)
            {
                var category = _categoryRepository.Query().FirstOrDefault(x => x.Id == id);
                category.Name = model.Name;
                category.SeoTitle = model.Name.ToUrlFriendly();
                category.Description = model.Description;
                category.DisplayOrder = model.DisplayOrder;
                category.ParentId = model.ParentId;
                category.IncludeInMenu = model.IncludeInMenu;
                category.IsPublished = model.IsPublished;

                SaveCategoryImage(category, model);

                _categoryService.Update(category);

                return Ok();
            }

            return new BadRequestObjectResult(ModelState);
        }

        [HttpDelete("{id}")]
        [Authorize(Roles = "admin")]
        public IActionResult Delete(long id)
        {
            var category = _categoryRepository.Query().Include(x => x.Children).FirstOrDefault(x => x.Id == id);
            if (category == null)
            {
                return new NotFoundResult();
            }

            if (category.Children.Any(x => !x.IsDeleted))
            {
                return BadRequest(new { Error = "Please make sure this category contains no children" });
            }

            _categoryService.Delete(category);

            return Ok();
        }

        [HttpPost("{id}/products")]
        public IActionResult GetProducts(long id, [FromBody] SmartTableParam param)
        {
            var query = _productCategoryRepository.Query().Include(x => x.Product)
                .Where(x => x.CategoryId == id && !x.Product.IsDeleted && x.Product.IsVisibleIndividually);

            if (param.Search.PredicateObject != null)
            {
                dynamic search = param.Search.PredicateObject;
                if (search.Name != null)
                {
                    string name = search.Name;
                    query = query.Where(x => x.Product.Name.Contains(name));
                }

                if (search.IsPublished != null)
                {
                    bool isPublished = search.IsPublished;
                    query = query.Where(x => x.Product.IsPublished == isPublished);
                }
            }

            var gridData = query.ToSmartTableResult(
                param,
                x => new
                {
                    Id = x.Id,
                    ProductName = x.Product.Name,
                    IsFeaturedProduct = x.IsFeaturedProduct,
                    DisplayOrder = x.DisplayOrder,
                    IsProductPublished = x.Product.IsPublished
                });

            return Json(gridData);
        }

        [HttpPut("update-product/{id}")]
        public IActionResult UpdateProduct(long id, [FromBody] ProductCategoryForm model)
        {
            var productCategory = _productCategoryRepository.Query().FirstOrDefault(x => x.Id == id);
            productCategory.IsFeaturedProduct = model.IsFeaturedProduct;
            productCategory.DisplayOrder = model.DisplayOrder;

            _productCategoryRepository.SaveChange();
            return Ok();
        }

        private void SaveCategoryImage(Category category, CategoryForm model)
        {
            if (model.ThumbnailImage != null)
            {
                var fileName = SaveFile(model.ThumbnailImage);
                if (category.ThumbnailImage != null)
                {
                    category.ThumbnailImage.FileName = fileName;
                }
                else
                {
                    category.ThumbnailImage = new Media { FileName = fileName };
                }
            }
        }

        private string SaveFile(IFormFile file)
        {
            var originalFileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Trim('"');
            var fileName = $"{Guid.NewGuid()}{Path.GetExtension(originalFileName)}";
            _mediaService.SaveMedia(file.OpenReadStream(), fileName, file.ContentType);
            return fileName;
        }
    }
}
