//
// MOCAP.WEB - Werbprojekt und Interaktive Systeme
// Supervisors: Prof. Gruenvogel, Lo Iacono
// TH Koeln SS 2016
// Author: Anja Bergmann
//

$("a.page-scroll").click(function() {


	var $anchor = $(this);
	var pathname = window.location.pathname;

	if (pathname == "/"){
	$('html, body').stop().animate({
		scrollTop: $($anchor.attr('href')).offset().top
	}, 1500, 'easeInOutExpo');
	event.preventDefault();

	} else {
		window.location.replace( "/" + $anchor.attr('href'));
	}
});
