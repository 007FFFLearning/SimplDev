﻿using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace SimplCommerce.Module.Catalog.ViewModels
{
    public class ProductsByCategory
    {
        public long CategoryId { get; set; }

        public long? ParentCategorId { get; set; }

        public string CategoryName { get; set; }

        public string CategorySeoTitle { get; set; }

        public int TotalProduct { get; set; }

        public IList<ProductThumbnail> Products { get; set; } = new List<ProductThumbnail>();

        public FilterOption FilterOption { get; set; }

        public SearchOption CurrentSearchOption { get; set; }

        public IList<SelectListItem> AvailableSortOptions => new List<SelectListItem>
        {
            new SelectListItem { Text = "Price: Low to High", Value = "price-asc" },
            new SelectListItem { Text = "Price: High to Low", Value = "price-desc" }
        };
    }
}
