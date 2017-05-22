jQuery(function ($) {

    'use strict';

		// -------------------------------------------------------------
		//  Background Slider Image Source
		// -------------------------------------------------------------

		(function () {

	       //backstretch slide for main body
	        $(".home-section").backstretch([ "/assets/bg/4-8e81f34eeb90829546bb2fceab2d41243906011ad114e1854382f8f2bbe081d2.jpg","/assets/bg/2-7f0c795c3e716a1d95fb2f6554cb6989d1f3e49c70f3d192f8fa03bff9a841d5.jpg","/assets/bg/3-045e602306728e89fef863b7bd3300523c5668f7c22e7a9d940f1cb2ed200ccf.jpg"], {fade: 750,duration: 3000});
	    }());




    // -------------------------------------------------------------
    //  Owl Carousel
    // -------------------------------------------------------------

    (function() {

        $("#recent-projects").owlCarousel({
            items:4,
			responsive:{
				0:{
					items:1
				},
				600:{
					items:2
				},
				1000:{
					items:4
				}
			},
            nav:true,
            autoplay:true,
            dots:false,
            nav:true,
            navText: [
              "<i class='fa fa-angle-left'></i>",
              "<i class='fa fa-angle-right'></i>"
            ],

        });

    }());

    (function() {

        $(".testimonial-slider, #product-carousel").owlCarousel({
            items:1,
            nav:false,
            autoplay:true,
			dots:true,
        });

    }());

	(function() {

        $("#brand-carousel").owlCarousel({
            items:6,
			responsive:{
				0:{
					items:3,
				},
				600:{
					items:4,
				},
				1000:{
					items:6,
				}
			},
            nav:false,
            autoplay:true,
        });

    }());

    // -------------------------------------------------------------
    //  Cubeportfolio
    // -------------------------------------------------------------


    (function () {

        $('#projects').cubeportfolio({
            filters: '#project-menu',
            animationType: 'sequentially',
            gapVertical: 30,
            gapHorizontal: 30,

	        });

    }());


	// -------------------------------------------------------------
    // Progress Bar
    // -------------------------------------------------------------

    $('.skill').bind('inview', function(event, visible, visiblePartX, visiblePartY) {
        if (visible) {
            $.each($('div.progress-bar'),function(){
                $(this).css('width', $(this).attr('aria-valuenow')+'%');
            });
            $(this).unbind('inview');
        }
    });

    // -------------------------------------------------------------
    //  Magnific Popup
    // -------------------------------------------------------------

    (function() {

        $('.image-link').magnificPopup({
          type: 'image',
          gallery:{
            enabled:true,
          }
        });

    }());






// script end
});






