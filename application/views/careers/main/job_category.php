<!-- Our Job Category -->
<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-py-40' : 'g-bg-white g-pb-50 g-pt-140' ?>">
	<div class="">
		<h2 class="g-font-asap g-color-black text-uppercase text-center g-font-weight-600 g-font-size-<?= $this->agent->is_mobile() ? '24' : '35 g-mb-10' ?>"><?= $copy->job_category->title ?></h2>
		<hr class="g-width-120 g-mt-20 g-mb-0 g-brd-2 w4c-brd">
		<div class="mt-2 mb-4 g-px-10 text-center"><?= $copy->job_category->subtitle ?></div>

		<?php if ($this->agent->is_mobile()) : ?>
			<div class="g-mt-50">
				<div id="job-carousel" class="align-height-list">
					<!-- Items Iteration -->
					<?php foreach ($job_category as $key => $category) : ?>
						<!-- Job Item -->
						<div class="g-mx-10 g-rounded-5" onclick="location.href='<?=site_url('career/job?category='.$category->name)?>'">
						<div class="u-bg-overlay g-bg-blue-opacity-0_8--after g-bg-img-hero " style="background-image: url(<?= get_image(DIR_BG . 'career/' . $category->image) ?>);">
							<div class="container u-bg-overlay__inner g-color-white align-height-item row align-items-end">
								<div class="col-12 g-px-13 g-mb-20">
									<div class="">
										<div class="">
											<div class=" g-pa-25">
												<i class="<?= $category->icon ?> g-color-blue g-font-size-30 g-pa-12 g-bg-white g-rounded-50"></i>
												<div class="d-block g-color-white g-font-weight-600 g-font-size-24 g-mb-25 g-mt-30 g-line-height-1_2 g-bg-transparent"><?= $category->name ?></div>
												<p class="g-color-white-opacity-0_7 mb-0"></p>
											</div>
											<div class="g-pl-25">
												<div class="d-inline-block g-color-white g-font-size-16 g-line-height-1_2">
													<?php
													foreach ($jobs as $job) {
														if ($job->category == $key)
															echo $job->title . '<br>';
													}
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
					var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
					// console.log(screen_display);
					var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '60' : '98.5' ?>) / 100) / 2;
					//console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
					// $(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 410px;width: 70%;right: ' + margin_side + 'px;')
					//Hide last item after carousel init because if hide first courosel not working

					
				});
			</script>

		<?php else : // DESKTOP 
		?>
			<div class="row g-mb-70  g-mt-50">
				<!-- Job Item Iteration -->
				<?php foreach ($job_category as $key => $category) : ?>
					<!-- Job Item -->
					<div class="col-md-3 g-px-13 g-mb-30" onclick="location.href='<?=site_url('career/job?category='.$category->name)?>'">
						<div class="u-block-hover">
							<div class="g-bg-cover g-bg-black-opacity-0_6--after g-bg-blue--hover-parent--after">
								<img class="u-block-hover__main--mover-down" src="<?= get_image(DIR_BG . 'career/' . $category->image) ?>" alt="Image Description" style="height:360px">
							</div>
							<div class="u-block-hover__additional--partially-slide-up g-z-index-1">
								<div class="u-block-hover__visible g-px-25 g-pt-25">
									<i class="<?= $category->icon ?> g-color-blue g-font-size-30 g-pa-15 g-bg-white g-rounded-50"></i>
									<span class="d-block g-color-white g-font-weight-600 g-font-size-24 g-mb-25 g-mt-30 g-line-height-1_2"><?= $category->name ?></span>
									<p class="g-color-white-opacity-0_7 mb-0"></p>
								</div>
								<div class="g-pl-25">
									<div class="d-inline-block g-color-white g-font-size-18 g-mb-20">
										<?php
										foreach ($jobs as $job) {
											if ($job->category == $key)
												echo $job->title . '<br>';
										}
										?>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- End Job Item -->
				<?php endforeach; ?>
				<!-- End Job Item Iteration-->
			</div>
	</div>
	</div>
<?php endif; //end desktop 
?>
</div>
</section>
<!-- End Job Category -->