﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Reflection;
using AspNet.Identity.EntityFramework6;
using HvCommerce.Core.ApplicationServices;
using HvCommerce.Core.Domain.Models;
using HvCommerce.Core.Infrastructure.EntityFramework.CustomConventions;
using HvCommerce.Infrastructure;
using HvCommerce.Infrastructure.Domain.Models;

namespace HvCommerce.Core.Infrastructure.EntityFramework
{
    public class HvDbContext : IdentityDbContext<User, Role,
        long, UserLogin, UserRole, UserClaim, RoleClaim>
    {
        public HvDbContext() : base(HvConnectionString.Value)
        {
        }

        public HvDbContext(string connectionString) : base(connectionString)
        {
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            Database.SetInitializer(new MigrateDatabaseToLatestVersion<HvDbContext, AutomaticMigrationsConfiguration>());

            RegisterConventions(modelBuilder);

            var typeToRegisters = TypeLoader.FromAssemblies(Assembly.Load("HvCommerce.Core"));

            RegisterCustomMapping(modelBuilder, typeToRegisters);

            RegisterEntities(modelBuilder, typeToRegisters);

            base.OnModelCreating(modelBuilder);
        }

        private void RegisterConventions(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Add(new TableNameConvention());
            modelBuilder.Conventions.Add(new ForeignKeyNamingConvention());
        }

        private void RegisterEntities(DbModelBuilder modelBuilder, IEnumerable<Type> typeToRegisters)
        {
            var entityMethod = typeof (DbModelBuilder).GetMethod("Entity");

            var entityTypes = typeToRegisters.Where(x => x.IsSubclassOf(typeof (Entity)) && !x.IsAbstract);
            foreach (var type in entityTypes)
            {
                entityMethod.MakeGenericMethod(type).Invoke(modelBuilder, new object[] { });
            }
        }

        private void RegisterCustomMapping(DbModelBuilder modelBuilder, IEnumerable<Type> typeToRegisters)
        {
            var typesToRegister = typeToRegisters
                .Where(type => !string.IsNullOrEmpty(type.Namespace))
                .Where(
                    type =>
                        type.BaseType != null && type.BaseType.IsGenericType &&
                        type.BaseType.GetGenericTypeDefinition() == typeof (EntityTypeConfiguration<>));
            foreach (var type in typesToRegister)
            {
                dynamic configurationInstance = Activator.CreateInstance(type);
                modelBuilder.Configurations.Add(configurationInstance);
            }
        }
    }
}