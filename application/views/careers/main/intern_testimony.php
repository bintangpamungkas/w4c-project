<!-- Internship Testimonies -->
<?php if($this->agent->is_mobile()):?>
	<section class="g-bg-white">
	<div class="">
		<div class="text-center g-mb-20 container">
			<h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?= $copy->internship_testimony->title ?></h2>
			<hr class="g-width-70 g-mt-20 g-mb-0 g-brd-2 w4c-brd-blue">
			<div class="mt-2 mb-4 g-px-10 text-center"><?= $copy->internship_testimony->subtitle ?></div>
		</div>
		<div class="g-bg-gray-light-v5">
			<div class="container g-py-30 g-px-reset">
				<div id="internship-testimoni-carousel" class="align-height-list">
					<?php
					foreach ($copy->internship_testimony->items as $item) :
					?>
					<div class="g-bg-white g-rounded-10 align-height-item g-px-30 g-py-20 g-my-20 g-mx-15 box-shadow-down text-center">
						<img class="rounded-circle g-mb-20" src="<?= get_image(DIR_BG . 'career/intern/' . $item->image) ?>" alt="Photo <?= $item->name ?>" style="height:90px;width:90px;object-fit:cover;margin-left: auto; margin-right: auto;">
						<div class="g-color-black g-font-weight-600 g-font-size-18 g-my-20 g-line-height-1_1 g-mb-10"><?= $item->name ?></div>
						<div class="g-color-black-opacity-0_8 g-line-height-1_4"><?= $item->message ?></div>
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
				// // console.log(screen_display);
				// var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '94' ?>) / 100) / 2;
				// //console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
				// $(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 180px;width: 94%;right: ' + margin_side + 'px;')
				var add_side = 20
				var height=$(element_id + ' .owl-stage-outer').height()/2;
				var width=$(element_id + ' .owl-stage-outer').width()+add_side;
				$(element_id + ' .owl-nav').attr('style', 'position:absolute;left:-'+add_side*2+'px;margin-top:'+height+'px;width: '+ (width+add_side) +'px;')
				$(element_id + ' .owl-dots').attr('style', 'margin-top:50px;')
			});
		</script>
	</div>
</section>
<?php else: ?>
	<section class="g-bg-white">
	<div class="">
		<div class="text-center g-mb-20 container">
			<h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?= $copy->internship_testimony->title ?></h2>
			<hr class="g-width-70 g-mt-20 g-mb-0 g-brd-2 w4c-brd-blue">
			<div class="mt-2 mb-4 g-px-10 text-center"><?= $copy->internship_testimony->subtitle ?></div>
		</div>
		<div class="g-bg-gray-light-v5">
			<div class="container g-py-30 g-px-reset">
				<div id="internship-testimoni-carousel" class="row align-height-list">
					<?php
					foreach ($copy->internship_testimony->items as $item) :
					?>
					<div class="col g-bg-white g-rounded-10 align-height-item g-px-30 g-py-20 g-my-20 g-mx-15 box-shadow-down text-center">
						<img class="rounded-circle g-mb-20" src="<?= get_image(DIR_BG . 'career/intern/' . $item->image) ?>" alt="Photo <?= $item->name ?>" style="height:90px;width:90px;object-fit:cover;margin-left: auto; margin-right: auto;">
						<div class="g-color-black g-font-weight-600 g-font-size-18 g-my-20 g-line-height-1_1 g-mb-10"><?= $item->name ?></div>
						<div class="g-color-black-opacity-0_8 g-line-height-1_4"><?= $item->message ?></div>
					</div>
					<?php
					endforeach;
					?>
				</div>
			</div>
		</div>
	</div>
</section>
<?php endif; ?>

<!-- End Internship Testimonies -->