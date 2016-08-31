$(document).on 'page:change', =>
				
				changeColor()
changeColor = -> 
				if $('select').hasClass('search-id')
					$('.select2-container--default .select2-selection--single').css
						'background': '#F2F2F2'
						'border-color': '#42DCA3'
					$('.select2-container--default .select2-selection--single').hover \
						(-> $(this).css 'background', '#42DCA3'), \
						(-> $(this).css 'background', '#F2F2F2')
					$('.select2-container--default .select2-selection--multiple').css
						'background': '#F2F2F2'
						'border-color': '#42DCA3'
					$('.select2-container--default .select2-selection--multiple').hover \
						(-> $(this).css 'background', '#42DCA3'), \
						(-> $(this).css 'background', '#F2F2F2')
				