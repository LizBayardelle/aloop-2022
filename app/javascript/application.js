import $ from "jquery";
window.jQuery = $;
window.$ = $;

import "bootstrap";




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

console.log(`i am here!!`);

// Fade out alerts after 5 seconds
setTimeout(function() {
    $('.alert').fadeOut('fast');
}, 5000);
