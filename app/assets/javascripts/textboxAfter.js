$(document).on( 'page:change', function() {
	$('.mocap-textbox').one('focus', function() {
		$(this).toggleClass('mocap-textbox-click');
	});
});
