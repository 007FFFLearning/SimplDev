﻿using System.ComponentModel.DataAnnotations;

namespace SimplCommerce.Module.Catalog.Areas.Catalog.ViewModels
{
    public class ProductOptionFormVm
    {
        public long Id { get; set; }

        [Required]
        public string Name { get; set; }
    }
}
