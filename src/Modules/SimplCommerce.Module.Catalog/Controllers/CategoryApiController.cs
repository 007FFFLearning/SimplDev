﻿using System.Linq;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SimplCommerce.Infrastructure;
using SimplCommerce.Infrastructure.Data;
using SimplCommerce.Module.Catalog.Models;
using SimplCommerce.Module.Catalog.Services;
using SimplCommerce.Module.Catalog.ViewModels;

namespace SimplCommerce.Module.Catalog.Controllers
{
    [Authorize(Roles = "admin")]
    [Route("api/categories")]
    public class CategoryApiController : Controller
    {
        private readonly IRepository<Category> _categoryRepository;
        private readonly ICategoryService _categoryService;

        public CategoryApiController(IRepository<Category> categoryRepository, ICategoryService categoryService)
        {
            _categoryRepository = categoryRepository;
            _categoryService = categoryService;
        }

        public IActionResult Get()
        {
            var gridData = _categoryService.GetAll();
            return Json(gridData);
        }

        [HttpGet("{id}")]
        public IActionResult Get(long id)
        {
            var category = _categoryRepository.Query().FirstOrDefault(x => x.Id == id);
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
        public IActionResult Post([FromBody] CategoryForm model)
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

                _categoryService.Create(category);

                return Ok();
            }
            return new BadRequestObjectResult(ModelState);
        }

        [HttpPut("{id}")]
        public IActionResult Put(long id, [FromBody]CategoryForm model)
        {
            if (ModelState.IsValid)
            {
                var category = _categoryRepository.Query().FirstOrDefault(x => x.Id == id);
                category.Name = model.Name;
                category.SeoTitle = StringHelper.ToUrlFriendly(model.Name);
                category.ParentId = model.ParentId;
                category.IsPublished = model.IsPublished;

                _categoryService.Update(category);

                return Ok();
            }

            return new BadRequestObjectResult(ModelState);
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(long id)
        {
            var category = _categoryRepository.Query().Include(x => x.Child).FirstOrDefault(x => x.Id == id);
            if (category == null)
            {
                return new NotFoundResult();
            }

            if (category.Child.Any(x => !x.IsDeleted))
            {
                return BadRequest(new { Error = "Please make sure this category contains no children" });
            }

            _categoryService.Delete(category);

            return Ok();
        }
    }
}
