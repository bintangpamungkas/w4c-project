<section class="dzsparallaxer g-bg-white auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
	<div id="<?= $section_slug ?>" style="height: 0px;position: absolute;width: 80%;margin-top: -100px"></div>
	<div class="divimage dzsparallaxer--target w-100" style="height: 130%; background-position:right; background-size: <?= $this->agent->is_mobile() ? 'fill' : 'contain' ?>; background-image: url(<?= get_image(DIR_SERVICE.$service_id . '/bg/' . $section->section_image) ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
	<div style="background: linear-gradient(to right, rgba(255,255,255,1),rgba(255,255,255,0.5),rgba(255,255,255,0));">
		<div class="container g-py-60">
			<div class="row">
				<div class="col-md-8 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
					<h2 class="g-font-asap g-color-black g-font-weight-500 "><?= $section->section_title ?></h2>
					<?php if($this->agent->is_mobile()):?>
				<hr class="g-width-70 g-mt-20 g-mb-0 g-brd-2 w4c-brd-blue">
					<?php else: ?>
						<div class="g-width-70 g-height-2 g-pos-rel g-bg-info g-mt-5"></div>
					<?php endif; ?>
					<div class="mt-2 mb-4"><?= $section->section_subtitle ?></div>
				</div>
				<div class="col-md-4 align-self-end">
					<div class="row justify-content-<?= $this->agent->is_mobile() ? 'center' : 'end' ?> g-mt-30">
								<?php foreach ($section->section_ctas as $ctaI=>$cta): ?>
									<div class="col-auto">
									<a class="btn <?= empty($cta->cta_class) ? 'btn-outline-info' : $cta->cta_class ?>  g-font-size-13 text-uppercase  g-rounded-50 g-px-30 g-py-9 g-mb-10 " href="<?= empty($cta->cta_url) ? get_url('official/service/' . $service_id . '/join') : get_url($cta->cta_url) ?>">
										<?= $cta->cta_title ?>
									</a>
								</div>
								<?php endforeach; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>