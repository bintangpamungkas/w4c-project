<?php
	if (!empty($flows)) {
		$temp_flow_category = '';
//$rdf = false;
		foreach ($flows as $flow) {
			if ($temp_flow_category != $flow->flow_category) {
				$temp_flow_category = $flow->flow_category;
				$flow_category[] = $flow->flow_category;
			}
			if (strtolower($flow->flow_name) == 'residue co-processing with rdf technology' || strtolower($flow->flow_name) == 'pengolahan sampah residu menggunakan teknologi rdf') {
				$rdf = 'rdf';
			} else if (strtolower($flow->flow_name) == 'residue being sent to the landfill' || strtolower($flow->flow_name) == 'residu dikirim ke tpa') {
				$rdf = 'tpa';
			}
		}
		?>	
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
					<h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?= $section_name ?></h2>
					<hr class="g-width-70 g-mt-10 g-mb-0 g-brd-2 g-brd-blue">
					<div
						class="mt-2 mb-4"> <?= ($service->service_id == 32 ) ? get_lang('to-improve-waste-segregation, the following are the types of segregated') : '' ?></div>

					<!-- Services target navivation -->
					<?php
						if (count($flow_category) > 1) {
							?>
							<div class="row no-gutters mt-4">
								<?php
									foreach ($flow_category as $key => $category) {
										?>
										<div class="col text-center g-px-0 align-self-end">
											<div
												class="my_tab_2 g-cursor-pointer nav-link g-font-weight-700 g-font-size-<?= $this->agent->is_mobile() ? '14 g-py-10 g-px-5 ' : '15 g-py-12  g-px-20' ?> <?= $key == 0 ? 'tab-active' : '' ?>"
												data-tab="#<?= $category ?>"
												style="<?= $this->agent->is_mobile() ? 'min-height: 40px' : 'min-height: 50px' ?> ; color:#aaa">
												<?= get_lang($category) ?>
											</div>
										</div>
										<?php
									} // foreach ($flow_category as $category)
								?>
							</div>
							<?php
						} //if ($count_category > 1)
					?>
					<script>
						$(document).on('click', '.my_tab_2', function () {
							var tab_target = $(this).data('tab');
							$('.my_tab_2').removeClass('tab-active');
							$(this).addClass('tab-active');
							$('.my_tab_content').addClass('d-none');
							console.log($(tab_target).attr('class'));
							$(tab_target).removeClass('d-none');
						});
					</script>
					<!-- END Services target navivation -->
				</div>

				<?php
					if ($this->agent->is_mobile()) {
					if (count($flow_category) > 1) {
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
										foreach ($flows as $flow) :
											?>
											<div class="g-color-black text-center g-transition-0_3 g-px-20" style="background:#F5F5F5">
												<div class="g-mx-auto g-mx-30" style="height: 300px">
												<?php if($service->service_id == 32) : ?>
												<?php 
													$flow_description = [
														'en' => [ 
															'slug' => [
																'4 in 1 Capsule' => [
																	'Dimension: 140 x 35 x 75 cm <br>Material: Stainless Hairline'
																],
																'Tube' => [
																	'Dimension: 30 x 65 cm<br>Material: Stainless Hairline'
																],
																'3 in 1 Capsule' => [
																	'Dimension: 102 x 33 x 75 cm<br>Material: Stainless Hairline'
																],
																'Customizable' => [
																	'Dimension: Requested by client<br>Material: Requested by client'
																],
																'2 in 1 Capsule' => [
																	'Dimension: 70 x 33 x 75 cm<br>Material: Stainless Hairline'
																],
															]
														],
														'id' => [ 
															'slug' => [
																'Kapsul 4-in-1' => [
																	'Dimensi: 140 x 35 x 75 cm <br>Bahan: Stainless Hairline'
																],
																'Tabung' => [
																	'Dimensi: 30 x 65 cm<br>Bahan: Stainless Hairline'
																],
																'Kapsul 3-in-1' => [
																	'Dimensi: 102 x 33 x 75 cm<br>Bahan: Stainless Hairline'
																],
																'Custom' => [
																	'Dimensi: Sesuai Permintaan<br>Bahan: Sesuai Permintaan'
																],
																'Kapsul 2-in-1' => [
																	'Dimensi: 70 x 33 x 75 cm<br>Bahan: Stainless Hairline'
																],
															]
														],
													];
													
													$flow_descs = json_decode(json_encode($flow_description[$lang]));
												?>
												<?php foreach ($flow_descs->slug as $fl => $value) : ?> <!-- description of waste bin option -->
													<?php if($fl == $flow->flow_name) : ?>
														<img class="img-fluid u-block-hover__main--zoom-v1 mb-3 icon_mobile" src="<?= get_image(DIR_ICON . 'flow/' . $flow->flow_icon ) ?>" alt="Flow <?= $flow->flow_name ?>" style="width:187px;height:186px;">
														<h2 class="h5 g-color-black g-font-weight-600 mb-4 g-font-size-15" style="margin-bottom: 5px!important;">
															<?= $flow->flow_name ?>
														</h2>
														<h2 class="h5 g-font-weight-600 mb-4 g-font-size-13" style="margin-bottom: 5px!important;color:#656565">
															<?= $value[0] ?> <!-- description of waste bin option -->
														</h2>
													<?php endif;?>
												<?php endforeach; ?>
												<?php else  : ?>
													<img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= get_image(DIR_ICON . 'flow/' . $flow->flow_icon ) ?>" alt="Flow <?= $flow->flow_name ?>" style="width:100% ;height:100%">
												<?php endif;?>
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
								$(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 335px;width: 74%;right: ' + margin_side + 'px;')
								$(element_id + ' .owl-dots').attr('style','margin-top:42px');
							});
						</script>
					<?php
						} //if ($count_category > 1)
						} else { // DESKTOP
						if (count($flow_category) > 1) {
						foreach ($flow_category

						as $key => $category) {
					?>
						<div id="<?= $category ?>" class="row justify-content-center my_tab_content <?= $key == 0 ? '' : 'd-none' ?>">
							<?php foreach ($flows as $flow): ?>
								<?php if ($flow->flow_category == $category): ?>
									<div class="col-md-4">
										<article class="g-transition-0_3">
											<div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 30px 0 0 0!important;">
												<img class="img-fluid u-block-hover__main--zoom-v1 mb-3 animated zoomIn" src="<?= base_url(DIR_ICON . 'flow/' . $flow->flow_icon) ?>" alt="Image Description"
												     style="width: 40%">
												<div class="g-pa-15">
													<h2 class="h5 g-color-black g-font-weight-600 mb-4 g-font-size-15" style="margin-bottom: 5px!important;">
														<?= $flow->flow_name ?>
													</h2>
												</div>
											</div>
										</article>
									</div>
								<?php endif; ?>
							<?php endforeach; ?>
						</div>
						<?php
					} // foreach ($flow_category as $category)
						?>
						<?php
					} else { //if ($count_category > 1)
						?>
						<?php if($service->service_id == 32 ) : ?>
							<?php 
								$flow_description = [
									'en' => [ 
										'slug' => [
											'4 in 1 Capsule' => [
												'Dimension: 140 x 35 x 75 cm <br>Material: Stainless Hairline'
											],
											'Tube' => [
												'Dimension: 30 x 65 cm<br>Material: Stainless Hairline'
											],
											'3 in 1 Capsule' => [
												'Dimension: 102 x 33 x 75 cm<br>Material: Stainless Hairline'
											],
											'Customizable' => [
												'Dimension: Requested by client<br>Material: Requested by client'
											],
											'2 in 1 Capsule' => [
												'Dimension: 70 x 33 x 75 cm<br>Material: Stainless Hairline'
											],
										]
									],
									'id' => [ 
										'slug' => [
											'Kapsul 4-in-1' => [
												'Dimensi: 140 x 35 x 75 cm <br>Bahan: Stainless Hairline'
											],
											'Tabung' => [
												'Dimensi: 30 x 65 cm<br>Bahan: Stainless Hairline'
											],
											'Kapsul 3-in-1' => [
												'Dimensi: 102 x 33 x 75 cm<br>Bahan: Stainless Hairline'
											],
											'Custom' => [
												'Dimensi: Sesuai Permintaan<br>Bahan: Sesuai Permintaan'
											],
											'Kapsul 2-in-1' => [
												'Dimensi: 70 x 33 x 75 cm<br>Bahan: Stainless Hairline'
											],
										]
									],
								];
								
								$flow_descs = json_decode(json_encode($flow_description[$lang]));
							?>
						<div class="row mx-auto">
						<?php foreach ($flows as $flow): ?>
							<?php foreach ($flow_descs->slug as $fl => $value) : ?> <!-- description of waste bin option -->
								<?php if($fl == $flow->flow_name) : ?>
									<div class="<?php if($flow->flow_icon == 'wastebin-custom.png' || $flow->flow_icon == 'wastebin-2in1.png') : ?>col-md-6
									<?php else  : ?>
										col-md-4
									<?php endif;?>
									">
										<article class="g-transition-0_3" style="margin-top:5px">
											<div class="g-color-black text-center g-transition-0_3 g-px-20 g-py-20" style="padding: 15px 0 0 0!important;background: #F5F5F5;margin-bottom:16px;width:102%;height:330px">
												<img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= base_url(DIR_ICON . 'flow/' . $flow->flow_icon ) ?>" alt="Image Description" style="width:auto;height:202px">
												<div class="g-pa-15">
													<h2 class="h5 g-font-weight-600 mb-4 g-font-size-15" style="margin-bottom: 5px!important;color:#00000">
														<?= $flow->flow_name ?>
													</h2>
													<h2 class="h5 g-font-weight-600 mb-4 g-font-size-15" style="margin-bottom: 5px!important;color:#656565">
														<?= $value[0] ?> <!-- description of waste bin option -->
													</h2>
												</div>
											</div>
										</article>
									</div>
									<?php endif;?>
								<?php endforeach; ?>
							<?php endforeach; ?>
						</div>
						<?php else  : ?>
						<div class="row justify-content-center">
							<?php foreach ($flows as $flow): ?>
								<div class="col-md-4">
									<article class="g-transition-0_3">
										<div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 30px 0 0 0!important;">
											<img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= base_url(DIR_ICON . 'flow/' . $flow->flow_icon) ?>" alt="Image Description" style="width: 40%">
											<div class="g-pa-15">
												<h2 class="h5 g-color-black g-font-weight-600 mb-4 g-font-size-15" style="margin-bottom: 5px!important;">
													<?= $flow->flow_name ?>
												</h2>
											</div>
										</div>
									</article>
								</div>
							<?php endforeach; ?>
						</div>
						<?php endif; ?>
						<?php
					} //if ($count_category > 1)
					} //end desktop
				?>
			</div>
		</section>
		<!-- End Mockup Block -->
	<?php } ?>