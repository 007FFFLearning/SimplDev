﻿(function() {
    var adminApp = angular.module('hvAdmin', [
        'ui.router',
        'hvAdmin.dashboard',
        'hvAdmin.user',
        'hvAdmin.category',
        'hvAdmin.product'
    ]);

    adminApp.config(['$urlRouterProvider',
        function ($urlRouterProvider) {
            $urlRouterProvider.otherwise("/dashboard");
        }
    ]);
})()