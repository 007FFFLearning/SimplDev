﻿/*global angular*/
(function () {
    var adminApp = angular.module('shopAdmin', [
        'ui.router',
        'ngMaterial',
        'ngMessages',
        'smart-table',
        'ngFileUpload',
        'ui.bootstrap',
        'summernote',
        'shopAdmin.common',
        'shopAdmin.dashboard',
        'shopAdmin.user',
        'shopAdmin.category',
        'shopAdmin.product',
        'shopAdmin.productOption',
        'shopAdmin.productAttributeGroup',
        'shopAdmin.productAttribute',
        'shopAdmin.productTemplate',
        'shopAdmin.brand',
        'shopAdmin.page',
        'shopAdmin.resource',
        'shopAdmin.order',
        'shopAdmin.widget'
    ]);

    toastr.options.closeButton = true;
    adminApp
        .constant('toastr', toastr)
        .constant('bootbox', bootbox)
        .config([
            '$urlRouterProvider',
            function ($urlRouterProvider) {
                $urlRouterProvider.otherwise("/dashboard");
            }
    ]);
}());