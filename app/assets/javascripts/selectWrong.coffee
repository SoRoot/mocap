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
						'background': '#333333'
						'border-color': '#42DCA3'
					$('.select2-container--default .select2-selection--single').hover \
						(-> $(this).css 'background', '#42DCA3'), \
						(-> $(this).css 'background', '#333333')
