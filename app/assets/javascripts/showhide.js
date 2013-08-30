function goBack() {
  window.history.back()
}

$(document).ready(function(){
	if ($('#dinner').is(':checked')){
		$('.dinnertoggle').removeClass('hidden');
		$('path#dinnericon').attr('style','fill:grey');
	};

	if ($('#drinks').is(':checked')){
		$('.drinkstoggle').removeClass('hidden');
		$('path#drinksicon').attr('style','fill:grey');
	};

	$(".dinnerselect").click(function(){
		$(".dinnertoggle").toggle("fast", "swing");
		if($('#dinner').is(':checked')){
			$('path#dinnericon').attr('style','fill:black');
		} else {
			$('path#dinnericon').attr('style','fill:grey');
		};
	});

	$(".drinksselect").click(function(){
		$(".drinkstoggle").toggle("fast", "swing");
		if($('#drinks').is(':checked')){
			$('path#drinksicon').attr('style','fill:black');
		} else {
			$('path#drinksicon').attr('style','fill:grey');
		};
	});
});
