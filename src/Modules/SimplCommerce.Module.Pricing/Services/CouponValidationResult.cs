﻿using System.Collections.Generic;

namespace SimplCommerce.Module.Pricing.Services
{
    public class CouponValidationResult
    {
        public bool Succeeded { get; set; }

        public decimal DiscountAmount { get; set; }

        public string CouponRuleName { get; set; }

        public string ErrorMessage { get; set; }

        public long CouponId { get; set; }
    }
}
