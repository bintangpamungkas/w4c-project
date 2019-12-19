<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
	<div class="divimage dzsparallaxer--target w-100" style="height: 130%; background-image: url(<?= base_url('assets/img/bg/An-easy-guide-to-sorting-waste-at-home.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
	<div style="background:linear-gradient(rgba(248,248,248,0.98), rgba(243,243,243,0.8))">
		<div class="container g-pt-100 g-pb-50">
			<div class="text-center g-mb-50">
				<h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= get_lang('ready-to-start-your-<strong>responsible-waste-mana')?></h2>
				<div class="row justify-content-center">
					<div class="col-10 pt-5">
						<div class="row justify-content-center">
							<div class="col-md-6 d-none">
								<input
									class="form-control u-shadow-v19 g-brd-none g-bg-white g-font-size-16 g-rounded-30 g-px-30 g-py-13 g-mb-30"
									type="text" placeholder="Your Email Address ... ">
							</div>
							<div class="col-md-3 col-12 g-mb-15">
								<a class="btn btn-block btn-info g-color-white g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9" href="<?= site_url('join') ?>">
									<?= strtoupper(get_lang("get-started")) ?>
								</a>
							</div>
							<div class="col-md-3 col-12 d-none">
								<a target="_blank" class="btn u-btn-outline-black btn-block g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9 text-uppercase" href="https://search.google.com/local/writereview?placeid=ChIJgbaAgSGSaS4RMsOJnkymZcw">
									<?= get_lang('get-started') ?>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
