﻿/*global angular, confirm*/
(function () {
    angular
        .module('shopAdmin.category')
        .controller('CategoryListCtrl', CategoryLitsCtrl);

    /* @ngInject */
    function CategoryLitsCtrl(categoryService) {
        var vm = this;
        vm.categories = [];

        vm.getCategories = function getCategories() {
            categoryService.getCategories().then(function (result) {
                vm.categories = result.data;
            });
        };

        vm.deleteCategory = function deleteCategory(category) {
            if (confirm("Are you sure?")) {
                categoryService.deleteCategory(category).then(function (result) {
                    vm.getCategories();
                });
            }
        };

        vm.getCategories();
    }
})();