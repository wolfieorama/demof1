// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
// Nav hamburger menu
$(document).ready(()=>{
  $(function() {
    $(".menu").click(()=> {
      $(".right-nav").toggleClass("show-nav", 1000, "easeOutSine");
    });
  });
})
