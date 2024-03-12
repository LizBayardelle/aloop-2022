import { Application } from "@hotwired/stimulus";
const application = Application.start();

// Assuming your controllers are in a directory named "controllers"
// and webpack is correctly set up to import all files from that directory
// Adjust the path as needed for your project structure
const controllers = require.context("./controllers", true, /\.js$/);
application.load(controllers.keys().map(controllers));

import { Turbo } from "@hotwired/turbo-rails";
import * as bootstrap from 'bootstrap';
import Swal from 'sweetalert2';

// If these are custom files, ensure they're correctly set up and exported
import "./src/jquery";
import "./src/jquery-ui";

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
