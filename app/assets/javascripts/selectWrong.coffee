$(document).on 'page:change', =>
				
				changeColor()

				if $('select').hasClass('dropdown-wrong')
								$('.select2-container--default .select2-selection--single').one 'focus', ->
													$('select').removeClass 'dropdown-wrong'
													changeColor()

changeColor = ->
				if $('select').hasClass('dropdown-wrong')
					$('.select2-container--default .select2-selection--single').css
						'background': '#350e04'
						'border-color': '#c90c11'
					$('.select2-container--default .select2-selection--single').hover \
						(-> $(this).css 'background', '#c90c11'), \
						(-> $(this).css 'background', '#350e04')
				else
					$('.select2-container--default .select2-selection--single').css
						'background': '#3A3433'
						'border-color': '#45B69A'
					$('.select2-container--default .select2-selection--single').hover \
						(-> $(this).css 'background', '#45B69A'), \
						(-> $(this).css 'background', '#3A3433')
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
