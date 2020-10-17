<?php
if (($this->agent->is_mobile() && count($section->section_items) > 1) || count($section->section_items) > 2) {
	$carousel = true;
} else {
	$carousel = false;
} ?>

<!-- Testimony -->
<section id="<?= $section_slug ?>" class="g-bg-secondary <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-pb-50 g-pt-80' ?>">
	<div class="<?= $this->agent->is_mobile() ? '' : 'container' ?>">
		<div class="row justify-content-center my_tab_content no-gutters">
			<div class="col-md-12">
				<h2 class="g-font-asap g-color-black text-uppercase g-font-weight-600 text-center g-font-size-<?= $this->agent->is_mobile() ? '24' : '35 g-mb-10' ?>"><?= $section->section_title ?></h2>
				<hr class="g-width-70 g-mt-20 g-mb-0 g-brd-2 w4c-brd-blue">
				<div class="mt-2 mb-4 g-px-10 text-center"><?= $section->section_subtitle ?></div>
			</div>
			<div id="<?= $section_slug ?>-carousel" class="col-12 align-self-end align-height-list row no-gutters">
				<!-- Items Iteration -->
				<?php foreach ($section->section_items as $index => $item) : ?>
					<div class="<?= $carousel == true ? '' : 'col-md-6' ?>">
						<?php if ($this->agent->is_mobile()) : ?>
							<div class="g-bg-white g-rounded-10 align-height-item g-px-30 g-py-35 g-my-20 g-mx-15 box-shadow-down text-center">
								<img class="rounded-circle g-mb-20" src="<?= base_url(DIR_SERVICE . '/' . $service_id . '/' . $item->item_image) ?>" alt="Photo <?= $item->item_title ?>" style="height:90px;width:90px;object-fit:cover;margin-left: auto; margin-right: auto;">
								<div class="g-color-info g-font-size-18 g-line-height-1_2"><?= $item->item_title ?></div>
								<div class="g-font-size-12 g-mb-20 g-line-height-1_2"><?= $item->item_subtitle ?></div>
								<div class="g-font-size-12 g-line-height-1_4"><?= $item->item_message ?></div>
							</div>
						<?php else : ?>
							<div class="g-bg-white g-rounded-10 align-height-item g-px-30 g-py-20 g-my-20 g-mx-15 box-shadow-down row">
								<div class="col-auto">
									<img class="rounded-circle g-mb-20" src="<?= get_image(DIR_SERVICE . '/' . $service_id . '/' . $item->item_image) ?>" alt="Photo <?= $item->item_title ?>" style="height:90px;width:90px;object-fit:cover;margin-left: auto; margin-right: auto;">
								</div>
								<div class="col">
									<div class="g-font-size-14 g-line-height-1_4 g-font-style-italic g-font-weight-400 g-pt-5 g-pb-15">"<?= $item->item_message ?>"</div>
									<div class="g-color-info g-font-size-18 g-font-weight-600"><?= $item->item_title ?></div>
									<div class="g-font-size-12 g-color-black-opacity-0_6"><?= $item->item_subtitle ?></div>
								</div>
							</div>
						<?php endif; ?>
					</div>
				<?php endforeach; ?>
				<!-- End Items Iteration -->
			</div>
		</div>
		<?php if ($carousel == true) : ?>
			<script>
				$(window).ready(function() {
					var element_id = '#<?= $section_slug ?>-carousel';
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
								items: 2
							}
						},
						<?php if (!$this->agent->is_mobile()) : ?>
							navText: [
								'<i class="fa fa-angle-left g-color-gray-light-v1 nav-arrow-left" aria-hidden="true" style="transform: scale(2)"></i>',
								'<i class="fa fa-angle-right g-color-gray-light-v1 nav-arrow-right" aria-hidden="true" style="transform: scale(2)"></i>'
							]
						<?php else : ?>
							navText: [
								'<i class="fa fa-angle-left g-color-gray-light-v1 nav-arrow-left" aria-hidden="true" style="transform: scale(2)"></i>',
								'<i class="fa fa-angle-right g-color-gray-light-v1 nav-arrow-right" aria-hidden="true" style="transform: scale(2)"></i>'
							]

						<?php endif; ?>
					});

					// var add_side = 20
					// var height = $(element_id + ' .owl-stage-outer').height() / 2;
					// var width = $(element_id + ' .owl-stage-outer').width() + add_side;

					// $(element_id + ' .owl-nav').attr('style', 'position:absolute;left:-' + add_side * 2 + 'px;margin-top:' + height + 'px;width: ' + (width + add_side) + 'px;')
					// $(element_id + ' .owl-dots').attr('style', 'margin-top:50px;')
                //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
                $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
                var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '98.5' ?>) / 100) / 2;
                <?php
                if ($this->agent->is_mobile()) {
                  echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 170px;margin-top: 175px;width: 74%;right: '+margin_side+'px;')";
                } else {
                  echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 60px;width: 101.5%;right: '+margin_side+'px;')";
                }
                ?>
				});
			</script>
		<?php endif; ?>
	</div>
</section>
<!-- End Testimony -->