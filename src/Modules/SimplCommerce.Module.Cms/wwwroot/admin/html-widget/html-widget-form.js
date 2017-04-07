﻿/*global angular, jQuery*/
(function ($) {
    angular
        .module('simplAdmin.cms')
        .controller('HtmlWidgetFormCtrl', HtmlWidgetFormCtrl);

    /* @ngInject */
    function HtmlWidgetFormCtrl($state, $stateParams, summerNoteService, htmlWidgetService, translateService) {
        var vm = this;
        vm.translate = translateService;
        vm.widgetZones = [];
        vm.widgetInstance = { widgetZoneId: 1, publishStart : new Date() };
        vm.widgetInstanceId = $stateParams.id;
        vm.isEditMode = vm.widgetInstanceId > 0;

        vm.datePickerPublishStart = {};
        vm.datePickerPublishEnd = {};

        vm.openCalendar = function (e, picker) {
            vm[picker].open = true;
        };

        vm.imageUpload = function (files) {
            summerNoteService.upload(files[0])
                .then(function (response) {
                    $(vm.htmlContent).summernote('insertImage', response.data);
                });
        };

        vm.save = function save() {
            var promise;
            if (vm.isEditMode) {
                promise = htmlWidgetService.editHtmlWidget(vm.widgetInstance);
            } else {
                promise = htmlWidgetService.createHtmlWidget(vm.widgetInstance);
            }

            promise
                .then(function (result) {
                    $state.go('widget');
                })
                .catch(function (response) {
                    var error = response.data;
                    vm.validationErrors = [];
                    if (error && angular.isObject(error)) {
                        for (var key in error) {
                            vm.validationErrors.push(error[key][0]);
                        }
                    } else {
                        vm.validationErrors.push('Could not html widget.');
                    }
                });
        };

        function init() {
            htmlWidgetService.getWidgetZones().then(function (result) {
                vm.widgetZones = result.data;
            });

            if (vm.isEditMode) {
                htmlWidgetService.getHtmlWidget(vm.widgetInstanceId).then(function (result) {
                    vm.widgetInstance = result.data;
                    if (vm.widgetInstance.publishStart) {
                        vm.widgetInstance.publishStart = new Date(vm.widgetInstance.publishStart);
                    }
                    if (vm.widgetInstance.publishEnd) {
                        vm.widgetInstance.publishEnd = new Date(vm.widgetInstance.publishEnd);
                    }
                });
            }
        }

        init();
    }
})(jQuery);