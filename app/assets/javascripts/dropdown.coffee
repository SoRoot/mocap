$(document).on 'page:change', =>
	$(".js-example-placeholder-single.actor").select2
		allowClear: true
		placeholder: "Select actor"
	$(".js-example-placeholder-single.gender").select2
		allowClear: true
		placeholder: "Select gender"
		minimumResultsForSearch: Infinity
	$(".js-example-placeholder-single.role").select2
		allowClear: true
		placeholder: "Select role"
	$(".js-example-placeholder-single.mood").select2
		allowClear: true
		placeholder: "Select mood"
	$(".js-example-placeholder-single.description").select2
		allowClear: true
		placeholder: "Select descriptions"
