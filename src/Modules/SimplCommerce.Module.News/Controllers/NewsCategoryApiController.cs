﻿using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SimplCommerce.Infrastructure.Data;
using SimplCommerce.Module.News.Models;
using SimplCommerce.Module.News.Services;
using SimplCommerce.Module.News.ViewModels;

namespace SimplCommerce.Module.News.Controllers
{
    [Authorize(Roles = "admin")]
    [Route("api/news-categories")]
    public class NewsCategoryApiController : Controller
    {
        private readonly IRepository<NewsCategory> _categoryRepository;
        private readonly INewsCategoryService _categoryService;

        public NewsCategoryApiController(IRepository<NewsCategory> categoryRepository, INewsCategoryService categoryService)
        {
            _categoryRepository = categoryRepository;
            _categoryService = categoryService;
        }

        public IActionResult Get()
        {
            var categoryList = _categoryRepository.Query().Where(x => !x.IsDeleted).ToList();

            return Json(categoryList);
        }

        [HttpGet("{id}")]
        public IActionResult Get(long id)
        {
            var category = _categoryRepository.Query().FirstOrDefault(x => x.Id == id);
            var model = new NewsCategoryForm
            {
                Id = category.Id,
                Name = category.Name,
                Slug = category.SeoTitle,
                IsPublished = category.IsPublished
            };

            return Json(model);
        }

        [HttpPost]
        [Authorize(Roles = "admin")]
        public IActionResult Post([FromBody] NewsCategoryForm model)
        {
            if (ModelState.IsValid)
            {
                var category = new NewsCategory
                {
                    Name = model.Name,
                    SeoTitle = model.Slug,
                    IsPublished = model.IsPublished
                };

                _categoryService.Create(category);

                return Ok();
            }
            return new BadRequestObjectResult(ModelState);
        }

        [HttpPut("{id}")]
        [Authorize(Roles = "admin")]
        public IActionResult Put(long id, [FromBody] NewsCategoryForm model)
        {
            if (ModelState.IsValid)
            {
                var category = _categoryRepository.Query().FirstOrDefault(x => x.Id == id);
                category.Name = model.Name;
                category.SeoTitle = model.Slug;
                category.IsPublished = model.IsPublished;

                _categoryService.Update(category);
                return Ok();
            }

            return new BadRequestObjectResult(ModelState);
        }

        [HttpDelete("{id}")]
        [Authorize(Roles = "admin")]
        public async Task<IActionResult> Delete(long id)
        {
            var category = _categoryRepository.Query().FirstOrDefault(x => x.Id == id);
            if (category == null)
            {
                return new NotFoundResult();
            }

            await _categoryService.Delete(category);
            return Json(true);
        }
    }
}
