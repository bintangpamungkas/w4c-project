
		<!-- Mockup Block -->
		<div id="<?= $section_slug ?>" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>
		<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-py-70' ?>">
			<div class="container">
				<div class="text-center g-mb-50">
					<h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?= $section->section_title ?></h2>
					<hr class="g-width-70 g-mt-10 g-mb-0 g-brd-2 g-brd-blue">
					<div
						class="mt-2 mb-4"> <?= $section->section_subtitle ?></div>

				
				<?php
					if ($this->agent->is_mobile()) {
					if (count($section->section_items) > 1) {
					foreach ($flow_category as $key => $category) {
						?>
						<div id="<?= $category ?>" class="row justify-content-center my_tab_content">
							<div class="col-md-11 col-12 align-self-end">
								<div id="waste-flow-carousel<?= $key ?>" class="col-md-12 owl-theme" style="margin: 0 0 30px 0!important;">
									<?php
										$i = 0;
										foreach ($flows as $flow) :
											if ($flow->flow_category == $category):
												?>
												<div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-40 g-py-10">
													<div class="g-mx-auto g-mx-30" style="">
														<img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= get_image(DIR_ICON . 'flow/' . $flow->flow_icon) ?>" alt="Flow <?= $flow->flow_name ?>"
														     style="width: 100%">
													</div>
													<div class="g-pa-15">
														<h2 class="h5 g-color-black g-font-weight-300 mb-4 g-font-size-15" style="margin-bottom: 5px!important;">
															<?= $flow->flow_name ?>
														</h2>
													</div>
												</div>
												<?php
												$i++;
											endif;
										endforeach;
									?>
								</div>
							</div>
						</div>

						<script>
							$(window).ready(function () {
								var element_id = '#waste-flow-carousel<?=$key?>';
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
								$(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 318px;width: 74%;right: ' + margin_side + 'px;')
								//Hide last item after carousel init because if hide first courosel not working
								<?=$key != 0 ? '$("#' . $category . '").addClass("d-none")' : ''?>
							});
						</script>

					<?php
						} // foreach ($flow_category as $category)

						} else { //if ($count_category > 1)
					?>
						<div class="row justify-content-center">
							<div class="col-md-11 col-12">
								<div id="waste-flow-carousel" class="col-md-12 owl-theme" style="margin: 0 0 30px 0!important;">
									<?php
										$i = 0;
										foreach ($section->section_items as $flow) :
											?>
											<div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-40 g-py-10">
												<div class="g-mx-auto g-mx-30" style="">
													<img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= get_image(DIR_ICON . 'flow/' . $flow->item_image) ?>" alt="Flow <?= $flow->item_title ?>" style="width: 100%">
												</div>
												<div class="g-pa-15">
													<h2 class="h5 g-color-black g-font-weight-300 mb-4 g-font-size-15" style="margin-bottom: 5px!important;">
														<?= $flow->item_title ?>
													</h2>
												</div>
											</div>
											<?php
											$i++;
										endforeach;
									?>
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
								$(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 318px;width: 74%;right: ' + margin_side + 'px;')
							});
						</script>
					<?php
						} //if ($count_category > 1)
						} else { // DESKTOP
						if (count($section->section_items) > 1) {
						foreach ($section->section_items as $key => $category) {
					?>
						<div id="<?= $category->item_title ?>" class="row justify-content-center my_tab_content <?= $key == 0 ? '' : 'd-none' ?>">
							<?php foreach ($section->section_items as $flow): ?>
									<div class="col-md-4">
										<article class="g-transition-0_3">
											<div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 30px 0 0 0!important;">
												<img class="img-fluid u-block-hover__main--zoom-v1 mb-3 animated zoomIn" src="<?= base_url(DIR_ICON . 'flow/' . $flow->item_image) ?>" alt="Image Description"
												     style="width: 40%">
												<div class="g-pa-15">
													<h2 class="h5 g-color-black g-font-weight-600 mb-4 g-font-size-15" style="margin-bottom: 5px!important;">
														<?= $flow->item_title ?>
													</h2>
												</div>
											</div>
										</article>
									</div>
							<?php endforeach; ?>
						</div>
						<?php
					} // foreach ($flow_category as $category)
						?>
						<?php
					} else { //if ($count_category > 1)
						?>
						<div class="row justify-content-center">
							<?php foreach ($section->section_items as $flow): ?>
								<div class="col-md-4">
									<article class="g-transition-0_3">
										<div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 30px 0 0 0!important;">
											<img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= base_url(DIR_ICON . 'flow/' . $flow->item_image) ?>" alt="Image Description" style="width: 40%">
											<div class="g-pa-15">
												<h2 class="h5 g-color-black g-font-weight-600 mb-4 g-font-size-15" style="margin-bottom: 5px!important;">
													<?= $flow->item_title ?>
												</h2>
											</div>
										</div>
									</article>
								</div>
							<?php endforeach; ?>
						</div>
						<?php
					} //if ($count_category > 1)
					} //end desktop
				?>
			</div>
		</section>
		<!-- End Mockup Block -->
	