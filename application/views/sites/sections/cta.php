<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden"
         data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
	<div class="divimage dzsparallaxer--target w-100"
	     style="height: 130%; background-image: url(<?= base_url(DIR_IMG.'bg/conversion-homepage.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
	<div style="background:linear-gradient(rgba(248,248,248,0.98), rgba(243,243,243,0.8))">
		<div class="container <?= $this->agent->is_mobile() ? 'g-py-50' : 'g-py-70' ?>">
			<div class="text-center g-mb-50">
				<h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= get_lang('ready-to-start-your-<strong>responsible-waste-mana') ?></h2>
				<div class="row justify-content-center">
					<div class="col-md-3 col-10 g-mb-15 pt-5">
						<a class="btn btn-block btn-info g-color-white g-font-size-13 g-rounded-50 g-py-10 " href="<?= site_url('service') ?>">
							<?= strtoupper(get_lang("get-started")) ?>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
