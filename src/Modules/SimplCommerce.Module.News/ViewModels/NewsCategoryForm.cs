﻿using System.ComponentModel.DataAnnotations;

namespace SimplCommerce.Module.News.ViewModels
{
    public class NewsCategoryForm
    {
        public NewsCategoryForm()
        {
            IsPublished = true;
        }

        public long Id { get; set; }

        [Required]
        public string Name { get; set; }

        public bool IsPublished { get; set; }
    }
}
