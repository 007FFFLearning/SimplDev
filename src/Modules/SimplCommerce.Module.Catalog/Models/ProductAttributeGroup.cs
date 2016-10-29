﻿using System.Collections.Generic;
using SimplCommerce.Infrastructure.Models;

namespace SimplCommerce.Module.Catalog.Models
{
    public class ProductAttributeGroup : EntityBase
    {
        public string Name { get; set; }

        public virtual IList<ProductAttribute> Attributes { get; set; } = new List<ProductAttribute>();
    }
}
