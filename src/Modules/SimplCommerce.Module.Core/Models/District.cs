﻿using SimplCommerce.Infrastructure.Models;

namespace SimplCommerce.Module.Core.Models
{
    public class District : EntityBase
    {
        public District() { }

        public District(long id)
        {
            Id = id;
        }

        public long StateOrProvinceId { get; set; }

        public virtual StateOrProvince StateOrProvince { get; set; }

        public string Name { get; set; }

        public string Type { get; set; }

        public string Location { get; set; }
    }
}
