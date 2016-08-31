###
// MOCAP.WEB - Werbprojekt und Interaktive Systeme
// Supervisors: Prof. Gruenvogel, Lo Iacono
// TH Koeln SS 2016
// Author: Lisa-Marie Assmann
###

$(document).on 'page:change', =>
				
				changeColor()
changeColor = -> 
				if $('select').hasClass('search-id')
					$('.select2-container--default .select2-selection--single').css
						'background': '#F2F2F2'
						'border-color': '#45B69A'
					$('.select2-container--default .select2-selection--single').hover \
						(-> $(this).css 'background', '#45B69A'), \
						(-> $(this).css 'background', '#F2F2F2')
					$('.select2-container--default .select2-selection--multiple').css
						'background': '#F2F2F2'
						'border-color': '#45B69A'
					$('.select2-container--default .select2-selection--multiple').hover \
						(-> $(this).css 'background', '#45B69A'), \
						(-> $(this).css 'background', '#F2F2F2')
				