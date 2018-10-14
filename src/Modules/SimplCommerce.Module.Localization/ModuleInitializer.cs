﻿using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Hosting;
using MediatR;
using SimplCommerce.Infrastructure.Modules;
using SimplCommerce.Module.Core.Events;
using SimplCommerce.Module.Localization.Events;

namespace SimplCommerce.Module.Localization
{
    public class ModuleInitializer : IModuleInitializer
    {
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddTransient<INotificationHandler<UserSignedIn>, UserSignedInHandler>();
        }

        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {

        }
    }
}
