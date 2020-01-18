// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
import '../stylesheets/application'
import './bootstrap_custom.js'
import './admin.js'
import 'materialize-css/dist/js/materialize'
//= require datatables/dataTables.bootstrap4
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
/*$(document).click(".toggle-btn",function(e){
    $('.sidebar-menu').removeClass("flowHide");
    $(".sidebar-menu").toggleClass("full-side-bar");
    $('.nav-link-name').toggleClass('name-hide');

});

$(document).click(function(e){
    if($(e.target).closest('.toggle-btn').length === 0){
        $(".sidebar-menu").removeClass("full-side-bar");
    }
});*/

$(document).on('click','.hamburger',function () {
        $('.sidebar-menu').removeClass("flowHide");
        $(".sidebar-menu").toggleClass("full-side-bar");
        $('.nav-link-name').toggleClass('name-hide');
});


