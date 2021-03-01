<!-- Promo Block -->
<section>
	<div id="<?= $section_slug ?>" class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall "
	     data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
		<div class="divimage dzsparallaxer--target w-100 g-bg-pos-bottom-center"
		     style="height: 100%;background: url(<?= base_url(DIR_IMG . 'service/' . $service_id . '/bg/' . $service->service_header_image) ?>);background-size: cover;<?= $this->agent->is_mobile() ? 'background-position-x: right;' : '' ?>"></div>
		<?php if ($service_id == 'custom-waste-bin') : ?>
			<div class="full-height-block pending-show animated d-zap"
		     style="background-image: <?= $this->agent->is_mobile() ? 'linear-gradient(180deg, rgba(255, 255, 255, 0.7) 20%, rgba(255, 255, 255, 0.9) 50%, rgba(255, 255, 255, 0.6) 100%)' : 'linear-gradient(100deg, rgba(255, 255, 255, 0.9) 0%, rgba(255, 255, 255, 0.85) 37%, rgba(255, 255, 255, 0) 75%)' ?>">
			<div class="container">
				<div class="row content-middle-fullscreen with-header middle-top <?= $this->agent->is_mobile() ? 'justify-content-center' : '' ?>">
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
						<?php if($service->service_name == "Peralatan & Perlengkapan Mengompos") : ?>
							<h3 class="g-color-black-opacity-0_8 g-font-weight-700 <?= $this->agent->is_mobile() ? 'g-font-size-35 text-center' : 'g-font-size-50' ?> mb-4 g-font-asap"
								style="line-height: 1"><?= $service->service_name ?></h3>
						<?php else : ?>
							<h3 class="g-color-black-opacity-0_8 g-font-weight-700 <?= $this->agent->is_mobile() ? 'g-font-size-35 text-center' : 'g-font-size-50' ?> mb-4 g-font-asap"
								style="line-height: 1.2"><?= $service->service_name ?></h3>
						<?php endif; ?>
						<div class="row">
							<div class="col-md-12"	>
								<h3
									class="g-color-black-opacity-0_7 <?= $this->agent->is_mobile() ? 'g-font-size-14  text-center' : 'g-font-size-16' ?> g-line-height-1_5 mb-3"><?= ucfirst($service->service_description) ?></h3>
							</div>
						</div>
						<div class="row <?= $this->agent->is_mobile() ? 'justify-content-center pt-3 g-pb-40' : 'pt-5 g-pb-60' ?>">
							<div class="col-md-6 col-xs-12">
								<a class="click_scroll btn btn-info btn-block g-color-white g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mb-10" href="<?= site_url('service/' . $service_id . '/join') ?>">
									<?= $service->service_id == 11 ? strtoupper(get_lang('enroll-the-class')) : (($service->service_id == 32 || $service->service_id == 34) ? strtoupper(get_lang('get-it-now')) : ($service->service_id == 33 ? strtoupper(get_lang('subscribe-now')) : strtoupper(get_lang('get-proposal')))) ?>
								</a>
							</div>
							<?php if ($service->service_portfolio_url == 1): ?>
								<div class="col-md-6 col-xs-12">
									<a class="click_scroll btn btn-outline-info btn-block g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mb-10 <?= $this->agent->is_mobile() ? 'btn-block mb-4' : '' ?>"
									   href="<?= base_url(DIR_SERVICE . $service_id . '/portfolio/' . $lang . '.pdf') ?>">
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
		<?php elseif ($service_id == 'responsible-waste-management') : ?>
			<div class="full-height-block pending-show animated d-zap"
		     style="background-image: <?= $this->agent->is_mobile() ? 'linear-gradient(180deg, rgba(255, 255, 255, 0.7) 20%, rgba(255, 255, 255, 0.9) 50%, rgba(255, 255, 255, 0.6) 100%)' : 'linear-gradient(100deg, rgba(255, 255, 255, 0.9) 0%, rgba(255, 255, 255, 0.60) 30%, rgba(255, 255, 255, 0) 75%)' ?>">
			<div class="container">
				<div class="row content-middle-fullscreen with-header middle-top <?= $this->agent->is_mobile() ? 'justify-content-center' : '' ?>">
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
						<?php if($service->service_name == "Peralatan & Perlengkapan Mengompos") : ?>
							<h3 class="g-color-black-opacity-0_8 g-font-weight-700 <?= $this->agent->is_mobile() ? 'g-font-size-35 text-center' : 'g-font-size-50' ?> mb-4 g-font-asap"
								style="line-height: 1"><?= $service->service_name ?></h3>
						<?php else : ?>
							<h3 class="g-color-black-opacity-0_8 g-font-weight-700 <?= $this->agent->is_mobile() ? 'g-font-size-35 text-center' : 'g-font-size-50' ?> mb-4 g-font-asap"
								style="line-height: 1.2"><?= $service->service_name ?></h3>
						<?php endif; ?>
						<div class="row">
							<div class="col-md-12"	>
								<h3
									class="g-color-black-opacity-0_7 <?= $this->agent->is_mobile() ? 'g-font-size-14  text-center' : 'g-font-size-16' ?> g-line-height-1_5 mb-3"><?= ucfirst($service->service_description) ?></h3>
							</div>
						</div>
						<div class="row <?= $this->agent->is_mobile() ? 'justify-content-center pt-3 g-pb-40' : 'pt-5 g-pb-60' ?>">
							<div class="col-md-6 col-xs-12">
								<a class="click_scroll btn btn-info btn-block g-color-white g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mb-10" href="<?= site_url('service/' . $service_id . '/join') ?>">
									<?= $service->service_id == 11 ? strtoupper(get_lang('enroll-the-class')) : (($service->service_id == 32 || $service->service_id == 34) ? strtoupper(get_lang('get-it-now')) : ($service->service_id == 33 ? strtoupper(get_lang('subscribe-now')) : strtoupper(get_lang('get-proposal')))) ?>
								</a>
							</div>
							<?php if ($service->service_portfolio_url == 1): ?>
								<div class="col-md-6 col-xs-12">
									<a class="click_scroll btn btn-outline-info btn-block g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mb-10 <?= $this->agent->is_mobile() ? 'btn-block mb-4' : '' ?>"
									   href="<?= base_url(DIR_SERVICE . $service_id . '/portfolio/' . $lang . '.pdf') ?>">
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
		<?php else : ?>
			<div class="full-height-block pending-show animated d-zap"
		     style="background-image: <?= $this->agent->is_mobile() ? 'linear-gradient(180deg, rgba(255, 255, 255, 0.7) 20%, rgba(255, 255, 255, 0.9) 50%, rgba(255, 255, 255, 0.6) 100%)' : 'linear-gradient( 100deg , rgba(255, 255, 255,0.9) 0%, rgba(255, 255, 255, 0.85) 70%, rgba(255, 255, 255,0) 100%);' ?>">
			<div class="container">
				<div class="row content-middle-fullscreen with-header middle-top <?= $this->agent->is_mobile() ? 'justify-content-center' : '' ?>">
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
						<?php if($service->service_name == "Peralatan & Perlengkapan Mengompos") : ?>
							<h3 class="g-color-black-opacity-0_8 g-font-weight-700 <?= $this->agent->is_mobile() ? 'g-font-size-35 text-center' : 'g-font-size-50' ?> mb-4 g-font-asap"
								style="line-height: 1.2;width: <?= $this->agent->is_mobile() ? '' : '700px' ?>"><?= $service->service_name ?></h3>
						<?php else : ?>
							<h3 class="g-color-black-opacity-0_8 g-font-weight-700 <?= $this->agent->is_mobile() ? 'g-font-size-35 text-center' : 'g-font-size-50' ?> mb-4 g-font-asap"
								style="line-height: 1.2"><?= $service->service_name ?></h3>
						<?php endif; ?>
						<div class="row">
							<div class="col-md-12"	>
							    <?php 
							        if ($service_id == 'personal-waste-management') : 
							            $pwm_description_welcome = [
                                        	'id' => 'Memastikan bahwa sampah anorganik Anda didaur ulang kini menjadi lebih mudah dengan layanan Personal Waste Management dari Waste4Change. Cukup pilah sampah anorganik sesuai kategori, dan Waste4Change akan menjemput secara rutin sampah yang terpilah langsung ke rumah Anda!',
                                        	'en' => 'Making sure that your inorganic waste is recycled has never been easier now with the Personal Waste Management service from Waste4Change. Simply segregate your inorganic waste, and Waste4Change will regularly collect your segregated waste directly from your home!'
                                    	];
                                    	$pwm_description_welcome_lang = $this->session->userdata('language') == 'en' ? $pwm_description_welcome['en'] : $pwm_description_welcome['id'];
							     ?>
							    
							    <h3
									class="g-color-black-opacity-0_7 <?= $this->agent->is_mobile() ? 'g-font-size-14  text-center' : 'g-font-size-16' ?> g-line-height-1_5 mb-3"><?= ucfirst($pwm_description_welcome_lang) ?></h3>
							    <?php else: ?>
							    <h3
									class="g-color-black-opacity-0_7 <?= $this->agent->is_mobile() ? 'g-font-size-14  text-center' : 'g-font-size-16' ?> g-line-height-1_5 mb-3"><?= ucfirst($service->service_description) ?></h3>
							    <?php endif; ?>
							</div>
						</div>
						<div class="row <?= $this->agent->is_mobile() ? 'justify-content-center pt-3 g-pb-40' : 'pt-5 g-pb-60' ?>">
							<div class="col-md-6 col-xs-12">
								<?php if ($service_id == 'personal-waste-management') : ?>
    								<a class="click_scroll btn btn-info btn-block g-color-white g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mb-10" href="https://personal.waste4change.com/?redirect=location&<?= $query_from_url ?>">
    									<?= $service->service_id == 11 ? strtoupper(get_lang('enroll-the-class')) : (($service->service_id == 32 || $service->service_id == 34) ? strtoupper(get_lang('get-it-now')) : ($service->service_id == 33 ? strtoupper(get_lang('subscribe-now')) : strtoupper(get_lang('get-proposal')))) ?>
    								</a>
								<?php else: ?>
    								<a class="click_scroll btn btn-info btn-block g-color-white g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mb-10" href="<?= site_url('service/' . $service_id . '/join') ?>">
    									<?= $service->service_id == 11 ? strtoupper(get_lang('enroll-the-class')) : (($service->service_id == 32 || $service->service_id == 34) ? strtoupper(get_lang('get-it-now')) : ($service->service_id == 33 ? strtoupper(get_lang('subscribe-now')) : strtoupper(get_lang('get-proposal')))) ?>
    								</a>
								<?php endif; ?>
							</div>
							<?php if ($service->service_portfolio_url == 1): ?>
								<div class="col-md-6 col-xs-12">
									<a class="click_scroll btn btn-outline-info btn-block g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mb-10 <?= $this->agent->is_mobile() ? 'btn-block mb-4' : '' ?>"
									   href="<?= base_url(DIR_SERVICE . $service_id . '/portfolio/' . $lang . '.pdf') ?>">
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
		<?php endif; ?>
	</div>
</section>
<!-- End Promo Block -->
