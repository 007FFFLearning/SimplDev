﻿using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace SimplCommerce.Module.Orders.ViewModels
{
    public class AddressFormVm
    {
        [Required]
        public string ContactName { get; set; }

        [Required]
        public string Phone { get; set; }

        [Required]
        public string AddressLine1 { get; set; }

        public long StateOrProvinceId { get; set; }

        public long DistrictId { get; set; }

        public IList<SelectListItem> StateOrProvinces { get; set; }

        public IList<SelectListItem> Districts { get; set; }
    }
}
