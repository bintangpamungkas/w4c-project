<!-- Our Culture -->
<section class="g-bg-gray-light-v5 <?= $this->agent->is_mobile() ? 'g-py-40' : 'g-bg-white g-pb-50 g-pt-140' ?>">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-3">
				<h2 class="g-font-asap g-color-black text-uppercase g-font-weight-600 g-font-size-<?= $this->agent->is_mobile() ? '24  text-center' : '35 g-mb-10' ?>"><?= $copy->culture->title ?></h2>
				<hr class="g-width-30 g-mt-20 g-mb-0 <?= $this->agent->is_mobile() ? '' : 'g-ml-0' ?> g-brd-2 w4c-brd-blue">
				<div class="mt-2 mb-4 <?= $this->agent->is_mobile() ? 'g-px-10 text-center' : '' ?>"><?= $copy->culture->subtitle ?></div>
				<?php if (!$this->agent->is_mobile()) : ?>
					<div id="custom-nav" class="owl-carousel owl-theme owl-loaded">
						<div class="owl-controls">
							<div class="owl-nav" style="width: 30%;position: absolute;top: 120px;left: 0px;margin-left: 10px;">
								<div class="owl-prev">
									<i class="fa fa-angle-left g-color-gray-light-v1 nav-arrow-left" aria-hidden="true" style="transform: scale(2)"></i>
								</div>
								<div class="owl-next">
									<i class="fa fa-angle-right g-color-gray-light-v1 nav-arrow-right" aria-hidden="true" style="transform: scale(2)"></i>
								</div>
							</div>
							<div class="owl-dots text-left g-ml-minus-5 g-mt-30">
							<?php foreach ($copy->culture->items as $index => $item) : ?>
                  <div class="owl-dot <?= $index == 0 ? 'active' : '' ?>"><span></span></div>
                <?php endforeach; ?>
							</div>
						</div>
					</div>
				<?php endif; ?>
			</div>
			<div class="col-md-9 col-12">
				<div id="culture-carousel">
					<!-- Items Iteration -->
					<?php foreach ($copy->culture->items as $index => $item) : ?>
							<img src="<?= get_image(DIR_BG . 'about/culture/' . $item->image) ?>" alt="<?= $copy->culture->title . ' ' . $item->title ?>" style="height:<?= $this->agent->is_mobile() ? '200px' : '270px' ?>; object-fit:cover">
					<?php endforeach; ?>
					<!-- End Items Iteration -->
				</div>
			</div>
		</div>

		<script>
			$(window).ready(function() {
				var element_id = '#culture-carousel';
				$(element_id).owlCarousel({
					loop: true,
					margin: 0,
					dots: <?= $this->agent->is_mobile() ? 'true' : 'false' ?>,
					nav: true,
					autoplay: false,
					autoplayTimeout: 1500,
					autoplayHoverPause: true,
					// dotsContainer: '#custom-dots',
					responsive: {
						0: {
							items: 1
						},
						600: {
							items: 1
						},
						1000: {
							items: 2
						}
					},
					navText: ['', '']
				});

				$(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
				var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
				var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '70' ?>) / 100) / 2;
				$(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 220px;width: 74%;right: ' + margin_side + 'px;')
				//Hide last item after carousel init because if hide first courosel not working

				// Custom Click DOt
				$('#custom-nav').find('.owl-dot').click(function() {
					$(element_id).trigger('to.owl.carousel', [jQuery(this).index(), 300, true]);
				});
				//Custom Navigation 
				$('#custom-nav').find('.owl-next').click(function() {
					$(element_id).trigger('next.owl.carousel');
				});
				$('#custom-nav').find('.owl-prev').click(function() {
					$(element_id).trigger('prev.owl.carousel');
				});
				$(element_id).on('changed.owl.carousel', function(e) {
          let index = e.item.index-2;
          let dots = $('#custom-nav .owl-dot');
          if (index == dots.length){
            index = 0;
          }
          dots.removeClass('active');
          dots.eq(index).addClass('active');
        });

			});
		</script>
	</div>
</section>
<!-- End Our Culture -->