﻿using System.Data.Entity;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Mvc;
using Shopcuatoi.Core.ApplicationServices;
using Shopcuatoi.Core.Domain.Models;
using Shopcuatoi.Infrastructure.Domain.IRepositories;
using Shopcuatoi.Orders.ApplicationServices;
using Shopcuatoi.Orders.Domain.Models;
using Shopcuatoi.Web.ViewModels.Cart;

namespace Shopcuatoi.Web.Controllers
{
    public class CartController : BaseController
    {
        private readonly IRepository<CartItem> cartItemRepository;
        private readonly ICartService cartService;
        private readonly IMediaService mediaService;

        public CartController(UserManager<User> userManager, IRepository<CartItem> cartItemRepository,
            ICartService cartService, IMediaService mediaService)
            : base(userManager)
        {
            this.cartItemRepository = cartItemRepository;
            this.cartService = cartService;
            this.mediaService = mediaService;
        }

        [HttpPost]
        public IActionResult AddToCart([FromBody] AddToCartModel model)
        {
            CartItem cartItem;
            if (HttpContext.User.IsSignedIn())
            {
                cartItem = cartService.AddToCart(CurrentUserId, null, model.ProductId, model.VariationName, model.Quantity);
            }
            else
            {
                cartItem = cartService.AddToCart(null, GetGuestId(), model.ProductId, model.VariationName, model.Quantity);
            }
            return RedirectToAction("AddToCartResult", new {cartItemId = cartItem.Id});
        }

        [HttpGet]
        public ActionResult AddToCartResult(long cartItemId)
        {
            var cartItem =
                cartItemRepository.Query()
                    .Include(x => x.Product)
                    .Include(x => x.ProductVariation)
                    .First(x => x.Id == cartItemId);

            var model = new AddToCartResult
            {
                ProductName = cartItem.Product.Name,
                ProductImage = mediaService.GetThumbnailUrl(cartItem.Product.ThumbnailImage),
                ProductPrice = cartItem.ProductPrice,
                Quantity = cartItem.Quantity
            };

            if (cartItem.ProductVariation!= null)
            {
                model.VariationName = cartItem.ProductVariation.Name;
            }

            var cartItems = HttpContext.User.IsSignedIn()
                ? cartService.GetCartItems(CurrentUserId, null)
                : cartService.GetCartItems(null, GetGuestId());

            model.CartItemCount = cartItems.Count;
            model.CartAmount = cartItems.Sum(x => x.Quantity*x.ProductPrice);

            return PartialView(model);
        }
    }
}