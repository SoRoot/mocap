$(document).on 'page:change', =>
			return if $('.actors').length > 0
				$(".js-example-placeholder-single").select2
								allowClear: true
								placeholder: "Select gender"
								minimumResultsForSearch: -1
			return if $('.motions.new').length > 0
				$(".js-example-placeholder-single").select2
								allowClear: true
								placeholder: "Select actor"
			return if $('.startup.searchDB').length > 0
				$(".js-example-placeholder-single").select2
								allowClear: true
								placeholder: "Select actor"
