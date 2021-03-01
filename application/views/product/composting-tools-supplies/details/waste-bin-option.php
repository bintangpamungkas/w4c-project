		<style>
			.owl-carousel {
				-ms-touch-action: none;
				touch-action: none;
			}

			@media (max-width: 320px) { 
				.icon_mobile {
					margin-left:17px;
				}
			}
				
			@media (min-width: 375px) { 
				.icon_mobile {
					margin-left:27px;
				}
			}
		</style>
		<!-- Mockup Block -->
		<div id="<?= $section_slug ?>" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>
		<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-py-70' ?>">
			<div class="container">
				<div class="text-center g-mb-50">
					<h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?= $section->section_title ?></h2>
					<hr class="g-width-70 g-mt-10 g-mb-0 g-brd-2 g-brd-blue">
					<div
						class="mt-2 mb-4"> <?= ($service->service_id == 32 ) ? get_lang('to-improve-waste-segregation, the following are the types of segregated') : '' ?></div>
				</div>

				<?php
					if ($this->agent->is_mobile()) :	?>
						<div class="row justify-content-center">
							<div class="col-md-11 col-12">
								<div id="waste-flow-carousel" class="col-md-12 owl-theme" style="margin: 0 0 30px 0!important;">
								
												<?php foreach ($section->section_items as $index => $item) : ?> <!-- description of waste bin option -->
											<div class="g-color-black text-center g-transition-0_3 g-px-20" style="background:#F5F5F5">
												<div class="g-mx-auto g-mx-30" style="height: 300px">
														<img class="img-fluid u-block-hover__main--zoom-v1 mb-3 icon_mobile" src="<?= get_image(DIR_ICON . 'flow/' . $item->item_image ) ?>" alt="Flow <?= $item->item_image ?>" style="width:187px;height:186px;">
														<h2 class="h5 g-color-black g-font-weight-600 mb-4 g-font-size-15" style="margin-bottom: 5px!important;">
															<?= $item->item_title ?>
														</h2>
														<h2 class="h5 g-font-weight-600 mb-4 g-font-size-13" style="margin-bottom: 5px!important;color:#656565">
															<?= $item->item_subtitle ?> <!-- description of waste bin option -->
														</h2>
												</div>
												
											</div>
												<?php endforeach; ?>
											
								</div>
							</div>
						</div>
						<script>
							$(window).ready(function () {
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
									navText: ['<i class="<?=$this->agent->is_mobile() ? 'fa fa-angle-left g-color-gray-light-v1 nav-arrow-left' : 'fa fa-angle-left g-color-w4c-blue-v1' ?>" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile() ? '2' : '4'?>)"></i>', '<i class="<?=$this->agent->is_mobile() ? 'fa fa-angle-right g-color-gray-light-v1 nav-arrow-right' : 'fa fa-angle-right g-color-w4c-blue-v1' ?>" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile() ? '2' : '4'?>)"></i>']
								});

								//$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
								$(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
								var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
								// console.log(screen_display);
								var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '98.5' ?>) / 100) / 2;
								//console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
								$(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 335px;width: 74%;right: ' + margin_side + 'px;')
								$(element_id + ' .owl-dots').attr('style','margin-top:42px');
							});
						</script>
						<?php
						 else  ://if ($count_category > 1)
						?>
							
						<div class="row mx-auto">
							<?php foreach ($section->section_items as $index => $item) : ?> <!-- description of waste bin option -->
									<div class="<?php if($item->item_image == 'wastebin-custom.png' || $item->item_image == 'wastebin-2in1.png') : ?>col-md-6
									<?php else  : ?>
										col-md-4
									<?php endif;?>
									">
										<article class="g-transition-0_3" style="margin-top:5px">
											<div class="g-color-black text-center g-transition-0_3 g-px-20 g-py-20" style="padding: 15px 0 0 0!important;background: #F5F5F5;margin-bottom:16px;width:102%;height:330px">
												<img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= base_url(DIR_ICON . 'flow/' . $item->item_image ) ?>" alt="Image Description" style="width:auto;height:202px">
												<div class="g-pa-15">
													<h2 class="h5 g-font-weight-600 mb-4 g-font-size-15" style="margin-bottom: 5px!important;color:#00000">
														<?= $item->item_title ?>
													</h2>
													<h2 class="h5 g-font-weight-600 mb-4 g-font-size-15" style="margin-bottom: 5px!important;color:#656565">
														<?= $item->item_subtitle ?> <!-- description of waste bin option -->
													</h2>
												</div>
											</div>
										</article>
									</div>
								<?php endforeach; ?>
						</div>
						
						</div>
						<?php endif; ?>
			</div>
		</section>
		<!-- End Mockup Block -->
	
	