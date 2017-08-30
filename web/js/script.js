
// barre progress-bar
$(window).scroll(function() {
  var scroll = $(window).scrollTop();
  if ( scroll >= $('#services').offset().top-550 ) {
    $('.progress-bar').each(function(){
       $( this ).css('width', $( this ).attr( 'niveau' ) );
    })
    }
});


// carousel
/*
$('.owl-carousel').owlCarousel({
    center: true,
    loop:true,
    margin:10,
    smartSpeed:450,
    items:2,
    nav:true,
    autoplay:true,
    autoplayTimeout:5000,
    autoplayHoverPause:false,
})
*/

$('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    smartSpeed:450,
    items:2,
    nav:true,
    autoplay:true,
    autoplayTimeout:5000,
    autoplayHoverPause:false,
    navText: [
      '<i class="fa fa-angle-double-left" aria-hidden="true"></i>',
      '<i class="fa fa-angle-double-right" aria-hidden="true"></i>'],

})

$('.portfolio-item').click(function(){
  var cible = $(this).children('a')[0].hash
  setTimeout(function(){
     $( cible ).css('padding-right', 0) ;
   }, 170);
})

// typed JS
// var options = {
//   strings: ["  Front-End "],
//    typeSpeed: 70
// }
//
// var typed = new Typed(".animer", options);

// Dust effects

 var speed = 400;
 $(document).ready(function(){
   var imgCount = $('.img').length
   $("#slider").on("change", function() {
     for (var i = 1; i <= imgCount; i++) {
       speed = 201 - this.value;
       $('#range').text(`1000px / ${speed/10}s`)
       speed = speed * (i / 1.25)
       $('#img-' + i).css({
         'animation-duration': speed + 's',
         'animation-name': 'float'
       });
     }
   });
 });            
var parallax = $('#scene').parallax();

for (var i = 1; i < 6; i++) {
  twinkleLoop(i);
};

function twinkleLoop(i) {
  var duration = ((Math.random() * 5) + 3)

  duration = duration - ((495 - speed)/100)
  twinkle(i, duration)

  setTimeout(function() {
    twinkleLoop(i)
  }, duration * 1000);
}

function twinkle(id, duration) {
  var top = (Math.floor(Math.random() * 85) + 0) + '%';
  var left = (Math.floor(Math.random() * 85) + 0) + '%';

  $('#speck' + id).remove();
  $('#specks').append("<div class='speck' id='speck" + id + "'></div>")
  $('#speck' + id).css({
    'top': top,
    'left': left,
    'animation-duration': duration + 's',
    'animation-timing-function': 'cubic-bezier(0.250, 0.250, 0.750, 0.750)',
    'animation-name': 'twinkle',
  })
}
