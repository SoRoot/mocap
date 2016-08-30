$(document).on 'page:change', =>
				
				changeColor('#attributes')

				if $('#attributes').hasClass('dropdown-wrong')
							 $('#attributes').parent().find('.select2-container--default .select2-selection--multiple').one 'focus', ->
													$('#attributes').removeClass 'dropdown-wrong'
													changeColor('#attributes')
													
changeColor = (id) ->
				if $(id).hasClass('dropdown-wrong')
					$(id).parent().find('.select2-container--default .select2-selection--multiple').toggleClass('select2-error')
				else
						$(id).parent().find('.select2-container--default .select2-selection--multiple').toggleClass('select2-error', false)
