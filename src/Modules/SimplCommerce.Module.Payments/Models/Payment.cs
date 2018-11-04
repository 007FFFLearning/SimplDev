﻿using System;
using SimplCommerce.Infrastructure.Models;
using SimplCommerce.Module.Orders.Models;

namespace SimplCommerce.Module.Payments.Models
{
    public class Payment : EntityBase
    {
        public Payment()
        {
            CreatedOn = DateTimeOffset.Now;
            LatestUpdatedOn = DateTimeOffset.Now;
        }

        public long OrderId { get; set; }

        public Order Order { get; set; }

        public DateTimeOffset CreatedOn { get; set; }

        public DateTimeOffset LatestUpdatedOn { get; set; }

        public decimal Amount { get; set; }

        public decimal PaymentFee { get; set; }

        public string PaymentMethod { get; set; }

        public string GatewayTransactionId { get; set; }

        public PaymentStatus Status { get; set; }

        public string FailureMessage { get; set; }
    }
}
