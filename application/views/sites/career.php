
<!-- Persuasive Banner Section -->
<section>
	<div class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall "
	     data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
		<div class="divimage dzsparallaxer--target w-100 u-bg-overlay g-bg-black-opacity-0_6--after"
		     style="height: 100%;background: url(<?= base_url(DIR_BG . 'zero-waste-desk-lunch-1-1100x735.jpg') ?>);background-size: cover;"></div>
		<div class="">
			<div class="container">
				<div class="row content-middle-fullscreen with-header middle-top <?= $this->agent->is_mobile() ? 'justify-content-center' : '' ?>">
					<?php if (!$this->agent->is_mobile()): ?>
						<div class="col-12 g-mb-20 g-mt-40 text-right">
							<?php foreach ($breadcrumb as $bread): ?>
								<?php if ($bread['active'] != true): ?>
									<a class="g-color-blue g-text-transform-none" href="<?= site_url($bread['url']) ?>">
										<?php echo $bread['title'] ?>
										<i class="fa fa-angle-right g-mx-10"></i>
									</a>
								<?php else: ?>
									<span class="g-color-white"><?php echo $bread['title'] ?> </span>
								<?php endif; ?>
							<?php endforeach; ?>
						</div>
					<?php endif; ?>
					<div class="col-md-6 col-10">
						<h3 class="g-color-black-opacity-0_8 g-font-weight-700 <?= $this->agent->is_mobile() ? 'g-font-size-35 text-center' : 'g-font-size-50' ?> mb-4 g-font-asap" style="line-height: 1.2">asdasdasd</h3>
						<div class="row">
							<div class="col-md-12"	>
								<h3
									class="g-color-black-opacity-0_7 <?= $this->agent->is_mobile() ? 'g-font-size-14  text-center' : 'g-font-size-16' ?> g-line-height-1_5 mb-3"></h3>
							</div>
						</div>
						<div class="row <?= $this->agent->is_mobile() ? 'justify-content-center pt-3 g-pb-40' : 'pt-5 g-pb-60' ?>">
							<div class="col-md-6 col-xs-12">
a
							</div>
						
						</div>
					</div>
				</div>
				<br>
			</div>
		</div>
	</div>
</section>
<!-- End Persuasive Banner Section -->

