$(document).on( 'page:change', function() {
	$('.mocap-textbox').one('focus', function() {
		$(this).toggleClass('mocap-textbox-click');
	});
	$('.inputfile-wrong').one('click', function() {
		$(this).toggleClass('inputfile-click');
	});
});
