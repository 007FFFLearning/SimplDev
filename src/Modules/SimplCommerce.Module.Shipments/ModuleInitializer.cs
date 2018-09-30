﻿using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Hosting;
using MediatR;
using SimplCommerce.Infrastructure.Modules;
using SimplCommerce.Module.Orders.Events;
using SimplCommerce.Module.Shipments.Events;
using SimplCommerce.Module.Shipments.Services;

namespace SimplCommerce.Module.Shipments
{
    public class ModuleInitializer : IModuleInitializer
    {
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddTransient<INotificationHandler<OrderDetailGot>, OrderDetailGotHandler>();
            services.AddTransient<IShipmentService, ShipmentService>();
        }

        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {

        }
    }
}
