$(document).ready(function() {
	//MOBILE MENU
	jQuery("header .nav .nav-icon").click(function() {
		jQuery(this).toggleClass("active");
		jQuery("header .navbar").toggleClass("active");
		jQuery(".in_header").toggleClass("active");
	});
	
	//header sticky
	var header_inner_height = jQuery(".in_header").innerHeight();

	jQuery(window).scroll(function(){
		if ( jQuery(window).scrollTop() > header_inner_height && !jQuery('header').hasClass("scroll")){
			jQuery('header').addClass("scroll");
		} else if ( jQuery(window).scrollTop() <= header_inner_height && jQuery('header').hasClass("scroll")){
			jQuery('header').removeClass("scroll");
		}
	});
});
