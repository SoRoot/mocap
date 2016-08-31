// MOCAP.WEB - Werbprojekt und Interaktive Systeme
// Supervisors: Prof. Gruenvogel, Lo Iacono
// TH Koeln SS 2016
// Author: Lukas Ungerland

$(document).on( 'page:change', function() {
	$('.mocap-textbox').one('focus', function() {
		$(this).toggleClass('mocap-textbox-click');
	});
	$('.inputfile-wrong').one('click', function() {
		$(this).toggleClass('inputfile-click');
	});
});
