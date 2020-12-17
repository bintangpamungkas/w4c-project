<!-- Persuasive Banner Section -->
<section>
	<div class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall " data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
		<div class="divimage dzsparallaxer--target w-100 u-bg-overlay g-bg-black-opacity-0_6--after" style="height: 100%;background: url(<?= base_url(DIR_BG .'internship/banner.jpg') ?>);backgrdound-size: cover;background-position:center;background-size:<?= $this->agent->is_mobile() ? '700px 700px' : '100% 100%' ?>;background-repeat: no-repeat"></div>
		<div class="container">
			<div class="" style="<?= $this->agent->is_mobile() ? 'padding-top: 55px;padding-bottom: 51px;' : 'padding-top: 84px;padding-bottom: 71px;' ?>height:80vh">
				<div class="g-pt-70" style="position: absolute; right: 15px;"> 
						<?php foreach ($breadcrumb as $bread) : ?>
							<?php if ($bread['active'] != true) : ?>
								<a class="w4c-color-blue g-text-transform-none" href="<?= site_url($bread['url']) ?>">
									<?php echo $bread['title'] ?>
								</a>
								<i class="g-color-white fa fa-angle-right g-mx-10"></i>
							<?php else : ?>
								<span class="g-color-white"><?php echo $bread['title'] ?> </span>
							<?php endif; ?>
						<?php endforeach; ?>
					</div>
				<div class="row align-items-center" style="height:100%;">
					<div class="col-12">
						<div class="text-center g-color-white g-font-asap g-font-weight-700 pb-2 g-line-height-1_3 g-font-size-<?= $this->agent->is_mobile() ? '18 g-px-12' : '35' ?>">
							<?= $copy->banner->title ?>
						</div>
						<div class="text-center g-color-white g-font-weight-300 g-line-height-1_3 g-font-size-<?= $this->agent->is_mobile() ? '15 g-px-12' : '18' ?>" style="font-family:'Open Sans'">
							<?= $copy->banner->description ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- End Persuasive Banner Section -->