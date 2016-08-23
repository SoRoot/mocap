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
		minimumResultsForSearch: Infinity
	$(".js-example-placeholder-single.mood").select2
		allowClear: true
		placeholder: "Select mood"
		minimumResultsForSearch: Infinity
	$(".js-example-placeholder-single.description").select2
		allowClear: true
		placeholder: "Select descriptions"
		minimumResultsForSearch: Infinity
	$('#mood').select2
		placeholder: "Add a mood"
		multiple: true
		maximumSelectionSize: 1
		data: window.motions
		createSearchChoice: (term, data) ->
			if $(data).filter(->
				@text.localeCompare(term) is 0
			).length is 0
				id: "<<<" + term + ">>>"
				text: term
	$('#role').select2
		placeholder: "Add a role"
		multiple: true
		maximumSelectionSize: 1
		data: window.motions
		createSearchChoice: (term, data) ->
			if $(data).filter(->
				@text.localeCompare(term) is 0
			).length is 0
				id: "<<<" + term + ">>>"
				text: term
	$('#attributes').select2
		placeholder: "Add up to 5 Attributes"
		multiple: true
		maximumSelectionSize: 5
		data: window.motions
		createSearchChoice: (term, data) ->
			if $(data).filter(->
				@text.localeCompare(term) is 0
			).length is 0
				id: "<<<" + term + ">>>"
				text: term
