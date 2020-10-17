
<style>
	.welcome-message ul li::marker {
	color: #17A2B8;
	}
	.welcome-message ul{
		padding-inline-start: 20px;
	}
</style><!-- Promo Block -->
<section>
	<div id="<?= $section_slug ?>" class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall " data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
		<div class="divimage dzsparallaxer--target w-100 g-bg-pos-bottom-center" style="height: 100%;background: url(<?= base_url(DIR_IMG . 'service/' . $service_id . '/' . $section->section_image) ?>);background-size: cover;<?= $this->agent->is_mobile() ? 'background-position-x: right;' : '' ?>"></div>
		<div class="full-height-block pending-show animated d-zap" style="background-image: <?= $this->agent->is_mobile() ? 'linear-gradient(180deg, rgba(255, 255, 255, 0.8) 20%, rgba(255, 255, 255, 0.8) 50%, rgba(255, 255, 255, 0.8) 100%)' : 'linear-gradient(100deg, rgba(255, 255, 255, 0.95) 0%, rgba(255, 255, 255, 0.7) 50%, rgba(255, 255, 255, 0.4) 70%, rgba(255, 255, 255, 0.3) 80%, rgba(255, 255, 255, 0.9) 100%)' ?>">
			<div class="container">
				<div class="row content-middle-fullscreen with-header middle-top <?= $this->agent->is_mobile() ? 'justify-content-center' : '' ?>">
				<!-- Breadcrumb -->
					<?php if (!$this->agent->is_mobile()) : ?>
						<div class="col-12 g-my-40">
							<?php foreach ($breadcrumb as $bread) : ?>
								<?php if ($bread['active'] != true) : ?>
									<a class="g-color-black g-text-transform-none" href="<?= site_url($bread['url']) ?>">
										<?php echo $bread['title'] ?>
										<i class="fa fa-angle-right g-mx-10"></i>
									</a>
								<?php else : ?>
									<span class="g-font-color-w4c-1"><?php echo $bread['title'] ?> </span>
								<?php endif; ?>
							<?php endforeach; ?>
						</div>
					<?php endif; ?>
					<!-- End Breadcrumb -->
					<div class="col-md-7 col-10">
						<h3 class="g-color-black-opacity-0_8 g-font-weight-700 <?= $this->agent->is_mobile() ? 'g-font-size-35 text-center' : 'g-font-size-50' ?> mb-4 g-font-asap" style="line-height: 1.2"><?= $section->section_title ?></h3>
						<div class="row">
							<div class="col-md-12">
								<h3 class="welcome-message g-color-black-opacity-0_7 <?= $this->agent->is_mobile() ? 'g-font-size-14  text-center' : 'g-font-size-16' ?> g-line-height-1_8 mb-3"><?= ucfirst($section->section_message) ?></h3>
							</div>
						</div>
						<div class="row <?= $this->agent->is_mobile() ? 'justify-content-center pt-3 g-pb-40' : 'pt-5 g-pb-60' ?>">
						<?php foreach ($section->section_ctas as $ctaI=>$cta): ?>
							<div class="col-md-auto col-xs-12 text-center">
								<a class="click_scroll btn btn-info <?= $this->agent->is_mobile() ? 'btn-block' : '' ?> g-color-white g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mb-10" href="<?= empty($cta->cta_url) ? site_url('service/' . $service_id . '/join') : $cta->cta_url ?>">
									<?= $cta->cta_title ?>
								</a>
							</div>
						<?php endforeach; ?>
						</div>
					</div>
				</div>
				<br>
			</div>
		</div>
	</div>
</section>
<!-- End Promo Block -->