$(document).on 'page:change', =>
	$(".js-example-placeholder-single.actor").select2
		allowClear: true
		placeholder: "Select actor"
	$(".js-example-placeholder-single.gender").select2
		allowClear: true
		placeholder: "Select gender"
		minimumResultsForSearch: Infinity
