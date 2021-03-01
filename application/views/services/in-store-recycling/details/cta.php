<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
	<div id="<?= $section_slug ?>" style="height: 0px;position: absolute;width: 80%;margin-top: -100px"></div>
	<div class="divimage dzsparallaxer--target w-100" style="height: 130%; background-image: url(<?= get_image(DIR_SERVICE . '/' . $service->service_slug . '/bg/' . $section->section_image) ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
	<div style="background:rgba(248,248,248,0.78)">
		<div class="container g-pt-100 g-pb-50">
			<div class="text-center g-mb-50">
				<h4 class="g-font-asap g-color-black g-font-weight-500 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= $section->section_title ?>
				<div class="row justify-content-center g-mt-30">
					<div class="col-md-3 col-10">
						<div class="row justify-content-center">
							<?php foreach ($section->section_ctas as $ctaI=>$cta): ?>
								<div class="col-12">
								<a class="btn btn-block btn-info g-color-white g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mb-10 " href="<?= empty($cta->cta_url) ? site_url('service/' . $service_slug . '/join') : $cta->cta_url ?>">
									<?= $cta->cta_title ?>
								</a>
							</div>
							<?php endforeach; ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>