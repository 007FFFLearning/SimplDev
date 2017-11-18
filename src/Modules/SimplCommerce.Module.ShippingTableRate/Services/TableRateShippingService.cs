﻿using System.Linq;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;
using SimplCommerce.Module.Shipping.Models;
using SimplCommerce.Module.Shipping.Services;
using SimplCommerce.Module.ShippingTableRate.Models;
using SimplCommerce.Infrastructure.Data;

namespace SimplCommerce.Module.ShippingTableRate.Services
{
    public class TableRateShippingService : IShippingPriceService
    {
        public readonly IRepository<PriceAndDestination> _priceAndDestinationRepository;

        public TableRateShippingService(IRepository<PriceAndDestination> priceAndDestinationRepository)
        {
            _priceAndDestinationRepository = priceAndDestinationRepository;
        }

        public async Task<GetShippingPriceResponse> GetShippingPrices(GetShippingPriceRequest request, ShippingProvider provider)
        {
            var response = new GetShippingPriceResponse { IsSuccess = true };
            var priceAndDestinations = await _priceAndDestinationRepository.Query().ToListAsync();

            var cheapestApplicable = priceAndDestinations.Where(x => (x.CountryId == 0 || x.CountryId == request.ShippingAddress.CountryId)
                && (x.StateOrProvinceId == 0 || x.StateOrProvinceId == request.ShippingAddress.StateOrProvinceId)
                && request.OrderAmount >= x.MinOrderSubtotal).OrderBy(x => x.ShippingPrice).FirstOrDefault();

            if(cheapestApplicable != null)
            {
                response.ApplicablePrices.Add(new ShippingPrice
                {
                    Name = "Best Way",
                    Price = cheapestApplicable.ShippingPrice
                });
            }

            return response;
        }
    }
}
