﻿using HvCommerce.Infrastructure.Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HvCommerce.Core.Domain.Models
{
    public class Product : Entity
    {
        public string Name { get; set; }

        public string Description { get; set; }
    }
}
