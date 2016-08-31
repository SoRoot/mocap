###
// MOCAP.WEB - Werbprojekt und Interaktive Systeme
// Supervisors: Prof. Gruenvogel, Lo Iacono
// TH Koeln SS 2016
// Author: Lukas Ungerland
###
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
