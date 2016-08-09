﻿using System;
using System.Linq;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SimplCommerce.Infrastructure.Data;
using SimplCommerce.Infrastructure.Web.SmartTable;
using SimplCommerce.Module.Core.Services;
using SimplCommerce.Module.Orders.Models;
using SimplCommerce.Module.Orders.ViewModels;

namespace SimplCommerce.Module.Orders.Controllers
{
    [Authorize(Roles = "admin")]
    [Route("api/orders")]
    public class OrderApiController : Controller
    {
        private readonly IRepository<Order> _orderRepository;
        private readonly IMediaService _mediaService;

        public OrderApiController(IRepository<Order> orderRepository, IMediaService mediaService)
        {
            _orderRepository = orderRepository;
            _mediaService = mediaService;
        }

        [HttpPost("grid")]
        public ActionResult List([FromBody] SmartTableParam param)
        {
            var query = _orderRepository
                .Query()
                .Include(x => x.CreatedBy);

            var orders = query.ToSmartTableResult(
                param,
                order => new
                {
                    Id = order.Id,
                    CustomerName = order.CreatedBy.FullName,
                    SubTotal = order.SubTotal,
                    OrderStatus = order.OrderStatus.ToString(),
                    CreatedOn = order.CreatedOn
                });

            return Json(orders);
        }

        [HttpGet("{id}")]
        public IActionResult Get(long id)
        {
            var order = _orderRepository
                .Query()
                .Include(x => x.ShippingAddress).ThenInclude(x => x.Address).ThenInclude(x => x.District).ThenInclude(x => x.StateOrProvince)
                .Include(x => x.OrderItems).ThenInclude(x => x.Product).ThenInclude(x => x.ThumbnailImage)
                .Include(x => x.OrderItems).ThenInclude(x => x.Product).ThenInclude(x => x.OptionCombinations).ThenInclude(x => x.Option)
                .Include(x => x.CreatedBy)
                .FirstOrDefault(x => x.Id == id);

            if (order == null)
            {
                return new NotFoundResult();
            }

            var model = new OrderDetailVm
            {
                Id = order.Id,
                CreatedOn = order.CreatedOn,
                OrderStatus = order.OrderStatus.ToString(),
                CustomerName = order.CreatedBy.FullName,
                SubTotal = order.SubTotal,
                ShippingAddress = new ShippingAddressVm
                {
                    AddressLine1 = order.ShippingAddress.Address.AddressLine1,
                    AddressLine2 = order.ShippingAddress.Address.AddressLine2,
                    ContactName = order.ShippingAddress.Address.ContactName,
                    DistrictName = order.ShippingAddress.Address.District.Name,
                    StateOrProvinceName = order.ShippingAddress.Address.StateOrProvince.Name,
                    Phone = order.ShippingAddress.Address.Phone
                },

                OrderItems = order.OrderItems.Select(x => new OrderItemVm
                {
                    Id = x.Id,
                    ProductName = x.Product.Name,
                    ProductPrice = x.ProductPrice,
                    ProductImage = _mediaService.GetThumbnailUrl(x.Product.ThumbnailImage),
                    Quantity = x.Quantity,
                    VariationOptions = OrderItemVm.GetVariationOption(x.Product)
                }).ToList()
            };

            return Json(model);
        }

        [HttpPost("change-status/{id}")]
        public IActionResult ChangeStatus(long id, [FromBody] string status)
        {
            var order = _orderRepository.Query().FirstOrDefault(x => x.Id == id);
            if (order == null)
            {
                return NotFound();
            }

            order.OrderStatus = (OrderStatus)Enum.Parse(typeof(OrderStatus), status, true);
            _orderRepository.SaveChange();

            return Ok();
        }
    }
}
