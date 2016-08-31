###
// MOCAP.WEB - Werbprojekt und Interaktive Systeme
// Supervisors: Prof. Gruenvogel, Lo Iacono
// TH Koeln SS 2016
// Author: Lukas Ungerland
###
window.App ||= {}

App.init = ->
				$("select").select2()
				

$(document).on "turbolinks:load", ->
  App.init()
