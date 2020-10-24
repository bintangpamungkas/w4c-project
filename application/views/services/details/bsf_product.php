<section class="g-bg-secondary">
	<div id="<?= $section_slug ?>" style="height:0px;position: absolute;width: 80%;margin-top: -80px"></div>
	<div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'g-py-70' ?>">
		<div class="text-center g-mb-50">
			<h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?= $section->section_title ?></h2>
			<hr class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue">
		</div>
		<div class="row justify-content-md-center">
			<div class="col-md-12 text-center g-pt-30 g-pb-70 g-px-20">
				<img src="<?= get_image(DIR_IMG . 'service/' . $service_id . '/' . $section->section_image) ?>" alt="<?= $section_slug ?> Image" style="<?= $this->agent->is_mobile() ? 'width:100%' : 'height:100px' ?>"> 
			</div>
			<?php if (!empty($section->section_ctas)) : ?>
				<?php foreach ($section->section_ctas as $ctaI => $cta) : ?>
					<div class="col-md-auto g-px-30">
						<a class="click_scroll btn btn-outline-info g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mb-10 <?= $this->agent->is_mobile() ? 'btn-block mb-4' : '' ?>" href="<?= $cta->cta_url ?>">
							<?= $cta->cta_title ?>
						</a>
					</div>
				<?php endforeach; ?>
			<?php endif; ?>
		</div>
	</div>
</section>