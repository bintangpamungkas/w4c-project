<!-- Our Job Category -->
<style>
.owl-controls .owl-dots .owl-dot.active span {
	background-color: #17A2B8!important; 
}
</style>
<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-py-40' : 'g-bg-white g-pb-50 g-pt-80' ?>">
	<h2 class="g-font-asap g-color-black text-uppercase text-center g-font-weight-600 g-font-size-<?= $this->agent->is_mobile() ? '24' : '35 g-mb-10' ?>"><?= $copy->internship_category->title ?></h2>
	<hr class="g-width-70 g-mt-20 g-mb-0 g-brd-2 w4c-brd-blue">
	<div class="mt-2 mb-4 g-px-10 text-center"><?= $copy->internship_category->subtitle ?></div>

	<?php if ($this->agent->is_mobile()) : ?>
		<div class="g-mt-50">
			<div id="job-carousel" class="align-height-list">
				<!-- Items Iteration -->
				<?php foreach ($internship_category as $key => $category) : ?>
					<?php if ($category->status == 1) : ?>
						<!-- Job Item -->
						<div class="g-mx-10 g-rounded-5" >
							<div class="u-bg-overlay g-bg-blue-opacity-0_8--after g-bg-img-hero " style="background-image: url(<?= get_image(DIR_BG . 'internship/' . $category->image) ?>);object-fit:cover">
								<div class="container u-bg-overlay__inner g-color-white align-height-item row align-items-end">
									<div class="col-12 g-px-13 g-mb-20">
										<div class="">
											<div class="">
												<div class=" g-pa-25">
													<div class="g-color-blue g-font-size-30 g-pa-15 g-bg-white g-rounded-50" style="width: 60px;height:60px">
														<img src="<?= get_image(DIR_ICON . 'department/' . $category->icon) ?>" height="30px" width="30px" />
													</div>
													<div class="d-block g-color-white g-font-weight-600 g-font-size-24 g-mt-20 g-line-height-1_2 g-bg-transparent"><?= $category->name ?></div>
													<p class="g-color-white-opacity-0_7 mb-0"></p>
												</div>
												<div class="g-pl-25">
													<div class="d-inline-block g-color-white g-font-size-16 g-line-height-1_2">
														<?= $category->description
														?>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End Job Item -->
					<?php endif; ?>
				<?php endforeach; ?>
				<!-- End Items Iteration -->
			</div>
		</div>

		<script>
			$(window).ready(function() {
				var element_id = '#job-carousel';
				$(element_id).owlCarousel({
					loop: true,
					margin: 0,
					dots: true,
					nav: false,
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
					navText: ['<i class="<?= $this->agent->is_mobile() ? '' : ' fa fa-angle-left g-color-w4c-blue-v1 ' ?>" aria-hidden="true" style="transform: scale(<?= $this->agent->is_mobile() ? '  2 ' : ' 4 ' ?>)"></i>', '<i class="<?= $this->agent->is_mobile() ? '' : ' fa fa-angle-right g-color-w4c-blue-v1 ' ?>" aria-hidden="true" style="transform: scale(<?= $this->agent->is_mobile() ? '  2 ' : '  4 ' ?>)"></i>'],
				});
				//$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
				$(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
				// var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
				// console.log(screen_display);
				// var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '60' : '98.5' ?>) / 100) / 2;
				//console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
				// $(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 410px;width: 70%;right: ' + margin_side + 'px;')
				//Hide last item after carousel init because if hide first courosel not working

			});
		</script>

	<?php else : // DESKTOP  
	?>
	<div class="container ">
        
		<div class="row g-mb-0  g-mt-50">
            <div id="internship-carousel">
			<!-- Job Item Iteration -->
			<?php foreach ($internship_category as $key => $category) : ?>
				<?php if ($category->status == 1) : ?>
					<div class="col g-px-13 g-mb-30" >
						<div class="u-block-hover">
							<div class="g-bg-cover g-bg-black-opacity-0_6--after g-bg-blue--hover-parent--after">
								<img class="u-block-hover__main--mover-down" src="<?= get_image(DIR_BG . 'internship/' . $category->image) ?>" alt="Image Description" style="height:360px;object-fit:cover">
							</div>
							<div class="u-block-hover__additional--partially-slide-up g-z-index-1">
								<div class="u-block-hover__visible g-px-25 g-pt-25">
									<div class="g-color-blue g-font-size-30 g-pa-15 g-bg-white g-rounded-50" style="width: 60px;height:60px">
										<img src="<?= get_image(DIR_ICON . 'department/' . $category->icon) ?>" height="30px" width="30px" />
									</div>
									<span class="d-block g-color-white g-font-weight-600 g-font-size-24 g-mb-25 g-mt-30 g-line-height-1_1"><?= $category->name ?></span>
									<p class="g-color-white-opacity-0_7 mb-0"></p>
								</div>
								<div class="g-pl-25">
									<div class="d-inline-block g-color-white g-font-size-18 g-mb-20  g-line-height-1_2 mr-5">
										<?= $category->description ?>
									</div>
								</div>
							</div>
						</div>
					</div>
				<?php endif; ?>
			<?php endforeach; ?>
			<!-- End Job Item Iteration-->
            </div>
		</div>
	</div>

	<?php endif; //end desktop	
	?>
</section>
<script>
			$(window).ready(function() {
				var element_id = '#internship-carousel';
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
<!-- End Job Category -->