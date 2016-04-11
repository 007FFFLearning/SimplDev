﻿using System.Linq;
using Shopcuatoi.Core.ApplicationServices;
using Shopcuatoi.Core.Domain.Models;
using Shopcuatoi.Infrastructure;
using Shopcuatoi.Infrastructure.Domain.IRepositories;
using Shopcuatoi.Web.Areas.Admin.Helpers;
using Shopcuatoi.Web.Areas.Admin.ViewModels;
using Microsoft.AspNet.Authorization;
using Microsoft.AspNet.Mvc;

namespace Shopcuatoi.Web.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = "admin")]
    public class CategoryController : Controller
    {
        private readonly IRepository<Category> categoryRepository;
        private readonly ICategoryService categoryService;

        public CategoryController(IRepository<Category> categoryRepository, ICategoryService categoryService)
        {
            this.categoryRepository = categoryRepository;
            this.categoryService = categoryService;
        }

        public IActionResult List()
        {
            var categories = categoryRepository.Query().Where(x => !x.IsDeleted).ToList();
            var categoriesList = CategoryMapper.ToCategoryListItem(categories);
            var gridData = categoriesList;

            return Json(gridData);
        }

        public IActionResult Get(long id)
        {
            var category = categoryRepository.Get(id);
            var model = new CategoryForm
            {
                Id = category.Id,
                Name = category.Name,
                ParentId = category.ParentId,
                IsPublished = category.IsPublished
            };

            return Json(model);
        }

        [HttpPost]
        public IActionResult Create([FromBody] CategoryForm model)
        {
            if (ModelState.IsValid)
            {
                var category = new Category
                {
                    Name = model.Name,
                    SeoTitle = StringHelper.ToUrlFriendly(model.Name),
                    ParentId = model.ParentId,
                    IsPublished = model.IsPublished
                };

                categoryService.Create(category);

                return Ok();
            }
            return new BadRequestObjectResult(ModelState);
        }

        [HttpPost]
        public IActionResult Edit(long id, [FromBody]CategoryForm model)
        {
            if (ModelState.IsValid)
            {
                var category = categoryRepository.Get(id);
                category.Name = model.Name;
                category.SeoTitle = StringHelper.ToUrlFriendly(model.Name);
                category.ParentId = model.ParentId;
                category.IsPublished = model.IsPublished;

                categoryService.Update(category);

                return Ok();
            }

            return new BadRequestObjectResult(ModelState);
        }

        [HttpPost]
        public IActionResult Delete(long id)
        {
            var category = categoryRepository.Get(id);
            if (category == null)
            {
                return new HttpStatusCodeResult(400);
            }

            categoryService.Delete(category);

            return Json(true);
        }
    }
}