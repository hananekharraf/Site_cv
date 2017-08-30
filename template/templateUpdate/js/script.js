// var textHolder = document.getElementsByClassName('neon')[0],
//   text = textHolder.innerHTML,
// 	chars = text.length,
// 	newText = '',
// 	i;
//
// for (i = 0; i < chars; i += 1) {
// 	newText += '<neon>' + text.charAt(i) + '</neon>';
// }
//
// textHolder.innerHTML = newText;
//
// var letters = document.getElementsByTagName('neon'),
// 	flickers = [5, 7, 9, 11, 13, 15, 17],
// 	randomLetter,
// 	flickerNumber,
// 	counter;
//
// function randomFromInterval(from,to) {
// 	return Math.floor(Math.random()*(to-from+1)+from);
// }
//
// function hasClass(element, cls) {
//     return (' ' + element.className + ' ').indexOf(' ' + cls + ' ') > -1;
// }
//
// function flicker() {
// 	counter += 1;
//
// 	if (counter === flickerNumber) {
// 		return;
// 	}
//
// 	setTimeout(function () {
// 		if(hasClass(randomLetter, 'off')) {
// 			randomLetter.className = '';
// 		}
// 		else {
// 			randomLetter.className = 'off';
// 		}
//
// 		flicker();
// 	}, 30);
// }
// //var limit = document.getElementsByClassName('neon').length
// // console.log(limit)
//
// (function loop() {
//     var rand = randomFromInterval(500,3000);
//     var limit = document.getElementsByTagName('neon').length
// 	randomLetter = randomFromInterval(0, limit);
// 	randomLetter = letters[randomLetter];
//
// 	flickerNumber = randomFromInterval(0, 6);
// 	flickerNumber = flickers[flickerNumber];
//
//     setTimeout(function() {
//             counter = 0;
//             flicker();
//             loop();
//     }, rand);
// }());

// barre  progress
$(document).ready(function() {
  // $('.adobe').css('width', '100%');
  $('.html').css('width', '90%');
  $('.css').css('width', '80%');
  // $('.lesssass').css('width', '50%');
  $('.jquery').css('width', '30');
  $('.javascript').css('width', '20%');
  $('.bootstrap').css('width', '80%');
  $('.wordpress').css('width', '50%');
  $('.php').css('width', '50%');
  $('.sql').css('width', '50%');
  $('.ajax').css('width', '20%');
  $('.github').css('width', '30%');
  $('.photoshop').css('width', '40%');
});


// carousel

$('.carousel').carousel()
