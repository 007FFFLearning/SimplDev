﻿using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SimplCommerce.Module.Core.Extensions;
using SimplCommerce.Module.Orders.Services;

namespace SimplCommerce.Module.PaymentCoD.Controllers
{
    [Authorize]
    public class CoDController : Controller
    {
        private readonly IOrderService _orderService;
        private readonly IWorkContext _workContext;

        public CoDController(
            IOrderService orderService,
            IWorkContext workContext)
        {
            _orderService = orderService;
            _workContext = workContext;
        }

        [HttpPost]
        public async Task<IActionResult> CoDCheckout()
        {
            var currentUser = await _workContext.GetCurrentUser();
            var orderCreateResult = await _orderService.CreateOrder(currentUser, "CashOnDelivery", 0);
            if(!orderCreateResult.Success)
            {
                TempData["Error"] = orderCreateResult.Error;
                return Redirect("~/checkout/payment");
            }

            return Redirect("~/checkout/congratulation");
        }
    }
}
