<!-- Internship Testimonies -->
<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-px-30' ?>">
	<div class="">
		<div class="text-center g-mb-50">
			<h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?= $copy->internship_testimony->title ?></h2>
			<hr class="g-width-120 g-mt-20 g-mb-0 g-brd-2 w4c-brd-blue">
			<div class="mt-2 mb-4 g-px-10 text-center"><?= $copy->internship_testimony->subtitle ?></div>
		</div>
		<div class="g-bg-gray-light-v5">
			<div class="container g-py-30 g-px-reset">
				<div id="internship-testimoni-carousel" class="row align-height-list">
					<?php
					foreach ($copy->internship_testimony->items as $item) :
					?>
						<div class="col-12 align-height-item g-color-black g-rounded-10 g-transition-0_3 <?= $this->agent->is_mobile() ? '' : ' g-px-150' ?> g-py-10">
							<div class=" row no-gutters align-item-center">
								<div class="col-12">
									<div class="g-font-size-36 w4c-color-blue float-left g-line-height-0" style="padding-top: 14px;padding-right: 10px;">" </div>
									<div class="g-pl-20 g-font-size-<?= $this->agent->is_mobile() ? '16' : '20' ?>  g-color-black-opacity-0_8 g-font-style-italic g-line-height-1_3">
										<?= $item->message ?>
										<div class="g-font-size-36 w4c-color-blue g-bg-transparent" style="display: inline;line-height: 0.5;margin-bottom: -10px"> "</div>
										<br><br><?= $item->name ?>
									</div>
								</div>
							</div>
						</div>
					<?php
					endforeach;
					?>
				</div>
			</div>
		</div>
		<script>
			$(window).ready(function() {
				var element_id = '#internship-testimoni-carousel';
				$(element_id).owlCarousel({
					loop: true,
					margin: 0,
					dots: true,
					nav: true,
					autoplay: false,
					autoplayTimeout: 1500,
					autoplayHoverPause: true,
					responsive: {
						0: {
							items: 1
						},
						600: {
							items: 1
						},
						1000: {
							items: 1
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
				$(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
				var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
				// console.log(screen_display);
				var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '94' ?>) / 100) / 2;
				//console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
				$(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 180px;width: 94%;right: ' + margin_side + 'px;')
			});
		</script>
	</div>
</section>
<!-- End Internship Testimonies -->