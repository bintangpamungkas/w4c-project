</main>

<!-- JS Global Compulsory -->
<script src="<?= base_url(DIR_VENDOR . 'jquery.easing/js/jquery.easing.js') ?>"></script>
<script src="<?= base_url(DIR_VENDOR . 'popper.min.js') ?>"></script>
<script src="<?= base_url(DIR_VENDOR . 'bootstrap/bootstrap.min.js') ?>"></script>
<script src="<?= base_url(DIR_VENDOR . 'bootstrap/offcanvas.js') ?>"></script>
<script src="<?= base_url(DIR_VENDOR . 'hs-megamenu/src/hs.megamenu.js') ?>"></script>

<!-- JS Implementing Plugins -->
<script src="<?= base_url(DIR_VENDOR . 'dzsparallaxer/dzsparallaxer.js') ?>"></script>
<script src="<?= base_url(DIR_VENDOR . 'dzsparallaxer/dzsscroller/scroller.js') ?>"></script>
<script src="<?= base_url(DIR_VENDOR . 'dzsparallaxer/advancedscroller/plugin.js') ?>"></script>
<script src="<?= base_url(DIR_VENDOR . 'masonry/dist/masonry.pkgd.min.js') ?>"></script>
<script src="<?= base_url(DIR_VENDOR . 'imagesloaded/imagesloaded.pkgd.min.js') ?>"></script>
<script src="<?= base_url(DIR_VENDOR . 'malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js') ?>"></script>
<script src="<?= base_url(DIR_VENDOR . 'slick-carousel/slick/slick.js') ?>"></script>
<script src="<?= base_url(DIR_VENDOR . 'fancybox/jquery.fancybox.min.js') ?>"></script>
<script src="<?= base_url(DIR_VENDOR . 'appear.js') ?>"></script>

<!-- JS Unify -->
<script src="<?= base_url(DIR_JS . 'hs.core.js') ?>"></script>

<script src="<?= base_url(DIR_JS . 'components/hs.header.js') ?>"></script>
<script src="<?= base_url(DIR_JS . 'helpers/hs.hamburgers.js') ?>"></script>
<script src="<?= base_url(DIR_JS . 'components/hs.dropdown.js') ?>"></script>
<script src="<?= base_url(DIR_JS . 'components/hs.scrollbar.js') ?>"></script>
<script src="<?= base_url(DIR_JS . 'components/hs.popup.js') ?>"></script>
<script src="<?= base_url(DIR_JS . 'components/hs.carousel.js') ?>"></script>
<script src="<?= base_url(DIR_JS . 'components/hs.counter.js') ?>"></script>
<script src="<?= base_url(DIR_JS . 'components/hs.go-to.js') ?>"></script>
<!-- JS Custom -->
<script src="<?= base_url(DIR_JS . 'custom.js') ?>"></script>
<script src="<?= base_url(DIR_JS . 'click-scroll.js') ?>"></script>

<script src="<?= base_url(DIR_VENDOR . 'custombox/custombox.min.js') ?>"></script>
<script src="<?= base_url(DIR_JS . 'components/hs.modal-window.js') ?>"></script>

<script src="<?= base_url(DIR_JS . 'helpers/hs.not-empty-state.js') ?>"></script>

<!-- JS Plugins Init. -->
<script>
	$(document).on('ready', function () {
		// initialization of forms
		$.HSCore.helpers.HSNotEmptyState.init();
	});
</script>

<!-- JS Plugins Init. -->
<script>

	$(document).ready(function () {
		// initialization of popups
		$.HSCore.components.HSPopup.init('.js-fancybox');
		$.HSCore.components.HSCarousel.init('.js-carousel');

		$('#carousel2').slick('setOption', 'dots', true, true);
		$('#carousel2').slick('setOption', 'dotsClass', 'js-pagination u-carousel-indicators-v30 g-pos-abs g-bottom-0', true);
		$('#carousel2').slick('setOption', 'customPaging', function (slider, i) {
			var title = $(slider.$slides[i]).data('title');

			return '<i class="u-dot-line-v1 g-brd-gray-light-v2--before g-brd-gray-light-v2--after g-mb-15--sm"><span class="u-dot-line-v1__inner g-bg-white g-bg-primary--before g-brd-gray-light-v2 g-brd-primary--active g-transition--ease-in g-transition-0_2"></span></i><span class="g-hidden-sm-down g-color-black g-font-size-15">' + title + '</span>';
		}, true);
	});

	$(document).on('ready', function () {

		// initialization of HSMegaMenu component
		$('#dropdown-megamenu').HSMegaMenu({
			event: 'hover',
			pageContainer: $('.container'),
			breakpoint: 767
		});

		// initialization of HSMegaMenu component
		$('.js-mega-menu').HSMegaMenu();

		// initialization of go to
		$.HSCore.components.HSGoTo.init('.js-go-to');

		$('#we-provide').slick('setOption', 'responsive', [{
			breakpoint: 992,
			settings: {
				slidesToShow: 2
			}
		}, {
			breakpoint: 576,
			settings: {
				slidesToShow: 1
			}
		}], true);

		// initialization of HSDropdown component
		$.HSCore.components.HSDropdown.init($('[data-dropdown-target]'), {
			afterOpen: function () {
				$(this).find('input[type="search"]').focus();
			}
		});

		// initialization of HSScrollBar component
		$.HSCore.components.HSScrollBar.init($('.js-scrollbar'));

		// initialization of masonry
		$('.masonry-grid').imagesLoaded().then(function () {
			$('.masonry-grid').masonry({
				columnWidth: '.masonry-grid-sizer',
				itemSelector: '.masonry-grid-item',
				percentPosition: true
			});
		});

	});

	$(window).on('load', function () {
		// initialization of header
		$.HSCore.components.HSHeader.init($('#js-header'));
		$.HSCore.components.HSHeader.init($('#js-header2'));
		$.HSCore.helpers.HSHamburgers.init('.hamburger');
	});
</script>

<script src="<?= base_url(DIR_JS . 'helpers/hs.focus-state.js') ?>"></script>

<!-- JS Plugins Init. -->
<script>
	$(document).on('ready', function () {
		// initialization of forms
		$.HSCore.helpers.HSFocusState.init();
	});
</script>

<script>
	$(document).on('ready', function () {
		// initialization of popups
		$.HSCore.components.HSModalWindow.init('[data-modal-target]');
	});
</script>

<!-- JQUERY UI -->
<!-- jQuery UI Core -->
<script src="<?= base_url(DIR_VENDOR . 'jquery-ui/jquery-ui.core.min.js') ?>"></script>
<!-- jQuery UI Helpers -->
<script src="<?= base_url(DIR_VENDOR . 'jquery-ui/ui/widgets/menu.js') ?>"></script>
<script src="<?= base_url(DIR_VENDOR . 'jquery-ui/ui/widgets/mouse.js') ?>"></script>
<!-- jQuery UI Widgets -->
<script src="<?= base_url(DIR_VENDOR . 'jquery-ui/ui/widgets/autocomplete.js') ?>"></script>
<!-- JS Unify -->
<script src="<?= base_url(DIR_JS . 'components/hs.autocomplete.js') ?>"></script>

<!-- JS Plugins Init. -->
<script>
	$(document).on('ready', function () {
		// initialization of autocomplet
		$.HSCore.components.HSAutocomplete.init('#autocomplete2');
	});
</script>

<script src="<?= base_url(DIR_VENDOR . 'owl-carousel/owl.carousel.js') ?>"></script>

</body>

</html>
