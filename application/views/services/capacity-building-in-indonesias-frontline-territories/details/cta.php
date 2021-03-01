<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden"
         data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
	<div id="<?= $section_slug ?>" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>
	<div class="divimage dzsparallaxer--target w-100"
	     style="height: 130%; background-image: url(<?= get_image(DIR_BG . 'conversion-service.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
	<div style="background:rgba(248,248,248,0.78)">
		<div class="container g-pt-100 g-pb-50">
			<div class="text-center g-mb-50">
				<h4 class="g-font-asap g-color-black g-font-weight-500 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= $service->service_id == 32 ? '' : $service->service_id == 33 ? get_lang('start-using-our') : get_lang('start_your') ?>
					<?= $service->service_id == 32 ? get_lang('design') : '' ?> <strong>  <?= $service->service_id == 34 ? get_lang('composting') : (empty($parent_service->service_name) ? $service->service_name : $parent_service->service_name) ?> </strong>
					<?= $service->service_id == 34 ? get_lang('now') : ($service->service_id == 33 ? get_lang('service-now') : get_lang('now!')) ?></h4>
				<div class="row justify-content-center g-mt-30">
					<div class="col-md-3 col-10">
						<div class="row justify-content-center">
							<div class="col-12">
								<a class="btn btn-block btn-info g-color-white g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mb-10" href="<?= site_url('service/' . $service_id . '/join') ?>">
									<?= $service->service_id == 11 ? strtoupper(get_lang('enroll-the-class')) : (($service->service_id == 32 || $service->service_id == 34) ? strtoupper(get_lang('get-it-now')) : ($service->service_id == 33 ? strtoupper(get_lang('subscribe-now')) : strtoupper(lang('get_proposal')))) ?>
								</a>
							</div>
							<?php
								if (empty($parent_service)) {
									if ($service->service_portfolio_url == 1) {
										?>
										<div class="col-12">
											<a class="click_scroll btn btn-outline-info btn-block g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mb-10 <?= $this->agent->is_mobile() ? 'btn-block mb-4' : '' ?>"
											   href="<?= base_url(DIR_SERVICE . $service_id . '/portfolio/' . $lang . '.pdf') ?>">
												<?= strtoupper(get_lang('get-portfolio')) ?>
											</a>
										</div>
										<?php
									}
								} else {
									if ($parent_service->service_portfolio_url == 1) {
										?>
										<div class="col-12">
											<a class="click_scroll btn btn-outline-info btn-block g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mb-10 <?= $this->agent->is_mobile() ? 'btn-block mb-4' : '' ?>"
											   href="<?= base_url(DIR_SERVICE . $parent_service->service_slug . '/portfolio/' . $lang . '.pdf') ?>">
												<?= strtoupper(get_lang('get-portfolio')) ?>
											</a>
										</div>
										<?php
									}
								}
							?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
