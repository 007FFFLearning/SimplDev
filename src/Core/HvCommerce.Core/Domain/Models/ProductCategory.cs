﻿using HvCommerce.Infrastructure.Domain.Models;

namespace HvCommerce.Core.Domain.Models
{
    public class ProductCategory : Entity
    {
        public bool IsFeaturedProduct { get; set; }

        public int DisplayOrder { get; set; }

        public virtual Category Category { get; set; }

        public virtual Product Product { get; set; }
    }
}
