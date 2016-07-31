﻿using System;
using System.Collections.Generic;
using SimplCommerce.Infrastructure.Models;
using SimplCommerce.Module.Core.Models;

namespace SimplCommerce.Module.Orders.Models
{
    public class Order : Entity
    {
        public Order()
        {
            CreatedOn = DateTime.Now;
            OrderStatus = OrderStatus.Pending;
        }

        public DateTime CreatedOn { get; set; }

        public DateTime? UpdatedOn { get; set; }

        public long CreatedById { get; set; }

        public virtual User CreatedBy { get; set; }

        public decimal SubTotal { get; set; }

        public long ShippingAddressId { get; set; }

        public virtual UserAddress ShippingAddress { get; set; }

        public virtual UserAddress BillingAddress { get; set; }

        public virtual IList<OrderItem> OrderItems { get; set; } = new List<OrderItem>();

        public OrderStatus OrderStatus { get; set; }

        public void AddOrderItem(OrderItem item)
        {
            item.Order = this;
            OrderItems.Add(item);
        }
    }
}
