﻿using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace HvCommerce.Core.Domain.Models
{
    public class Product : Content
    {
        [StringLength(1000)]
        public string ShortDescription { get; set; }

        [StringLength(5000)]
        public string Description { get; set; }

        [StringLength(5000)]
        public string Specification { get; set; }

        public decimal Price { get; set; }

        public decimal OldPrice { get; set; }

        public int DisplayOrder { get; set; }

        public Media ThumbnailImage { get; set; }

        public virtual IList<ProductMedia> Medias { get; protected set; } = new List<ProductMedia>();

        public virtual IList<ProductVariation> Variations { get; protected set; } = new List<ProductVariation>();

        public virtual IList<ProductAttributeValue> AttributeValues { get; protected set; } = new List<ProductAttributeValue>();

        public virtual IList<ProductCategory> Categories { get; protected set; } = new List<ProductCategory>();

        public void AddCategory(ProductCategory category)
        {
            category.Product = this;
            Categories.Add(category);
        }

        public void AddMedia(ProductMedia media)
        {
            media.Product = this;
            Medias.Add(media);
        }

        public void AddAttributeValue(ProductAttributeValue attributeValue)
        {
            attributeValue.Product = this;
            AttributeValues.Add(attributeValue);
        }

        public void AddProductVariation(ProductVariation variation)
        {
            variation.Product = this;
            Variations.Add(variation);
        }
    }
}