# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(->
	$('.cinema-info').readmore(
		maxHeight: 108
		embedCSS: false
		beforeToggle: (trigger, element, expanded) ->
			element = $(element)
			
			if trigger
				element.removeClass('readmore-js-section').css('margin-bottom', '30px')

			if !expanded
				element.addClass('readmore-js-section').css('margin-bottom', '5px')
	)
)

