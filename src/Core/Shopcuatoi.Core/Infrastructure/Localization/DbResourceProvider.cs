﻿using System.Collections.Generic;
using System.Linq;
using Microsoft.Practices.ServiceLocation;
using Shopcuatoi.Core.Domain.Models;
using Shopcuatoi.Infrastructure.Domain.IRepositories;

namespace Shopcuatoi.Core.Infrastructure.Localization
{
    public class DbResourceProvider : ResourceProviderBase
    {
        private readonly IRepository<StringResource> resourceRepository;

        public DbResourceProvider()
        {
            resourceRepository = ServiceLocator.Current.GetInstance<IRepository<StringResource>>();
        }

        public DbResourceProvider(IRepository<StringResource> resourceRepository)
        {
            this.resourceRepository = resourceRepository;
        }

        public override IList<StringResource> ReadResources()
        {
            return resourceRepository.Query().ToList();
        }

        protected override StringResource ReadResource(string name, string culture)
        {
            return resourceRepository.Query()
                .FirstOrDefault(r => r.Key == name && r.Culture == culture);
        }
    }
}