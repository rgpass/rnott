function goBack() {
  window.history.back()
}

$(document).ready(function(){
	if ($('#dinner').is(':checked')){
		$('.dinnertoggle').removeClass('hidden');
		$('path#dinnericon').attr('style','fill:white');
		$('label.dinnerselect').addClass('selected');
	};

	if ($('#drinks').is(':checked')){
		$('.drinkstoggle').removeClass('hidden');
		$('path#drinksicon').attr('style','fill:white');
		$('label.drinksselect').addClass('selected');
	};

	$(".dinnerselect").click(function(){
		$(".dinnertoggle").toggle("fast", "swing");
		if($('#dinner').is(':checked')){
			$('path#dinnericon').attr('style','fill:#2BA6CB');
		} else {
			$('path#dinnericon').attr('style','fill:white');
		};
		$('label.dinnerselect').toggleClass('selected');
	});

	$(".drinksselect").click(function(){
		$(".drinkstoggle").toggle("fast", "swing");
		if($('#drinks').is(':checked')){
			$('path#drinksicon').attr('style','fill:#2BA6CB');
		} else {
			$('path#drinksicon').attr('style','fill:white');
		};
		$('label.drinksselect').toggleClass('selected');
	});

	$(".dinnershow").click(function(){
		$(".dinnername").toggle();
		$("a.dinnershow").text(function(i, txt) {
			return txt == "I'm lame and hate surprises." ? "Hide it!" : "I'm lame and hate surprises.";
		});
	});

	$(".drinksshow").click(function(){
		$(".drinksname").toggle();
		$("a.drinksshow").text(function(i, txt) {
			return txt == "I'm lame and hate surprises." ? "Hide it!" : "I'm lame and hate surprises.";
		});
	});
});