﻿using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.ViewComponents;
using Moq;
using SimplCommerce.Infrastructure.Data;
using SimplCommerce.Module.Core.Components;
using SimplCommerce.Module.Core.Extensions;
using SimplCommerce.Module.Core.Models;
using SimplCommerce.Module.Core.ViewModels.Manage;
using Xunit;

namespace SimplCommerce.Module.Core.Tests.Components
{
    public class DefaultShippingAddressViewComponentTests
    {
        [Fact]
        public async Task DefaultAddressViewComponent_Should_Returns_DefaultAddress()
        {
            var shippingAddress = MakeShippingAddress();
            var component = MakeMockedDefaultAddressViewComponent(shippingAddress, MakeUserWithShippingAddress());

            var result = await component.InvokeAsync() as ViewViewComponentResult;
            var returnedModel = (result?.ViewData.Model as DefaultAddressViewComponentVm);

            Assert.Equal(shippingAddress.Address.AddressLine1, returnedModel?.Address.AddressLine1);
        }

        [Fact]
        public async Task DefaultAddressViewComponetn_ShouldReturns_CorrectModelType()
        {
            var component = MakeMockedDefaultAddressViewComponent(MakeShippingAddress(), MakeUserWithShippingAddress());

            var view = await component.InvokeAsync() as ViewViewComponentResult;

            Assert.IsType<DefaultAddressViewComponentVm>(view?.ViewData.Model);
        }

        [Fact]
        public async Task DefaultAddressViewComponetn_ShouldReturns_CorrectViewType()
        {
            var component = MakeMockedDefaultAddressViewComponent(MakeShippingAddress(), MakeUserWithShippingAddress());

            var view = await component.InvokeAsync() as ViewViewComponentResult;

            Assert.IsType<ViewViewComponentResult>(view);
        }

        [Fact]
        public async Task DefaultAddressViewComponetn_ShouldReturns_NotNullView()
        {
            var component = MakeMockedDefaultAddressViewComponent(MakeShippingAddress(), MakeUserWithShippingAddress());

            var view = await component.InvokeAsync() as ViewViewComponentResult;

            Assert.NotNull(view);
        }

        [Fact]
        public async Task DefaultAddressViewComponetn_ShouldReturns_CorrectViewName()
        {
            var component = MakeMockedDefaultAddressViewComponent(MakeShippingAddress(), MakeUserWithShippingAddress());

            var view = await component.InvokeAsync() as ViewViewComponentResult;

            Assert.Equal("/Modules/SimplCommerce.Module.Core/Views/Components/DefaultShippingAddress.cshtml", view?.ViewName);
        }

        private DefaultShippingAddressViewComponent MakeMockedDefaultAddressViewComponent(UserAddress address, User user)
        {
            var mockRepository = new Mock<IRepository<UserAddress>>();
            var mockWorkContext = new Mock<IWorkContext>();

            mockRepository.Setup(x => x.Query()).Returns(new List<UserAddress> { address }.AsQueryable());
            mockWorkContext.Setup(x => x.GetCurrentUser()).Returns(Task.FromResult(user));
            var component = new DefaultShippingAddressViewComponent(mockRepository.Object, mockWorkContext.Object);

            return component;
        }

        private User MakeUserWithShippingAddress()
        {
            return new User { Id = 1, FullName = "Maher", DefaultShippingAddressId = 0 };
        }

        private UserAddress MakeShippingAddress()
        {
            var country = new Country { Name = "France" };
            var stateOrProvince = new StateOrProvince { Name = "IDF", Country = country, Type = "State" };
            var district = new District { Location = "Center", StateOrProvince = stateOrProvince, Name = "Paris" };

            var address = new Address
            {
                CountryId = 1,
                AddressLine1 = "115 Rue Marcel",
                Country = country,
                StateOrProvince = stateOrProvince,
                District = district
            };

            var userAddress = new UserAddress { UserId = 1, Address = address, AddressType = AddressType.Shipping };

            return userAddress;
        }
    }
}
