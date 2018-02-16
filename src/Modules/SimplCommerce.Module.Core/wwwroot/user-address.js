﻿$(function () {
    function resetSelect($select) {
        var $defaultOption = $select.find("option:first-child");
        $select.empty();
        $select.append($defaultOption);
    }

    $('#CountryId').on('change', function () {
        var selectedCountryId = this.value;
        if (!selectedCountryId) {
            return;
        }

        $.getJSON('/api/country-states-provinces/' + selectedCountryId, function (data) {
            var $stateOrProvinceSelect = $("#StateOrProvinceId");
            resetSelect($stateOrProvinceSelect);

            var $districtSelect = $("#DistrictId");
            resetSelect($districtSelect);

            $.each(data.statesOrProvinces, function (index, option) {
                $stateOrProvinceSelect.append($("<option></option>").attr("value", option.id).text(option.name));
            });

            $("#form-group-district").toggleClass("hidden", !data.isDistrictEnabled);
            $("#form-group-city").toggleClass("hidden", !data.isCityEnabled);
            $("#form-group-postalcode").toggleClass("hidden", !data.isPostalCodeEnabled);
        });
    });

    $('#StateOrProvinceId').on('change', function () {
        var selectedStateOrProvinceId = this.value;
        if (!selectedStateOrProvinceId) {
            return;
        }

        $.getJSON("/api/states-provinces/" + selectedStateOrProvinceId + "/districts", function (data) {
            var $districtSelect = $("#DistrictId");
            resetSelect($districtSelect);

            $.each(data, function (index, option) {
                $districtSelect.append($("<option></option>").attr("value", option.id).text(option.name));
            });
        });
    });
});