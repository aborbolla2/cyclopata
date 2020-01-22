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
import './clients.js'
import 'materialize-css/dist/js/materialize'
//= require datatables/dataTables.bootstrap4
//= require sweetalert2
//= require sweet-alert2-rails
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


$(document).ready(function(){
        $('.tooltipped').tooltip();
});

$(document).on('keyup','#c_search',delay(function (e) {
                        search_users();
},500));


function delay(callback, ms) {
        var timer = 0;
        return function() {
                var context = this, args = arguments;
                clearTimeout(timer);
                timer = setTimeout(function () {
                        callback.apply(context, args);
                }, ms || 0);
        };
}


function search_users(){
        //  var form = $(this).parents("form"); // grab the form wrapping the search bar.
        // var url = $(this).attr("url"); // grab the URL from the form's action value.
        console.log($("#url_search_clients").val());
        // var search = form.serialize();// grab the data in the form
        $.ajax({
                type: "GET",
                url: $("#url_search_clients").val(),
                dataType: "json",
                data: {search: $("#c_search").val()},
                success: function (data) {
                        if(data.done){
                                $("#clients_table").html("");
                                $.each(data.clients,function (i,client) {
                                        $("#clients_table").append('<tr>\n' +
                                            '      <td scope="row"><strong>'+client.id+' </strong></td>\n' +
                                            '      <td scope="row">'+client.username+' </td>\n' +
                                            '      <td scope="row">'+client.name+' </td>\n' +
                                            '      <td scope="row">'+client.last_name+' </td>\n' +
                                            '      <td scope="row"> '+client.shoe_size+' </td>\n' +
                                            '      <td scope="row">1</td>\n' +
                                            '      <td scope="row">\n' +
                                            '        <a class="btn-floating btn-large waves-effect waves-light blue" title="Ver Perfil" href="usuarios/'+client.id+'"><i class="material-icons">remove_red_eye</i></a>\n' +
                                            '        <a class="btn-floating btn-large waves-effect waves-light amber" title="Editar" href="usuarios/'+client.id+'/editar"><i class="material-icons">create</i></a>\n' +
                                            '        <a class="btn-floating btn-large waves-effect waves-light btn_delete red" id="btn-delete" title="Desactivar" href="usuarios/deactivate/'+client.id+'" data=""><i class="material-icons">delete</i>\n' +
                                            '        </a>\n' +
                                            '      </td>\n' +
                                            '\n' +
                                            '      <input type="hidden" value="<%= deactivate_clients_path('+client.id+')%>" id="url_deactivate">\n' +
                                            '    </tr>');
                                });


                        }
                        else{

                        }
                }
        });
}


$(document).on('click','#btn-delete-coach',function () {
        var url = $(this).attr("url");
        var id = $(this).attr("id_coach");
        $.ajax({
                type: "POST",
                url: url,
                data: {id:id},
                success: function (data) {
                        if(data.done){
                                location.reload();
                        }
                        else{

                        }
                }
        });
});

$(document).on('click','#btn-activate-coach',function () {
        var url = $(this).attr("url");
        var id = $(this).attr("id_coach");
        $.ajax({
                type: "POST",
                url: url,
                data: {id:id},
                success: function (data) {
                        if(data.done){
                                location.reload();
                        }
                        else{

                        }
                }
        });
});

$(document).on('click','#btn-delete-package',function () {
        var url = $(this).attr("url");
        var id = $(this).attr("id_package");
        $.ajax({
                type: "POST",
                url: url,
                data: {id:id},
                success: function (data) {
                        if(data.done){
                                location.reload();
                        }
                        else{

                        }
                }
        });
});

$(document).on('click','#btn-activate-package',function () {
        var url = $(this).attr("url");
        var id = $(this).attr("id_package");
        $.ajax({
                type: "POST",
                url: url,
                data: {id:id},
                success: function (data) {
                        if(data.done){
                                location.reload();
                        }
                        else{

                        }
                }
        });
});