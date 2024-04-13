// import jquery from "jquery"
import $ from "jquery";
window.jQuery = jquery
window.$ = jquery

console.log(`loaded jquery`);

$(document).ready(function() {
    console.log("jQuery is working!");
});