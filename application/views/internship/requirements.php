<!-- Our Value -->
<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-10 g-pb-40' : 'g-bg-white g-pb-50 g-pt-10' ?>">
	<div class="container">
		<h2 class="g-font-asap g-color-black text-uppercase text-center g-font-weight-600 g-font-size-<?= $this->agent->is_mobile() ? '24' : '35 g-mb-10' ?>"><?= $copy->requirements->title ?></h2>
		<hr class="g-width-70 g-my-20 g-brd-2 w4c-brd-blue">
		<?php if ($this->agent->is_mobile()) : ?>
			<div class="row justify-content-left my_tab_content g-mt-10">
				<div class="col-md-12 col-12 align-items-left">
					<!-- <div id="waste-flow-carousel" class="col-md-12 owl-theme" style="margin: 0 0 30px 0!important;"> -->
						<!-- Items Iteration -->
						<?php foreach ($copy->requirements->items as $index => $item) : ?>
							<div class="g-color-black g-bg-white--hover text-left g-rounded-10 g-transition-0_3 g-px-40 g-py-10">
								<div class="row">
									<div class="col-4 d-inline">
										<img src="<?= get_image(DIR_ICON . 'requirements/' . $item->image) ?>" alt="<?= $copy->requirements->title . ' ' . $item->title ?>" >
									</div>
									<div class="col-8 d-inline">
										<div class="g-color-black pt-1 g-font-weight-300 mb-4 g-font-size-15" style="margin-bottom: 5px!important;">
											<?= $item->title ?>
										</div>
									<!-- <div class="g-pa-15 "> -->
									<!-- </div> -->
									</div>
								</div>
							</div>
						<?php endforeach; ?>
						<!-- End Items Iteration -->
					<!-- </div> -->
				</div>
			</div>

			<script>
				$(window).ready(function() {
					var element_id = '#waste-flow-carousel';
					$(element_id).owlCarousel({
						loop: true,
						margin: 0,
						dots: true,
						nav: true,
						autoplay: true,
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
								items: 2
							}
						},
						navText: [
							'<i class="<?= $this->agent->is_mobile() ? ' fa fa-angle-left g-color-gray-light-v1 nav-arrow-left ' : ' fa fa-angle-left g-color-w4c-blue-v1 ' ?>" aria-hidden="true" style="transform: scale(<?= $this->agent->is_mobile() ? '  2 ' : ' 4 ' ?>)"></i>', '<i class="<?= $this->agent->is_mobile() ? 'fa fa-angle-right g-color-gray-light-v1 nav-arrow-right ' : ' fa fa-angle-right g-color-w4c-blue-v1 ' ?>" aria-hidden="true" style="transform: scale(<?= $this->agent->is_mobile() ? '  2 ' : '  4 ' ?>)"></i>'
						]
					});

					//$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
					$(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
					var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
					// console.log(screen_display);
					var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '98.5' ?>) / 100) / 2;
					//console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
					$(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 260px;width: 74%;right: ' + margin_side + 'px;')
					//Hide last item after carousel init because if hide first courosel not working
				});
			</script>

		<?php else : // DESKTOP 
		?>
			<div class="row  my_tab_content g-mt-30">
				<?php foreach ($copy->requirements->items as $item) : ?>
					<div class="col-md-6 align-items-left">
						<article class="g-transition-0_3">
							<div class="g-color-black g-bg-white--hover text-left g-rounded-10 g-transition-0_3 g-pa-0 g-pt-20">
								<div class="row">
									<div class="col-md-2 d-inline">
										<img  src="<?= get_image(DIR_ICON . 'requirements/' . $item->image) ?>" alt="<?= $copy->requirements->title . ' ' . $item->title ?>" >
									</div>
									<div class="col-md-10 d-inline">
									<!-- <div class="g-pa-15 "> -->
										<div class="g-color-black mt-2 g-font-weight-300 mb-4 g-font-size-14" style="margin-bottom: 5px!important;">
											<?= $item->title ?>
										</div>
									<!-- </div> -->
									</div>
								</div>
							</div>
						</article>
					</div>
				<?php endforeach; ?>
			</div>
		<?php endif; //end desktop 
		?>
	</div>
</section>
<!-- End Our Value -->