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
  $('.slider').slider({
    indicators: false
  });
});

document.addEventListener("DOMContentLoaded",function(){
  if (document.querySelector('.slider')) {
    var controls = document.querySelectorAll('.controls');
    for(var i=0; i<controls.length; i++){
        controls[i].style.display = 'inline-block';
    }

    var slides = document.querySelectorAll('#slides .slide');
    var currentSlide = 0;

    var slideInterval = setInterval(nextSlide,4000);


    function nextSlide(){
        goToSlide(currentSlide+1);
    }

    function previousSlide(){
        goToSlide(currentSlide-1);
    }

    function goToSlide(n){
        slides[currentSlide].className = 'slide';
        currentSlide = (n+slides.length)%slides.length;
        slides[currentSlide].className = 'slide showing';
    }

    var playing = true;
    var pauseButton = document.getElementById('pause');

    function pauseSlideshow(){
        pauseButton.innerHTML = '&#9658;'; // play character
        playing = false;
        clearInterval(slideInterval);
    }

    function playSlideshow(){
        pauseButton.innerHTML = '&#10074;&#10074;'; // pause character
        playing = true;
        slideInterval = setInterval(nextSlide,3000);
    }

    pauseButton.onclick = function(){
        if(playing){ pauseSlideshow(); }
        else{ playSlideshow(); }
    };

    var next = document.getElementById('next');
    var previous = document.getElementById('previous');

    next.onclick = function(){
        pauseSlideshow();
        nextSlide();
    };
    previous.onclick = function(){
        pauseSlideshow();
        previousSlide();
    };
  }
})
// $(document).ready(function)(){
//   $('.slider').slider({
//     slidesToShow: 3,
//     slidesToScroll: 1,
//     autoplay: true,
//     autoplaySpeed: 2000,
//   });
// });


$( document ).ready(function(){
  $(".dropdown-button").dropdown({ hover: false});
});
