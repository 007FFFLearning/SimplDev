﻿using System;
using System.Globalization;
using System.Reflection;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Localization;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.EntityFrameworkCore;
using Autofac;
using Autofac.Extensions.DependencyInjection;
using Newtonsoft.Json.Serialization;
using SimplCommerce.Core.Infrastructure.EntityFramework;
using SimplCommerce.Core.ApplicationServices;
using SimplCommerce.Infrastructure.Domain.IRepositories;
using SimplCommerce.Core.Domain.Models;
using SimplCommerce.Web.Extensions;
using SimplCommerce.Web.RouteConfigs;

namespace SimplCommerce.Web
{
    public class Startup
    {
        private readonly IHostingEnvironment hostingEnvironment;

        public Startup(IHostingEnvironment env)
        {
            this.hostingEnvironment = env;

            var builder = new ConfigurationBuilder()
                .SetBasePath(env.ContentRootPath)
                .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true)
                .AddJsonFile($"appsettings.{env.EnvironmentName}.json", optional: true);

            if (env.IsDevelopment())
            {
                // For more details on using the user secret store see http://go.microsoft.com/fwlink/?LinkID=532709
                builder.AddUserSecrets();
            }

            builder.AddEnvironmentVariables();
            Configuration = builder.Build();
        }

        public IConfigurationRoot Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public IServiceProvider ConfigureServices(IServiceCollection services)
        {
            GlobalConfiguration.ConnectionString = Configuration["Data:DefaultConnection:ConnectionString"];
            GlobalConfiguration.ApplicationPath = hostingEnvironment.WebRootPath;

            services.AddDbContext<SimplDbContext>(options =>
                options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection"), b => b.MigrationsAssembly("SimplCommerce.Web")));

            //services.AddDbContext<SimplDbContext>(options => 
            //    options.UseNpgsql(Configuration.GetConnectionString("DefaultConnection"), b => b.MigrationsAssembly("SimplCommerce.Web")));

            services.AddIdentity<User, Role>(configure =>
            {
                configure.Cookies.ApplicationCookie.LoginPath = "/login";
            })
                .AddEntityFrameworkStores<SimplDbContext, long>()
                .AddDefaultTokenProviders();

            services.AddScoped<SignInManager<User>, SimplSignInManager<User>>();

            services.AddMvc()
                .AddViewLocalization(options => options.ResourcesPath = "Resources")
                .AddDataAnnotationsLocalization();

            services.AddScoped(f => Configuration);
            services.AddScoped<IWorkContext, WorkContext>();

            GlobalConfiguration.Modules.Add(new HvModule { Name = "Core", AssemblyName = "SimplCommerce.Core" });
            GlobalConfiguration.Modules.Add(new HvModule { Name = "Cms", AssemblyName = "SimplCommerce.Cms" });
            GlobalConfiguration.Modules.Add(new HvModule { Name = "Orders", AssemblyName = "SimplCommerce.Orders" });

            // TODO: break down to new method in new class
            var builder = new ContainerBuilder();
            builder.RegisterGeneric(typeof(Repository<>)).As(typeof(IRepository<>));
            builder.RegisterGeneric(typeof(RepositoryWithTypedId<,>)).As(typeof(IRepositoryWithTypedId<,>));
            foreach (var module in GlobalConfiguration.Modules)
            {
                builder.RegisterAssemblyTypes(Assembly.Load(new AssemblyName(module.AssemblyName))).AsImplementedInterfaces();
            }

            builder.RegisterInstance(Configuration);
            builder.RegisterInstance(hostingEnvironment);
            builder.RegisterMediaType(Configuration["Storage:StorageType"]);

            builder.Populate(services);

            var container = builder.Build();

            return container.Resolve<IServiceProvider>();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env, ILoggerFactory loggerFactory)
        {
            loggerFactory.AddConsole(Configuration.GetSection("Logging"));
            loggerFactory.AddDebug();

            // TODO using DeperloperExcetionPage on demo is jus temporary for easy troubleshooting
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseDatabaseErrorPage();
              //  app.UseBrowserLink();
            }
            else
            {
                app.UseDeveloperExceptionPage();
                app.UseDatabaseErrorPage();
            }

            var supportedCultures = new[]
            {
                new CultureInfo("en-US"),
                new CultureInfo("vi-VN")
            };
            app.UseRequestLocalization(new RequestLocalizationOptions
            {
                DefaultRequestCulture = new RequestCulture(culture: "vi-VN", uiCulture: "vi-VN"),
                SupportedCultures = supportedCultures,
                SupportedUICultures = supportedCultures
            });

            app.UseStaticFiles();

            app.UseIdentity()
                 .UseGoogleAuthentication(new GoogleOptions
                 {
                     ClientId = "583825788849-8g42lum4trd5g3319go0iqt6pn30gqlq.apps.googleusercontent.com",
                     ClientSecret = "X8xIiuNEUjEYfiEfiNrWOfI4"
                 })
                 .UseFacebookAuthentication(new FacebookOptions
                 {
                     AppId = "1716532045292977",
                     AppSecret = "dfece01ae919b7b8af23f962a1f87f95"
                 });

            app.UseMvc(routes =>
            {
                routes.Routes.Add(new GenericRule(routes.DefaultHandler));

                routes.MapRoute(
                    "areaRoute",
                    "{area:exists}/{controller=Home}/{action=Index}/{id?}");

                routes.MapRoute("default", "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
