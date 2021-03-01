<section class="g-bg-secondary">
	<div id="<?=$section_slug?>" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
	<div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'g-py-70' ?>">
		<div class="text-center g-mb-50">
			<h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?=$section->section_title?></h2>
			<hr class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue">
		</div>
		<div class="row align-height-list">
			<?php foreach ($section->section_items as $activity): ?>
			<div class="col-md-6 col-xs-12 g-line-height-1_3 text-center g-line-height-2">
				<div class="align-height-item g-brd-1 g-brd-style-solid g-brd-gray-light-v3 g-pa-20 g-mb-20">
					<div class="">
					<img src="<?= get_image(DIR_ICON . 'what-you-get/' . $activity->item_icon) ?>" alt="" style="width:80px;">
				</div>
				<div class="g-font-weight-900 g-font-size-16">
					<?= $activity->item_title ?>
				</div>
				<div class="g-line-height-1_1">
					<?= $activity->item_message ?>
				</div>
				</div>
			</div>
		<?php endforeach; ?>
	</div>
	</div>
</section>

