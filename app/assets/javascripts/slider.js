$(document).on( 'page:change', function() {
	$('#slider').slider({
		range:true,
		min: 0,
		max: 500,
		values: [ 35, 200],
		slide: function( event, ui ) {
			$('#start').val(ui.values[ 0 ] + "s"),
			$('#end').val(ui.values[ 1 ] + "s");
			}
	});
	$('#start').val($('#slider').slider('values', 0));
	$('#end').val($('#slider').slider('values', 1));
});

