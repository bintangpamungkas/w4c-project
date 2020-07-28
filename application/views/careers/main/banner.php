<!-- Persuasive Banner Section -->
<section>
	<div class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall " data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
		<div class="divimage dzsparallaxer--target w-100 u-bg-overlay g-bg-black-opacity-0_6--after" style="height: 100%;background: url(<?= base_url(DIR_BG . 'career/Main-Banner1.jpg') ?>);background-size: cover;">
		</div>
		<div class="">
			<div class="container">
				<div class="row content-middle-fullscreen with-header middle-top <?= $this->agent->is_mobile() ? 'justify-content-center' : '' ?>">
					<div class="col-12 g-mb-20 g-mt-40 text-right">
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
					<div class="col-12">
						<h3 class="text-center g-color-white g-font-asap g-font-weight-700 g-font-size-<?= $this->agent->is_mobile() ? '24 g-px-12 g-pb-20' : '35 g-pb-100 ' ?> g-mt-100 g-mb-150">
							<?= $copy->banner->title ?></h3>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- End Persuasive Banner Section -->