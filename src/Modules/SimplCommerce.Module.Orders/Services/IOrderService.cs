﻿using System.Threading.Tasks;
using SimplCommerce.Module.Core.Models;

namespace SimplCommerce.Module.Orders.Services
{
    public interface IOrderService
    {
        Task CreateOrder(User user, string shippingMethod, Address billingAddress, Address shippingAddress);

        Task<decimal> GetTax(long cartOwnerUserId, long countryId, long stateOrProvinceId);
    }
}
