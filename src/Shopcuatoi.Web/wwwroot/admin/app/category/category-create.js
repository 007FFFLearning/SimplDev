﻿(function() {
    angular
        .module('shopAdmin.category')
        .controller('categoryCreateCtrl', [
            '$state', 'categoryService',
            function($state, categoryService) {
                var vm = this;
                this.category = {};
                this.categories = [];

                this.save = function save() {
                    categoryService.createCategory(vm.category).then(function (result) {
                        $state.go('category');
                    });
                };

                this.getCategories = function getCategories() {
                    categoryService.getCategories().then(function(result) {
                        vm.categories = result.data;
                    });
                };

                this.getCategories();
            }
        ]);
})();