﻿/*global angular*/
(function () {
    angular
        .module('shopAdmin.category')
        .controller('CategoryEditCtrl', CategoryEditCtrl);

    /* @ngInject */
    function CategoryEditCtrl($q, $state, $stateParams, categoryService) {
        var vm = this;
        vm.category = {};
        vm.categories = [];

        vm.save = function save() {
            categoryService.editCategory(vm.category)
                .success(function (result) {
                        $state.go('category');
                    })
                .error(function (error) {
                    vm.validationErrors = [];
                    if (error && angular.isObject(error)) {
                        for (var key in error) {
                            vm.validationErrors.push(error[key][0]);
                        }
                    } else {
                        vm.validationErrors.push('Could not add category.');
                    }
                });
        };

        function init() {
            $q.all([
                    categoryService.getCategories(),
                    categoryService.getCategory($stateParams.id)
                ])
                .then(function (result) {
                    var index;
                    vm.categories = result[0].data;
                    vm.category = result[1].data;

                    index = vm.categories.map(function (item) {
                        return item.id;
                    }).indexOf(vm.category.id);
                    vm.categories.splice(index, 1);
                });
        }

        init();
    }
})();