// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require jquery_ujs
//= require jquery.mask
//= require select2
//= require activestorage
//= require turbolinks
//= require popper
//= require bootstrap
//= require datatables
//= require_tree .

function launch_toast() {
    var x = document.getElementById("toast");
    if (x){
        x.className = "show";
        setTimeout(function(){ x.className = x.className.replace("show", ""); }, 5000);
    }
}

function create_toast(msg, type){
    $('body').prepend("<div id='toast'><div id="+type+">"+msg+"</div></div>");
}

$(document).ready( function () {
    launch_toast();

    $("select").select2({
        placeholder: "Selecione uma opção",
    }); 

    var maskBehavior = function (val) {
        return val.replace(/\D/g, '').length === 11 ? '(00) 00000-0000' : '(00) 0000-00009';
    },
    options = {
        onKeyPress: function(val, e, field, options) {
            field.mask(maskBehavior.apply({}, arguments), options);
        }
    };
    $('.telefone').mask(maskBehavior, options);
    $('.rg').mask('99.999.999-9');
    $('.cpf').mask('999.999.999-99');
});