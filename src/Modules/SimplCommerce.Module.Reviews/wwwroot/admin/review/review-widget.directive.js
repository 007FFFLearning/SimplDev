﻿(function() {
    angular
        .module('simplAdmin.reviews')
        .directive('reviewWidget', reviewWidget);

    function reviewWidget() {
        var directive = {
            restrict: 'E',
            templateUrl: 'reviews/admin/review/review-widget.directive.html',
            scope: {
                status: '=',
                numRecords: '='
            },
            controller: ReviewWidgetCtrl,
            controllerAs: 'vm',
            bindToController: true
        };

        return directive;
    }

    /* @ngInject */
    function ReviewWidgetCtrl(reviewService) {
        var vm = this;
        vm.reviews = [];

        reviewService.getReviews(vm.status, vm.numRecords).then(function (result) {
            vm.reviews = result.data;
        });
    }
})();
