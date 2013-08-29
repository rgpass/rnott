$(document).ready(function(){
	if ($('#dinner').is(':checked')){
		$('.dinnertoggle').removeClass('hidden');
	};

	if ($('#drinks').is(':checked')){
		$('.drinkstoggle').removeClass('hidden');
	};

	$(".dinnerselect").click(function(){
		$(".dinnertoggle").toggle("slow");
	});

	$(".drinksselect").click(function(){
		$(".drinkstoggle").toggle("slow");
	});
});


// Works
	// $(".dinnerselect").click(function(){
	// 	$(".dinnertoggle").toggleClass('hidden');
	// });
	// $(".drinksselect").click(function(){
	// 	$(".drinkstoggle").toggleClass('hidden');
	// });
