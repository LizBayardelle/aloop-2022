import { Turbo } from "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

import "./src/jquery"
import "./src/jquery-ui"
import "./src/sweetalert2"

$( function() {
    $( document ).tooltip();
    $( "#accordion" ).accordion();
    $( "#dialog" ).dialog();
    $( "#tabs" ).tabs();
    $(document).tooltip({
        content: function () {
            return $(this).prop('title');
        }
    });
});

setTimeout(function() {
    $('.alert').fadeOut('fast');
}, 5000);
