<!-- Promo Block -->
<section>
	<div id="<?= $section_slug ?>" class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall " data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
		<div class="divimage dzsparallaxer--target w-100 g-bg-pos-bottom-center" style="height: 100%;background: url(<?= base_url('assets/img/service/' . $service_id . '/bg/header.jpg') ?>);background-size: cover;<?= $this->agent->is_mobile() ? 'background-position-x: right;' : '' ?>"></div>
		<div class="full-height-block pending-show animated d-zap" style="background-image: <?= $this->agent->is_mobile() ? 'linear-gradient(180deg, rgba(255, 255, 255, 0.7) 40%, rgba(255, 255, 255, 0.8) 60%, rgba(255, 255, 255, 0.5) 100%)' : 'linear-gradient( 100deg , rgb(256, 256, 256) 40%, rgba(256, 256, 256, 0.85) 70%, rgba(256, 256, 256,0) 100%);' ?>">
			<div class="container">
				<div class="row content-middle-fullscreen with-header <?= $this->agent->is_mobile() ? 'justify-content-center' : '' ?>">
					<?php if (!$this->agent->is_mobile()): ?>
						<div class="col-12 g-mb-20 g-mt-40">
							<?php foreach ($breadcrumb as $bread): ?>
								<?php if ($bread['active'] != true): ?>
									<a class="g-color-black g-text-transform-none" href="<?= site_url($bread['url']) ?>">
										<?php echo $bread['title'] ?>
										<i class="fa fa-angle-right g-mx-10"></i>
									</a>
								<?php else: ?>
									<span class="g-font-color-w4c-1"><?php echo $bread['title'] ?> </span>
								<?php endif; ?>
							<?php endforeach; ?>
						</div>
					<?php endif; ?>
					<div class="col-md-6 col-10">
						<h3 class="g-color-black-opacity-0_8 g-font-weight-700 <?= $this->agent->is_mobile() ? 'g-font-size-35 text-center' : 'g-font-size-50' ?> mb-4 g-font-asap" style="line-height: 1.2"><?= $service->service_name ?></h3>
						<div class="row">
							<div class="col-md-12">
								<h3 class="g-color-black-opacity-0_7 <?= $this->agent->is_mobile() ? 'g-font-size-14  text-center' : 'g-font-size-16' ?> g-line-height-1_5 mb-3"><?= ucfirst($service->service_description) ?></h3>
							</div>
						</div>
						<div class="pt-5 row <?= $this->agent->is_mobile() ? ' justify-content-center' : '' ?>">
							<div class="col-auto">
								<a class="click_scroll btn btn-info g-color-white g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mb-10" href="<?= site_url('service/' . $service_id . '/join') ?>">
									<?= $service->service_id == 11 ? strtoupper(get_lang('enroll-the-class')) : strtoupper(get_lang('get-proposal')) ?>
								</a>
							</div>

							<?php if($service->service_portfolio_url==1):?>
								<div class="col-auto">
									<a class="click_scroll btn btn-outline-info g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mb-10 <?= $this->agent->is_mobile() ? 'btn-block mb-4' : '' ?>" href="<?= base_url(DIR_SERVICE . $service_id . '/portfolio/'.$lang.'.pdf')?>">
										<?= strtoupper(get_lang('get-portfolio')) ?>
									</a>
								</div>
							<?php endif; ?>
						</div>
					</div>
				</div>
				<br>
			</div>
		</div>
	</div>
</section>
<!-- End Promo Block -->
