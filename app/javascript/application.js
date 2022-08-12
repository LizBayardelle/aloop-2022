// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "controllers"
import "jquery"
import "jquery_ujs"
import "popper"
import "bootstrap"


//= require jquery3
//= require jquery_ujs
//= require jquery-ui
//= require popper
//= require bootstrap
//= require jquery.matchHeight
//= require activestorage
//= require font_awesome5
//= require tinymce
//= require_tree .


window.jQuery = $;
window.$ = $;


setTimeout(function() {
    $('.alert').fadeOut('fast');
}, 5000);




