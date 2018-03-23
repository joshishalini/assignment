// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


//jQuery time
 var currentStep = 1;

$(document).ready(function () {

    $('.li-nav').click(function () {

        var $targetStep = $($(this).attr('step'));
        currentStep = parseInt($(this).attr('id').substr(7));

        if (!$(this).hasClass('disabled')) {
            $('.li-nav.active').removeClass('active');
            $(this).addClass('active');
            $('.setup-content').hide();
            $targetStep.show();
        }
    });

    $('#navStep1').click();

});

        

function step1Next() {
    //You can make only one function for next, and inside you can check the current step
    if (true) {//Insert here your validation of the first step
        currentStep += 1;
        $('#navStep' + currentStep).removeClass('disabled');
        $('#navStep' + currentStep).click();
    }
}

function prevStep() {
    //Notice that the btn prev not exist in the first step
    currentStep -= 1;
    $('#navStep' + currentStep).click();
}

function step2Next() {
    if (true) {
        $('#navStep3').removeClass('disabled');
        $('#navStep3').click();
    }
}

function step3Next() {
    if (true) {
        $('#navStep4').removeClass('disabled');
        $('#navStep4').click();
    }
}
