$(document).ready(function(){
	// $(".dinnertoggle").hide();
	// $(".drinkstoggle").hide();

	// if ($('#dinner').is(':checked')){
	// 	$(".dinnertoggle").show();
	// };
	// if ($('#drinks').is(':checked')){
	// 	$(".drinkstoggle").show();
	// };

	if ($('#dinner').is(':checked')){
		$('.dinnertoggle').removeClass('hidden');
	};

	if ($('#drinks').is(':checked')){
		$('.drinkstoggle').removeClass('hidden');
	};

  // $(".dinnerselect").click(function(){
  // 	$(".dinnertoggle").toggle(1000);
  // });
  // $(".drinksselect").click(function(){
  // 	$(".drinkstoggle").toggle(1000);
  // });

	$(".dinnerselect").click(function(){
		$(".dinnertoggle").toggleClass('hidden');
	});
	$(".drinksselect").click(function(){
		$(".drinkstoggle").toggleClass('hidden');
	});
});


// $('thumbnail').toggle(function(){
//     $('.play', this).removeClass('pausing');
//     $('.play', this).addClass('playing');
// }, function(){
//     $('.play', this).addClass('pausing');
//     $('.play', this).removeClass('playing');
// });