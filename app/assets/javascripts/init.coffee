window.App ||= {}

App.init = ->
				$("select").select2()
				

$(document).on "turbolinks:load", ->
  App.init()
