// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
// Nav hamburger menu
$(document).ready(function(){
  $(function() {
    $(".menu").click(function() {
      $(".right-nav").toggleClass("show-nav", 1000, "easeOutSine");
    });
  });
})
// Back to top!!
$(document).ready(function() {
  function checkPosition() {
    if ($(this).scrollTop() > 200) {
      $('.go-top').fadeIn(500);
    } else {
      $('.go-top').fadeOut(300);
    }
  }
  // Show or hide the sticky footer button
  $(window).scroll(checkPosition);

  // Animate the scroll to top
  $('.go-top').click(function(event) {
    event.preventDefault();
    $('html, body').animate({scrollTop: 0}, 1000);
  });
  checkPosition();
});

// scroll down with ease!!
   $(function() {
 $('a[href*=#]:not([href=#])').click(function() {
   if (location.pathname.replace(/^\//,'') === this.pathname.replace(/^\//,'') && location.hostname === this.hostname) {
     var target = $(this.hash);
     target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
     if (target.length) {
       $('html,body').animate({
         scrollTop: target.offset().top
       }, 1000);
       return false;
     }
   }
 });
});
