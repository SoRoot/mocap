$(document).on 'page:change', =>
				
				changeColor('select')

				if $('#mood').hasClass('dropdown-wrong')
								$('#mood').parent().find('.select2-container--default .select2-selection--single').one 'focus', ->
													$('#mood').removeClass 'dropdown-wrong'
													changeColor('#mood')
				if $('#attributes').hasClass('dropdown-wrong')
							 $('#attributes').parent().find('.select2-container--default .select2-selection--multiple').one 'focus', ->
													$('#attributes').removeClass 'dropdown-wrong'
													changeColor('#attributes')
				if $('#role').hasClass('dropdown-wrong')
								$('#role').parent().find('.select2-container--default .select2-selection--single').one 'focus', ->
													$('#role').removeClass 'dropdown-wrong'
													changeColor('#role')
				if $('.gender').hasClass('dropdown-wrong') || $('.actor').hasClass('dropdown-wrong')
								$('.select2-container--default .select2-selection--single').one 'focus', ->
													$('.gender').removeClass 'dropdown-wrong'
													$('.actor').removeClass 'dropdown-wrong'
													changeColor('select')

changeColor = (id) ->
				if $(id).hasClass('dropdown-wrong')
					$(id).parent().find('.select2-container--default .select2-selection--multiple').toggleClass('select2-error')
					$(id).parent().find('.select2-container--default .select2-selection--single').toggleClass('select2-error')
				else
						$(id).parent().find('.select2-container--default .select2-selection--multiple').toggleClass('select2-error', false)
						$(id).parent().find('.select2-container--default .select2-selection--single').toggleClass('select2-error', false)
				#if $('select').hasClass('search-id')
					#$('.select2-container--default .select2-selection--single').css
						#'background': '#F2F2F2'
						#'border-color': '#45B69A'
					#$('.select2-container--default .select2-selection--single').hover \
						#(-> $(this).css 'background', '#45B69A'), \
						#(-> $(this).css 'background', '#F2F2F2')
				#$(document).ready =>
					#$('.select2-container--default .select2-results').css('color', '#3A3433');
					#$('.select2-container--default .select2-selection--multiple').css\
						#(-> $(this).css 'background', '#F2F2F2')
