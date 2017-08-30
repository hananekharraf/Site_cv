// Agency Theme JavaScript

(function($) {
    "use strict"; // Start of use strict

    // jQuery for page scrolling feature - requires jQuery Easing plugin
    $('a.page-scroll').bind('click', function(event) {
        var $decal = $(this).attr('href');
        var $anchor = $(this);
        // var result = $($anchor.attr('href')).offset().top - 115
        // console.log( result )
        if ( $decal == '#team' ) {
          $('html, body').stop().animate({
            scrollTop: ($($anchor.attr('href')).offset().top -50)
            //  scrollTop: ($($anchor.attr('href')).offset().top - 115)
          }, 1250, 'easeInOutExpo');
          event.preventDefault();
        } else {
          $('html, body').stop().animate({
            scrollTop: ($($anchor.attr('href')).offset().top - 50)
            //  scrollTop: ($($anchor.attr('href')).offset().top - 50)
          }, 1250, 'easeInOutExpo');
          event.preventDefault();

        }
    });


    // Highlight the top nav as scrolling occurs
    if( $( $('a.page-scroll').attr('href')).offset().top -50 ){
      //2-if( $( $('a.page-scroll').attr('href')).offset().top - 115 ){
      // console.log( 'echo')
      $('body').scrollspy({
        target: '.navbar-fixed-top',
        offset:51
      });

    } else {
      $('body').scrollspy({
        target: '.navbar-fixed-top',
        offset:51
      });

    }

    // Closes the Responsive Menu on Menu Item Click
    $('.navbar-collapse ul li a').click(function(){
      $('.navbar-toggle:visible').click();
    });

    // Offset for Main Navigation
    $('#mainNav').affix({
        offset: {
            top: 100
        }
    })

})(jQuery); // End of use strict
