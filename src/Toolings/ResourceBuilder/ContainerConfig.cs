﻿using System.Configuration;
using System.Data.Entity;
using Autofac;
using Shopcuatoi.Core.ApplicationServices;
using Shopcuatoi.Core.Infrastructure.EntityFramework;
using Shopcuatoi.Infrastructure.Domain.IRepositories;

namespace ResourceBuilder
{
    public static class ContainerConfig
    {
        public static IContainer Configure()
        {
            var builder = new ContainerBuilder();

            GlobalConfiguration.ConnectionString =
                ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            builder.Register(f => new ResourceContext()).As<DbContext>().InstancePerLifetimeScope();

            builder.RegisterGeneric(typeof(Repository<>)).As(typeof(IRepository<>));

            builder.RegisterGeneric(typeof(RepositoryWithTypedId<,>)).As(typeof(IRepositoryWithTypedId<,>));

            builder.RegisterType<Application>().As<IApplication>();

            builder.RegisterType<SqlRepository>().As<ISqlRepository>();

            return builder.Build();
        }
    }
}
