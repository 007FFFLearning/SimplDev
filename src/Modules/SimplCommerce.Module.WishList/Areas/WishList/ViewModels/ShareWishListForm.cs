﻿using System.ComponentModel.DataAnnotations;

namespace SimplCommerce.Module.WishList.ViewModels
{
    public class ShareWishListForm
    {
        [Required]
        [EmailAddress]
        public string EmailAddress { get; set; }
        
        [Required]
        public string Message { get; set; }
    }
}
