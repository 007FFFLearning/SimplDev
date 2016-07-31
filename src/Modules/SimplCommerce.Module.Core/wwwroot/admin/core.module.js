﻿/*global angular*/
(function () {
    'use strict';

    angular
        .module('simplAdmin.core', [])
        .config(['$stateProvider', function ($stateProvider) {
            $stateProvider.state('user', {
                url: '/user',
                templateUrl: "core/admin/user/user-list.html",
                controller: 'UserListCtrl as vm'
            })
            .state('widget', {
                url: '/widget',
                templateUrl: 'core/admin/widget/widget-instance-list.html',
                controller: 'WidgetInstanceListCtrl as vm'
            });
        }]);
})();