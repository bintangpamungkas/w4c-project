<section class="g-bg-white">
	<div id="<?= $section_slug ?>" style="height: 0px;position: absolute;width: 80%;margin-top: -80px"></div>
	<div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'g-py-70' ?>">
		<div class="text-center g-mb-50">
			<h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?= $section->section_title ?></h2>
			<hr class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue">
			<div class="<?= $this->agent->is_mobile() ? '' : 'g-px-150 ' ?> mt-2 mb-4"><?= $section->section_subtitle ?></div>
		</div>
		<div class="row justify-content-md-center">
			<div class="col-md-12 text-center g-py-40 g-px-20">
				<?php if ($this->agent->is_mobile()) {
					$platform = 'mobile';
				} else {
					$platform = 'desktop';
				}  ?>
				<img src="<?= get_image(DIR_IMG . 'service/' . $service_id . '/'.$lang.'_'.$platform.'_'. $section->section_image) ?>" alt="<?= $section_slug ?> Image" style="width:100%">
			</div>
		</div>
	</div>
</section>