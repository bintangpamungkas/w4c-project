window.onresize = function (event) {
	window.location.reload(1);
	// if((window.fullScreen) || (window.innerWidth == screen.width && window.innerHeight == screen.height)) {
	// 	$('.tab-service-container').addClass('fullscreen');
	// 	console.log('fullscreen');
	// }else{
	// 	$('.tab-service-container').removeClass('fullscreen');
	// 	console.log('notfullscreen');
	// }
};

$(window).scroll(function () {
	var nav_cta_change_color = $('#nav-cta .btn-change-color');
	if ($(window).scrollTop() > 100) {
		$('.nav-change-scroll').removeClass('g-color-white');
		$('.navbar-toggle-btn').removeClass('g-color-white');
		$('.nav-type-transparent.navbar-toggle-btn').removeClass('u-header__section--dark');
		//$('.nav-type-transparent .navbar-toggle-btn').addClass('u-header__section--light');
		if ($(window).scrollTop() > screen.height - 600) {
			nav_cta_change_color.addClass($(nav_cta_change_color).data('color-default'));
			nav_cta_change_color.removeClass($(nav_cta_change_color).data('color-change'));
			$('.toggle-hide').removeClass('fadeOut');
			$('.toggle-hide').removeClass('d-none');
		} else {
			nav_cta_change_color.removeClass($(nav_cta_change_color).data('color-default'));
			nav_cta_change_color.addClass($(nav_cta_change_color).data('color-change'));
			$('.toggle-hide').addClass('fadeOut');
			$('.toggle-hide').addClass('d-none');
		}
	} else {
		$('.nav-change-scroll').addClass('g-color-white');
		$('.navbar-toggle-btn').addClass('g-color-white');
		$('.nav-type-transparent.navbar-toggle-btn').addClass('u-header__section--dark');
		$('.nav-type-transparent.navbar-toggle-btn').removeClass('u-header__section--light');
		//$('.navbar-toggle-btn').removeClass('u-header__section--dark');
		if ($(window).scrollTop() === 0) {
			$('.hamburger').removeClass('is-active');
			if ($('.toggle-icon').hasClass('clicked')) {
				$('.toggle-icon').children().removeClass('icon-arrow-up');
				$('.toggle-icon').children().addClass('icon-arrow-down');
			}
			$('.navbar-collapse').removeClass('show');
			$('#menus').removeClass('icon-close').addClass('icon-menu');
		}
	}
});

$(document).on('click', '.navbar-toggler', function () {
	$('.text_lang').toggleClass('g-color-black');
	$('#menus').hide(function () {
		$(this).toggleClass('icon-close').fadeIn();
	});
	if ($(window).scrollTop() > 100) {
		//$('.nav-change-scroll').removeClass('g-color-white');
	} else {
		if ($(this).hasClass('navbar-toggle-btn')) {
			$(this).toggleClass('g-color-white');
		}
		//$('#menus').removeClass('icon-close');
		if ($('#navigation-block').hasClass('nav-type-transparent')) {
			$('#navigation-block').toggleClass('g-bg-white');
			$('.navbar-toggle-btn').toggleClass('u-header__section--dark');
		}
		$('.nav-change-scroll').toggleClass('g-color-white');
	}
});

$(document).on('click', '.navbar-toggler-sub', function () {
	if ($(window).scrollTop() > 100) {
		//$('.nav-change-scroll').removeClass('g-color-white');
	} else {
		if ($(this).hasClass('navbar-toggle-btn')) {
			$(this).toggleClass('g-color-white');
		}
		//$('#menus').removeClass('icon-close');
		//$('#navigation-block').toggleClass('g-bg-white');
		$('.nav-change-scroll').toggleClass('g-color-white');
	}
});

$(document).on('click', '.toggle-icon', function () {
	$(this).children().toggleClass($(this).data('toggle-icon'));
	$(this).addClass('clicked');
});

$(document).on('click', '.click-modal', function () {
	var target = $(this).attr('href');
	var content = $(this).data('content');
	var size = $(this).data('size');
	//alert((target +'.modalTitle'));
	$('.thisContent').addClass('d-none');
	$('.modalContent ' + content).removeClass('d-none');
	$(target + ' .modalTitle').html($(this).data('modal-title'));
	$(target + ' #modal-dialog').removeAttr('class').attr('class', 'modal-dialog ' + size);
});

$(document).on('click', '.block-link', function () {
	var url = $(this).data('url');
	window.location = url;
});

$(document).on('click', '.nav-toggle', function () {
	$('#menus').hide(function () {
		$(this).toggleClass('icon-close').fadeIn();
	});
	$('.navbar-collapse').removeClass('show');
});

$(window).ready(function () {
	var screen_height = window.innerHeight;
	var header_height = $('header').height();
	var content_middle_fullscreen = $('.content-middle-fullscreen');
	var set_middle = 0, divider = 2;
	var tab_service_height = $('.tab-service-container').height();
	var full_height_block_height = screen_height;
	if (tab_service_height===null){
		tab_service_height=100;
	}
	console.log(tab_service_height);
	if (screen_height <= 450) {
		full_height_block_height = screen_height + (tab_service_height);
	} else if (screen_height <= 550 && screen_height > 450) {
		full_height_block_height = screen_height + (tab_service_height/2);
	} else if (screen_height <= 600 && screen_height > 550) {
		full_height_block_height = screen_height + (tab_service_height/10);
	} else {
		full_height_block_height = screen_height;
	}

	$('.full-height-block').css({'min-height': full_height_block_height});

	$('.full-height').css({'height': screen_height});

	if (content_middle_fullscreen.hasClass('middle-center')) {
		divider = 3;
	} else if (content_middle_fullscreen.hasClass('middle-top')) {
		divider = 10;
	} else if (content_middle_fullscreen.hasClass('middle-bottom')) {
		divider = 0.4;
	}

	if (content_middle_fullscreen.hasClass('with-header')) {
		set_middle = Math.abs((screen_height - header_height) - content_middle_fullscreen.height()) / divider;

		content_middle_fullscreen.css('padding-top', set_middle + header_height);
	} else {
		set_middle = (screen_height - content_middle_fullscreen.height()) / divider;

		content_middle_fullscreen.css('padding-top', set_middle);
	}
	$('.pending-show').removeClass('d-zap').addClass('fadeIn');
	setTimeout(
		function () {
			$('#welcome-image').removeClass('image-opacity-0');
		}, 1000
	);

	// make item same height as other item
	$(".align-height-list").each(function(){
		var item = $(this).find(".align-height-item");
		var tempHeights = 0;
		$(item).each(function(){
			if (tempHeights < $(this).height()) {
				tempHeights = $(this).height();
			}
			console.log($(this).attr('class')+':'+$(this).height());
		});
		console.log('final:'+tempHeights);
		item.height(tempHeights);
	});

	// PRE LOADING HIDE
	$("#preloading").addClass('animated fadeOut');

	setInterval(function(){
		$("#preloading").addClass('d-none');
	}, 1000);

});


