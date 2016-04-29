﻿using System.Collections.Generic;
using Microsoft.AspNet.Mvc.Rendering;

namespace Shopcuatoi.Web.ViewModels.Checkout
{
    public class AddressFormViewModel
    {
        public string ContactName { get; set; }

        public string AddressLine1 { get; set; }

        public long StateOrProvinceId { get; set; }

        public IList<SelectListItem> StateOrProvinces{ get; set; }
    }
}