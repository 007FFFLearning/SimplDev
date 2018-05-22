﻿using System;
using SimplCommerce.Infrastructure.Models;

namespace SimplCommerce.Module.ActivityLog.Models
{
    public class Activity : EntityBase
    {
        public long ActivityTypeId { get; set; }

        public ActivityType ActivityType { get; set; }

        public long UserId { get; set; }

        public DateTimeOffset CreatedOn { get; set; }

        public long EntityId { get; set; }

        public string EntityTypeId { get; set; }
    }
}
