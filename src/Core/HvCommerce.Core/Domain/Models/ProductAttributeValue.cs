﻿using HvCommerce.Infrastructure.Domain.Models;

namespace HvCommerce.Core.Domain.Models
{
    public class ProductAttributeValue : Entity
    {
        public long AttributeId { get; set; }

        public virtual ProductAttribute Attribute { get; set; }

        public long ProductId { get; set; }

        public Product Product { get; set; }

        public string Value { get; set; }
    }
}