<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
	<div id="cta" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>
	<div class="divimage dzsparallaxer--target w-100" style="height: 130%; background-image: url(<?= get_image(DIR_BG . 'conversion-service.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
	<div style="background:rgba(248,248,248,0.78)">
		<div class="container g-pt-100 g-pb-50">
			<div class="text-center g-mb-50">
				<h4 class="g-color-black g-font-weight-500 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= lang('start_your') . ' <strong>' . $service->service_name . ' </strong> ' . lang('now') . '!' ?></h4>
				<!-- <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-24' : '' ?>"><?= empty($this->session->userdata('language')) || $this->session->userdata('language') == 'id' ? 'Program' : '' ?> <?= ucwords(lang($service_id)) ?> <?= $this->session->userdata('language') == 'en' ? 'Program' : '' ?></h2> -->
				<div class="row justify-content-center">
					<div class="col-10 pt-5">
						<div class="row justify-content-center">
							<div class="col-md-6 d-none">
								<input class="form-control u-shadow-v19 g-brd-none g-bg-white g-font-size-16 g-rounded-30 g-px-30 g-py-13 g-mb-30" type="text" placeholder="Your Email Address ... ">
							</div>
							<div class="col-md-3 col-12 g-mb-15">
								<a class="btn btn-block btn-info g-color-white g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9"  href="<?= site_url('service/' . $service_id . '/join') ?>">
									<?= strtoupper(lang('get_proposal')) ?>
								</a>
							</div>
							<div class="col-md-3 col-12 d-none">
								<a target="_blank" class="btn u-btn-outline-black btn-block g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9 text-uppercase" href="https://search.google.com/local/writereview?placeid=ChIJgbaAgSGSaS4RMsOJnkymZcw">
									<?= lang('cta_feed_back') ?>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
