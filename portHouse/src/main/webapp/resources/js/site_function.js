$(document).ready(function() {
	// 메뉴 버튼
	jQuery(".menu-btn-toggle").click(function(){
		$("body").toggleClass("nav-on");
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
