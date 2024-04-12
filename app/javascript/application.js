import "./controllers"
import * as bootstrap from "bootstrap"

import "./src/jquery"
import "./src/jquery-ui"

// Initialize any jQuery or other JS library setups
$(function() {
    $(document).tooltip();
    $("#accordion").accordion();
    $("#dialog").dialog();
    $("#tabs").tabs();
    $(document).tooltip({
        content: function() {
            return $(this).prop('title');
        }
    });
});

// Fade out alerts after 5 seconds
setTimeout(function() {
    $('.alert').fadeOut('fast');
}, 5000);
