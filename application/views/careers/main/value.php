<!-- Our Value -->
<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-100 g-pb-40' : 'g-bg-white g-pb-50 g-pt-140' ?>">
	<div class="container">
		<h2 class="g-font-asap g-color-black text-uppercase text-center g-font-weight-600 g-font-size-<?= $this->agent->is_mobile() ? '24' : '35 g-mb-10' ?>"><?= $copy->value->title ?></h2>
		<hr class="g-width-120 g-my-20 g-brd-2 w4c-brd-blue">
		<?php if ($this->agent->is_mobile()) : ?>
			<div class="row justify-content-center my_tab_content g-mt-10">
				<div class="col-md-11 col-12 align-self-end">
					<div id="waste-flow-carousel" class="col-md-12 owl-theme" style="margin: 0 0 30px 0!important;">
						<!-- Items Iteration -->
						<?php foreach ($copy->value->items as $index => $item) : ?>
							<div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-40 g-py-10">
								<div class="g-mx-auto g-mx-30">
									<img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= get_image(DIR_ICON . 'value/' . $item->image) ?>" alt="<?= $copy->value->title . ' ' . $item->title ?>" style="width: 100%">
								</div>
								<div class="g-pa-15">
									<h2 class="h5 g-color-black g-font-weight-300 mb-4 g-font-size-15" style="margin-bottom: 5px!important;">
										<?= $item->title ?>
									</h2>
								</div>
							</div>
						<?php endforeach; ?>
						<!-- End Items Iteration -->
					</div>
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
			<div class="row justify-content-center my_tab_content g-mt-30">
				<?php foreach ($copy->value->items as $item) : ?>
					<div class="col-md-4">
						<article class="g-transition-0_3">
							<div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 30px 0 0 0!important;">
								<img class="img-fluid u-block-hover__main--zoom-v1 mb-3 animated zoomIn" src="<?= get_image(DIR_ICON . 'value/' . $item->image) ?>" alt="<?= $copy->value->title . ' ' . $item->title ?>" style="width: 40%">
								<div class="g-pa-15">
									<h2 class="h5 g-color-black g-font-weight-600 mb-4 g-font-size-15" style="margin-bottom: 5px!important;">
										<?= $item->title ?>
									</h2>
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