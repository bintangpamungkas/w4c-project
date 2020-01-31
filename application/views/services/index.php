<section
	class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden"
	data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
	<div class="divimage dzsparallaxer--target w-100"
	     style="height: 130%; background-image: url(<?= base_url(DIR_BG . 'bg_header.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
	<div
		style="background:radial-gradient(circle farthest-side at 80% 60%, rgba(66,195,120,0.67), rgba(14,105,148,0.92))">
		<div class="container g-pt-100 g-pb-120">
			<br>
			<div
				class="row no-gutters g-font-size-<?= $this->agent->is_mobile() ? '25' : '35' ?> g-color-white mb-0 g-line-height-1_2">
				<div
					class="col-12 g-font-size-23 g-letter-spacing-2 g-font-weight-600 text-uppercase g-mb-20"> <?= lang('services_all_services') ?> </div>
				<div
					class="col-<?= $this->agent->is_mobile() ? '12' : '4' ?> g-font-size-30 g-font-weight-900 g-line-height-1_2"> <?= ucfirst(strtolower(get_lang('choose-the-right-solution'))) ?> </div>
			</div>
		</div>
	</div>
</section>

<section class="g-bg-secondary g-pt-50">
	<div class="container">
		<div class="row">
			<!-- Services target navivation -->
			<div class="col-md-7 col-xs-12">
				<div class="row justify-content-center g-ma-0">
					<div class="col<?= $this->agent->is_mobile() ? '' : '' ?> text-center g-px-0 tab-shadow align-self-end">
						<a
							class="my_tab_2 g-cursor-pointer nav-link text-uppercase g-font-weight-700 g-font-size-<?= $this->agent->is_mobile() ? '14 g-py-10  g-px-5' : '15 g-py-12 g-px-30' ?> <?= (empty($service_target) || $service_target == 'all') ? 'tab-active' : '' ?> "
							href="<?= site_url('service?target=all') ?>"
							style="<?= $this->agent->is_mobile() ? 'min-height: 40px' : 'min-height: 50px' ?> ; color:#aaa">
							<?= get_lang('all') ?>
						</a>
					</div>
					<?php
					foreach ($service_targets as $target):
						?>
						<div class="col<?= $this->agent->is_mobile() ? '' : '' ?> text-center g-px-0 align-self-end">
							<a
								class="my_tab_2 g-cursor-pointer nav-link text-uppercase g-font-weight-700 g-font-size-<?= $this->agent->is_mobile() ? '14 g-py-10 g-px-5 ' : '15 g-py-12  g-px-20' ?> <?= $service_target == strtolower($target->service_target_slug) ? 'tab-active' : '' ?>"
								href="<?= site_url('service?target=' . strtolower($target->service_target_slug)) ?>"
								style="<?= $this->agent->is_mobile() ? 'min-height: 40px' : 'min-height: 50px' ?> ; color:#aaa">
								<?= $target->service_target_name ?>
							</a>
						</div>
					<?php
					endforeach;
					?>
				</div>
			</div>
			<!-- END Services target navivation -->

			<!-- Search location -->
			<div class="col-md-5 col-xs-12">
				<?php if ($this->agent->is_mobile()): ?>
					<h4
						class="g-font-asap g-font-weight-700 g-color-w4c-blue-v1 mb-3 g-mt-30"><?= get_lang('available-services-for-your-location') ?></h4>
				<?php endif; ?>
				<div style="<?= $this->agent->is_mobile() ?: 'position: absolute;bottom: 0;left: 0;width: calc(100% - 15px);' ?>">
					<form action="<?= site_url('service') ?>" method="get">
						<div class="autocomplete">
							<div class="input-group pull-right">
								<div class="input-group-prepend">
								<span class="input-group-text rounded-0 g-bg-white g-color-gray-light-v1 g-pa-10 border-right-0"
								      style="border:1px solid #0B90B9;"><i class="fa fa-map-marker"></i></span>
								</div>
								<input id="input_city"
								       class="form-control form-control-md border-left-0 rounded-0 g-pa-10 pl-0 border-right-0 g-box-shadow-none"
								       type="text" name="city" value="<?= $input_city ?>"
								       style="border:1px solid #0B90B9; border-radius:0px"
								       placeholder="<?= get_lang('enter-the-name-of-your-city') ?>" autocomplete="off">
								<input type="hidden" name="target" value="<?= $service_target ?>">
								<div class="input-group-btn">
									<button class="btn btn-info g-py-10 g-px-30 g-letter-spacing-2 border-left-0" type="submit"
									        style="border:1px solid #0B90B9;border-radius:0px">
										<?= $this->agent->is_mobile() ? '<i class="icon icon-magnifier  g-font-size-20"></i>' : strtoupper(get_lang('search')) ?>
									</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- End Search location -->
		</div>
	</div>
	<div class="g-bg-secondary">
		<div class="container">
			<div class="g-font-size-25 g-mt-30"><?= empty($search_message) ? '' : $search_message ?></div>
			<?php
			if (empty($services)) {
//				echo '<div class="g-font-size-25 g-font-weight-600 g-my-20">' . get_lang('no-service-found') . '</div>';
				echo '<div class="g-font-size-25 g-font-weight-600 g-my-50"></div>';
			} else {
				$i = 0;
				$service_id = 0;
				foreach ($services as $service) {
					if ($service->service_id != $service_id) {
						if ($this->agent->is_mobile()) { //mobile view
							?>
							<div class="bg-white g-my-20 box-shadow-down">
								<div
									style="height: 200px;background: url(<?= get_image(DIR_SERVICE . $service->service_slug . '/bg/thumbnail.jpg', base_url('assets/img/error/1x2.png')) ?>);background-size: cover;"></div>
								<!-- <img class="img-fluid w-100" src="<?= get_image(DIR_SERVICE . $service->service_slug . '/bg/thumbnail.jpg', base_url('assets/img/error/1x2.png')) ?>" alt="<?= $service->service_name . ' image' ?>"> -->
								<div class="bg-white g-mx-20 g-pa-20" style=" margin-top: -40px;">
								<span
									class="g-color-black-opacity-0_8 g-font-weight-600 g-font-size-12 text-uppercase"><?= strtolower($service->service_category_name) == strtolower($service->service_name) ? 'GENERAL' : $service->service_category_name ?></span>
									<h2
										class="h4 g-color-black g-font-weight-600 g-mb-25 g-line-height-1_2">
										<?= $service->service_name ?>
									</h2>
									<p class="g-color-black-opacity-0_8"><?= $service->service_description ?></p>
									<a
										class="g-font-size-12 g-color-w4c-blue-v1 g-font-weight-700 mb-3 g-letter-spacing-1_5 text-uppercase <?= empty($service->service_page_url) ? 'd-none' : '' ?>"
										href="<?= get_url($service->service_page_url) ?>"><?= get_lang('learn-more') ?> <i
											class="fa fa-angle-right g-font-size-14 g-font-weight-700 g-ml-10"
											style="width: 20px; margin-top: -10px;"></i> </a>
									<hr class="mb-1">
									<div class="g-mt-10">
										<div class="g-font-size-10 g-mb-5"><?= ucfirst(get_lang('recommended-for')) ?></div>
										<?php
										foreach ($service->recomendation as $recomendation):
											?>
											<span
												class="u-label u-label--sm g-rounded-20 g-font-size-10 g-px-20 g-py-7 g-mb-5 g-mr-10 g-my-5 g-brd-0"
												style="color:<?= $recomendation->color ?>; background-color:<?= $recomendation->color, '20' ?>;border:1px solid <?= $recomendation->color ?>"><?= $recomendation->name ?></span>
										<?php
										endforeach;
										?>
									</div>
								</div>
							</div>
							<?php
							
						} else { //desktop view
							?>
							<div id="asd<?= $i ?>" class="bg-white g-my-20 box-shadow-down">
								<div class="g-pa-40">
									<div class="row">
										<?php if ($i % 2 == 1) { ?>
											<div class="col-6">
												<img class="img-fluid w-100 h-100"
												     src="<?= get_image(DIR_SERVICE . $service->service_slug . '/bg/thumbnail.jpg', base_url('assets/img/error/1x2.png')) ?>"
												     alt="<?= $service->service_name . ' image' ?>"
												     style="-webkit-mask-image: -webkit-gradient(linear, left top, right top, from(rgba(0,0,0,1)), to(rgba(0,0,0,0)));mask-image: linear-gradient(to left, rgba(0,0,0,1), rgba(0,0,0,0));">
											</div>
											<div class="col-6">
											<span
												class="g-font-weight-600 g-font-size-12 text-uppercase"><?= strtolower($service->service_category_name) == strtolower($service->service_name) ? 'GENERAL' : $service->service_category_name ?></span>
												<div class="">
													<h2
														class="'h1 g-color-black g-font-weight-600 g-mb-25 g-line-height-1_2">
														<?= $service->service_name ?>
													</h2>
													<p class="g-color-black-opacity-0_9 g-font-size-16"><?= $service->service_description ?></p>
													<a
														class="g-color-w4c-blue-v1 g-font-weight-700 mb-3 text-uppercase <?= empty($service->service_page_url) ? 'd-none' : '' ?>"
														href="<?= get_url($service->service_page_url) ?>"><?= get_lang('learn-more') ?>
														<i class="fa fa-angle-right g-ml-10 g-font-size-20"></i>
													</a>
													<div class="g-mt-20">
														<div class="g-font-size-10 g-mb-5"><?= get_lang('recommended-for') ?></div>
														<?php
														foreach ($service->recomendation as $recomendation):
															?>
															<span class="u-label u-label--sm g-rounded-20 g-font-size-12 g-px-20 g-py-7 g-mb-5 g-mr-10 g-my-5"
															      style="color:<?= $recomendation->color ?>; background-color:<?= $recomendation->color, '20' ?>"><?= $recomendation->name ?></span>
														<?php
														endforeach;
														?>
													</div>
												</div>
											</div>
											<?php
										} else { // if ($i%2==1)
											?>
											<div class="col-6">
											<span
												class="g-color-gray-dark-v3 g-font-weight-600 g-font-size-12 text-uppercase"><?= strtolower($service->service_category_name) == strtolower($service->service_name) ? 'GENERAL' : $service->service_category_name ?></span>
												<div class="">
													<h1
														class="<?= $this->agent->is_mobile() ? 'h4' : 'h1' ?> g-color-black g-font-weight-600 g-mb-25 g-line-height-1_2">
														<?= $service->service_name ?>
													</h1>
													<p class="g-color-black-opacity-0_9 g-font-size-16"><?= $service->service_description ?></p>
													<a
														class="g-color-w4c-blue-v1 g-font-weight-700 mb-3 text-uppercase <?= empty($service->service_page_url) ? 'd-none' : '' ?>"
														href="<?= get_url($service->service_page_url) ?>"><?= get_lang('learn-more') ?> <i
															class="fa fa-angle-right g-ml-10 g-font-size-20"></i> </a>
													<div class="g-mt-20">
														<div class="g-font-size-10 g-mb-5"><?= get_lang('recommended-for') ?></div>
														<?php
														foreach ($service->recomendation as $recomendation):
															?>
															<span class="u-label u-label--sm g-rounded-20 g-font-size-12 g-px-20 g-py-7 g-mb-5 g-mr-10 g-my-5"
															      style="color:<?= $recomendation->color ?>; background-color:<?= $recomendation->color, '20' ?>"><?= $recomendation->name ?></span>
														<?php
														endforeach;
														?>
													</div>
												</div>
											</div>
											<div class="col-6">
												<img class="img-fluid w-100 h-100"
												     src="<?= get_image(DIR_SERVICE . $service->service_slug . '/bg/thumbnail.jpg', base_url('assets/img/error/1x2.png')) ?>"
												     alt="<?= $service->service_name . ' image' ?>"
												     style="-webkit-mask-image: -webkit-gradient(linear, right top, left top, from(rgba(0,0,0,1)), to(rgba(0,0,0,0)));mask-image: linear-gradient(to right, rgba(0,0,0,1), rgba(0,0,0,0));">
											</div>
											<?php
										} //end if ($i%2==1)
										?>
									</div>
								</div>
							</div>
							<?php
						} // End desktop view
						$service_id = $service->service_id;
						$i++;
					} // end if ($service->service_id!=$service)
				} // End foreach ($services as $service)
			}
			?>
		</div>
		<div class="g-bg-gray-light-v4 g-py-40">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-xs-12 col-md-auto">
						<h3
							class=" <?= $this->agent->is_mobile() ? 'h5 mb-4' : 'h3' ?> g-font-weight-700"><?= lang('services_not_found') ?></h3>
					</div>
					<div class="col-xs-12 col-md <?= $this->agent->is_mobile() ? 'text-center' : 'text-right' ?>">
						<a class="btn btn-outline-info g-brd-2 g-font-size-12 g-rounded-50 text-uppercase g-letter-spacing-2 g-px-20"
						   href="<?= site_url('contact') ?>"><?= lang('services_talk_to_expert') ?></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- END List Product -->
<script>
    $(document).on('click', '.my_tab_2', function () {
        var tab_target = $(this).data('tab');
        $('.my_tab_2').removeClass('tab-active');
        $(this).addClass('tab-active');
        $('.my_tab_content').addClass('d-none');
        $(tab_target).removeClass('d-none');
    });

    $(function () {
        var availableTags = [
					<?php foreach ($coverage_cities as $city) {
					echo '"' . $city->service_coverage_city . '",';
				}
					?>
        ];
        $("#input_city").autocomplete({
            source: availableTags
        });
    });
</script>
