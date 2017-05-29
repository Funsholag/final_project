// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

// $(document).ready(function(){
//   $('.slider').slider('next');
//   $('.slider').slider('next', 3);
//   $('.slider').slider('prev');
//   $('.slider').slider('prev', 4);
//   $('.slider').slider('set', 4);
// });

$(document).ready(function(){
  $('.slider').slider({indicators: false});
});


$( document ).ready(function(){
  $(".dropdown-button").dropdown({ hover: false});
  $(".button-collapse").mobile();
});
