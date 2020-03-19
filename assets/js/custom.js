window.onresize = function (event) {
// 	var isMobile = false; //initiate as false
// // device detection
// 	if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|ipad|iris|kindle|Android|Silk|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(navigator.userAgent)
// 		|| /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(navigator.userAgent.substr(0,4))) {
// 		isMobile = true;
// 	}
// 	if	(isMobile !== true){
// 		window.location.reload();
// 	}
	if((window.fullScreen) || (window.innerWidth == screen.width && window.innerHeight == screen.height)) {
		$('.tab-service-container').addClass('fullscreen');
		console.log('fullscreen');
	}else{
		$('.tab-service-container').removeClass('fullscreen');
		console.log('notfullscreen');
	}
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

$(document).ready(function () {
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

$(window).load(function(){
	setInterval(function(){
		$("#preloading").addClass('d-none');
	}, 4000);
});


