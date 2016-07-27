﻿using SimplCommerce.Core.Domain.Models;
using SimplCommerce.Infrastructure.Domain.IRepositories;

namespace SimplCommerce.Core.ApplicationServices
{
    public class ProductService : IProductService
    {
        private const string ProductEntityName = "Product";

        private IRepository<Product> productRepository;
        private IUrlSlugService urlSlugService;

        public ProductService(IRepository<Product> productRepository, IUrlSlugService urlSlugService)
        {
            this.productRepository = productRepository;
            this.urlSlugService = urlSlugService;
        }

        public void Create(Product product)
        {
            using (var transaction = productRepository.BeginTransaction())
            {
                productRepository.Add(product);
                productRepository.SaveChange();

                urlSlugService.Add(product.SeoTitle, product.Id, ProductEntityName);
                productRepository.SaveChange();

                transaction.Commit();
            }
        }

        public void Update(Product product)
        {
            var slug = urlSlugService.Get(product.Id, ProductEntityName);
            if (product.IsVisibleIndividually)
            {
                if (slug != null)
                {
                    urlSlugService.Update(product.SeoTitle, product.Id, ProductEntityName);
                }
                else
                {
                    urlSlugService.Add(product.SeoTitle, product.Id, ProductEntityName);
                }
            }
            else
            {
                if (slug != null)
                {
                    urlSlugService.Remove(product.Id, ProductEntityName);
                }
            }
            productRepository.SaveChange();
        }

        public void Delete(Product product)
        {
            product.IsDeleted = true;
            urlSlugService.Remove(product.Id, ProductEntityName);
            productRepository.SaveChange();
        }
    }
}