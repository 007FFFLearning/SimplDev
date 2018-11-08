﻿using System;
using System.Collections.Generic;
using SimplCommerce.Infrastructure.Models;
using SimplCommerce.Module.Core.Models;

namespace SimplCommerce.Module.ShoppingCart.Models
{
    public class Cart : EntityBase
    {
        public Cart()
        {
            CreatedOn = DateTimeOffset.Now;
            LatestUpdatedOn = DateTimeOffset.Now;
            IsActive = true;
        }

        public long CustomerId { get; set; }

        public User Customer { get; set; }

        public long CreatedById { get; set; }

        public User CreatedBy { get; set; }

        public DateTimeOffset CreatedOn { get; set; }

        public DateTimeOffset LatestUpdatedOn { get; set; }

        public bool IsActive { get; set; }

        public string CouponCode { get; set; }

        public string CouponRuleName { get; set; }

        public string ShippingMethod { get; set; }

        public bool IsProductPriceIncludeTax { get; set; }

        public decimal? ShippingAmount { get; set; }

        public decimal? TaxAmount { get; set; }

        public IList<CartItem> Items { get; set; } = new List<CartItem>();

        /// <summary>
        /// Json serialized of shipping form
        /// </summary>
        public string ShippingData { get; set; }

        public string OrderNote { get; set; }
    }
}
