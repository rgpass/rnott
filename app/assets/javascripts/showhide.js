$(document).ready(function(){
	$(".dinnertoggle").hide();
	$(".drinkstoggle").hide();

	if ($('#dinner').is(':checked')){
		$(".dinnertoggle").show();
	};
	if ($('#drinks').is(':checked')){
		$(".drinkstoggle").show();
	};

  $(".dinnerselect").click(function(){
  	$(".dinnertoggle").toggle();
  });
  $(".drinksselect").click(function(){
  	$(".drinkstoggle").toggle();
  });
});