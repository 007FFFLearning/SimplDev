﻿using System;
using SimplCommerce.Infrastructure.Models;
using SimplCommerce.Module.Core.Models;

namespace SimplCommerce.Module.Reviews.Models
{
    public class Review : Entity
    {
        public long UserId { get; set; }

        public User User { get; set; }

        public string Title { get; set; }

        public string Detail { get; set; }

        public int Rating { get; set; }

        public ReviewStatus Status { get; set; }

        public DateTimeOffset CreatedOn { get; set; }

        public long EntityTypeId { get; set; }

        public long EntityId { get; set; }
    }
}
