	<section class="g-bg-white">
		<div id="<?= $section_slug ?>" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
		<div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'g-py-70' ?>">
			<div class="text-center g-mb-50">
				<h2
					class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?= get_lang('we-offer') . ' ' . count($section->section_items) . ' ' . get_lang('programs') ?></h2>
				<hr class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue">
			</div>
			<div class="row align-height-list">
				<?php foreach ($section->section_items as $offer): ?>
					<div class="col-md col-xs-12 g-line-height-1_3 g-line-height-2">
						<div class=" g-brd-1 g-brd-style-solid g-brd-gray-light-v3 g-pa-20 g-mb-20">
							<div class="align-height-item">
							<img src="<?= get_image(DIR_ICON . 'what-you-get/' . $offer->item_icon) ?>" alt="" style="width:80px;">
							<div class="g-font-weight-900 g-font-size-16">
								<?= $offer->item_title ?>
							</div>
							<div>
								<?php
								$decriptions = explode('<br>', $offer->item_message);
								foreach ($decriptions as $decription => $val) {
									?>
									<div class="row no-gutters g-my-10">
										<?php if (count($decriptions) != 1): ?>
											<div class="col-auto">
												<img src="<?= get_image(DIR_ICON . 'check-circle.png') ?>" alt=""
												     style="<?= $this->agent->is_mobile() ? 'width:20px; margin-right: 13px; margin-top:-10px' : 'width:30px; margin-right: 20px' ?>">
											</div>
										<?php endif; ?>
										<div class="col <?= $this->agent->is_mobile() ? ' g-font-size-12' : '' ?>">
											<?= $val ?>
										</div>
									</div>
									<?php
								}
								?>
							</div>
						</div>
					</div>
					</div>
				<?php endforeach; ?>
			</div>
		</div>
	</section>

