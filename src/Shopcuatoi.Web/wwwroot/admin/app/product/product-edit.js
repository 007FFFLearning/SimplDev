﻿/*global angular, jQuery*/
(function ($) {
    angular
        .module('shopAdmin.product')
        .controller('ProductEditCtrl', ProductEditCtrl);

    /* @ngInject */
    function ProductEditCtrl($state, $stateParams, $http, categoryService, productService, summerNoteService, manufacturerService) {
        var vm = this;
        // declare shoreDescription and description for summernote
        vm.product = { shortDescription: '', description: '', specification: '' };
        vm.product.categoryIds = [];
        vm.product.options = [];
        vm.product.variations = [];
        vm.categories = [];
        vm.thumbnailImage = null;
        vm.productImages = [];
        vm.options = [];
        vm.addingOption = null;
        vm.isEditMode = true;
        vm.addingVariation = { priceOffset: 0 };
        vm.manufacturers = [];

        vm.shortDescUpload = function (files) {
            summerNoteService.upload(files[0])
                .success(function (url) {
                    $(vm.shortDescEditor).summernote('insertImage', url);
                });
        };

        vm.descUpload = function (files) {
            summerNoteService.upload(files[0])
                .success(function (url) {
                    $(vm.descEditor).summernote('insertImage', url);
                });
        };

        vm.specUpload = function (files) {
            summerNoteService.upload(files[0])
                .success(function (url) {
                    $(vm.specEditor).summernote('insertImage', url);
                });
        };

        vm.addOption = function addOption() {
            vm.addingOption.values = [];
            var index = vm.options.indexOf(vm.addingOption);
            vm.product.options.push(vm.addingOption);
            vm.options.splice(index, 1);
            vm.addingOption = null;
        };

        vm.deleteOption = function deleteOption(option) {
            var index = vm.product.options.indexOf(option);
            vm.product.options.splice(index, 1);
            vm.options.push(option);
        };

        vm.generateOptionCombination = function generateOptionCombination() {
            var maxIndexOption = vm.product.options.length - 1;
            vm.product.variations = [];

            function getItemValue(item) {
                return item.value;
            }

            function helper(arr, optionIndex) {
                var j, l, variation, optionCombinations, optionValue;

                for (j = 0, l = vm.product.options[optionIndex].values.length; j < l; j = j + 1) {
                    optionCombinations = arr.slice(0);
                    optionValue = {
                        optionName: vm.product.options[optionIndex].name,
                        optionId: vm.product.options[optionIndex].id,
                        value: vm.product.options[optionIndex].values[j]
                    };
                    optionCombinations.push(optionValue);

                    if (optionIndex === maxIndexOption) {
                        variation = {
                            name: optionCombinations.map(getItemValue).join('-'),
                            optionCombinations: optionCombinations,
                            priceOffset : 0
                        };
                        vm.product.variations.push(variation);
                    } else {
                        helper(optionCombinations, optionIndex + 1);
                    }
                }
            }

            helper([], 0);
        };

        vm.deleteVariation = function deleteVariation(variation) {
            var index = vm.product.variations.indexOf(variation);
            vm.product.variations.splice(index, 1);
        };

        vm.removeMedia = function removeMedia(media) {
            var index = vm.product.productMedias.indexOf(media);
            vm.product.productMedias.splice(index, 1);
            vm.product.deletedMediaIds.push(media.id);
        };

        vm.filterAddedOptionValue = function filterAddedOptionValue(item) {
            if (vm.product.options.length > 1) {
                return true;
            }
            var optionValueAdded = false;
            vm.product.variations.forEach(function (variation) {
                var optionValues = variation.optionCombinations.map(function (item) {
                    return item.value;
                });
                if (optionValues.indexOf(item) > -1) {
                    optionValueAdded = true;
                }
            });

            return !optionValueAdded;
        };

        vm.addVariation = function addVariation() {
            var variation,
                optionCombinations = [];

            vm.product.options.forEach(function (option) {
                var optionValue = {
                    optionName: option.name,
                    optionId: option.id,
                    value: vm.addingVariation[option.name]
                };
                optionCombinations.push(optionValue);
            });

            variation = {
                name: optionCombinations.map(function (item) {
                    return item.value;
                }).join('-'),
                optionCombinations: optionCombinations,
                priceOffset: vm.addingVariation.priceOffset || 0
            };
            if (!vm.product.variations.find(function (item) { return item.name === variation.name; })) {
                vm.product.variations.push(variation);
                vm.addingVariation = { priceOffset: 0 };
            }
        };

        vm.save = function save() {
            productService.editProduct(vm.product, vm.thumbnailImage, vm.productImages)
                .success(function (result) {
                    $state.go('product');
                })
                .error(function (error) {
                    vm.validationErrors = [];
                    if (error && angular.isObject(error)) {
                        for (var key in error) {
                            vm.validationErrors.push(error[key][0]);
                        }
                    } else {
                        vm.validationErrors.push('Could not add product.');
                    }
                });
        };

        function getProduct() {
            productService.getProduct($stateParams.id).then(function (result) {
                var i, index, optionIds;
                vm.product = result.data;
                optionIds = vm.options.map(function (item) { return item.id; });
                for (i = 0; i < vm.product.options.length; i = i + 1) {
                    index = optionIds.indexOf(vm.product.options[i].id);
                    vm.options.splice(index, 1);
                }
            });
        }

        function getCategories() {
            categoryService.getCategories().then(function (result) {
                vm.categories = result.data;
            });
        }

        function getProductOptions() {
            productService.getProductOptions().then(function (result) {
                vm.options = result.data;
            });
        }

        vm.toggleCategories = function toggleCategories(categoryId) {
            var index = vm.product.categoryIds.indexOf(categoryId);
            if (index > -1) {
                vm.product.categoryIds.splice(index, 1);
            } else {
                vm.product.categoryIds.push(categoryId);
            }
        };

        function getManufacturers() {
            manufacturerService.getManufacturers().then(function (result) {
                vm.manufacturers = result.data;
            });
        }

        function init() {
            getProduct();
            getProductOptions();
            getCategories();
            getManufacturers();
        }

        init();
    }
})(jQuery);