﻿using System.Collections.Generic;
using Microsoft.AspNet.Http;

namespace HvCommerce.Web.Areas.Admin.ViewModels.Products
{
    public class ProductForm
    {
        public ProductViewModel Product { get; set; }

        public IFormFile ThumbnailImage { get; set; }

        public IList<IFormFile> ProductImages { get; set; } = new List<IFormFile>();

        public IList<IFormFile> File { get; set; } = new List<IFormFile>();
    }
}
