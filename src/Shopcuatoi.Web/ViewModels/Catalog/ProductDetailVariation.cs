﻿using System.Collections.Generic;

namespace Shopcuatoi.Web.ViewModels.Catalog
{
    public class ProductDetailVariation
    {
        public long Id { get; set; }

        public decimal? PriceOffset { get; set; }

        public IList<ProductDetailVariationOption> Options { get; protected set; } = new List<ProductDetailVariationOption>();
    }
}
