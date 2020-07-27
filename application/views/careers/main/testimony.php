<!-- Testimony -->
<section class="g-bg-gray-light-v4 <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-bg-white g-pb-50 g-pt-40' ?>">
	<div class="<?= $this->agent->is_mobile() ? '' : 'container' ?>">
		<div class="row justify-content-center my_tab_content no-gutters">
			<div class="col-md-12">
				<h2 class="g-font-asap g-color-black text-uppercase g-font-weight-600 text-center g-font-size-<?= $this->agent->is_mobile() ? '24' : '35 g-mb-10' ?>"><?= $copy->testimony->title ?></h2>
				<hr class="g-width-120 g-mt-20 g-mb-0 g-brd-2 w4c-brd-blue">
				<?php if (!$this->agent->is_mobile()) : ?>
					<div class="mt-2 mb-4 g-px-10 text-center"><?= $copy->testimony->subtitle ?></div>
				<?php endif; ?>
			</div>
			<div id="testimony-carousel" class="col-12 align-self-end align-height-list">
				<!-- Items Iteration -->
				<?php foreach ($copy->testimony->items as $index => $item) : ?>
					<div class="g-bg-white g-rounded-10 align-height-item g-px-30 g-py-20 g-my-20 g-mx-15 box-shadow-down text-center">
						<img class="rounded-circle" src="<?= base_url(DIR_BG . 'about/team/' . $item->image) ?>" alt="Photo <?= $item->name ?>" style="height:90px;width:90px;object-fit:cover;margin-left: auto; margin-right: auto;">
						<div class="g-color-black g-font-weight-600 g-font-size-18"><?= $item->name ?></div>
						<div class="g-color-info g-font-size-16 g-mb-20"><?= $item->position ?></div>
						<div class="g-color-black-opacity-0_8g-font-size-18 g-line-height-1_4"><?= $item->message ?></div>
					</div>
				<?php endforeach; ?>
				<!-- End Items Iteration -->
			</div>
		</div>

		<script>
			$(window).ready(function() {
				var element_id = '#testimony-carousel';
				$(element_id).owlCarousel({
					loop: true,
					margin: 0,
					dots: true,
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
							items: 3
						}
					},
					<?php if (!$this->agent->is_mobile()) : ?>
						navText: [
							'<i class="fa fa-angle-left g-color-gray-light-v1 nav-arrow-left" aria-hidden="true" style="transform: scale(2)"></i>',
							'<i class="fa fa-angle-right g-color-gray-light-v1 nav-arrow-right" aria-hidden="true" style="transform: scale(2)"></i>'
						]
					<?php else : ?>
						navText: ['',''
							
							]
					<?php endif; ?>
				});

				//$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
				// $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
				// var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
				// console.log(screen_display);
				// var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '70' ?>) / 100) / 2;
				//console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
				var add_side = 20
				var height=$(element_id + ' .owl-stage-outer').height()/2;
				var width=$(element_id + ' .owl-stage-outer').width()+add_side;
				$(element_id + ' .owl-nav').attr('style', 'position:absolute;left:-'+add_side*2+'px;margin-top:'+height+'px;width: '+ (width+add_side) +'px;')
				$(element_id + ' .owl-dots').attr('style', 'margin-top:50px;')

			});
		</script>
	</div>
</section>
<!-- End Testimony -->