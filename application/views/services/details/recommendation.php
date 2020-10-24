<div id="<?= $section_slug ?>" style="height: 0px;position: absolute;width: 80%;margin-top: -200px"></div>
<section class="g-bg-secondary <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-0' : 'g-py-70' ?>">
	<div class="container">
		<div class="text-center mb-2">
			<div class="u-heading-v6-2 text-center text-uppercase g-mb-20">
				<h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?= $section->section_title ?></h2>
				<hr class="g-width-70 g-mt-10 g-mb-30 g-brd-2 g-brd-blue">
			</div>
		</div>
		<!-- Icon Blocks -->
		<div class="align-height-list row justify-content-center">
			<?php
				$number = 1;
				foreach ($section->section_items as $item):
					?>
					<div class="col-lg-4 col-xs-12 g-mb-20">
						<!-- Icon Blocks -->
						<div class="g-bg-white rounded g-py-15 g-px-30 u-shadow-v20">
							<div class="media align-height-item">
								<div class="d-flex align-self-center mr-4">
								<span class="g-font-size-26" style="<?= empty($item->item_color) ?'':'color:'.$item->item_color ?>">
									<?php
										if (strpos($item->item_image,'.') !== false ) {
											echo '<img src="'.get_image(DIR_SERVICE . '/' . $service_id . '/' . $item->item_image).'" alt="'.$item->item_title.'" style="max-width: 30px; max-height: 30px;margin-top:-5px">';
											} else {
											echo '<i class="' . $item->item_image . '"></i>';
										}
									?>
                </span>
								</div>
								<div class="media-body align-self-center">
									<h3 class="h5 g-color-black g-mt-5 text-capitalize"><?= $item->item_title ?></h3>
									<div class="g-width-30 g-brd-bottom g-brd-primary g-my-15 d-none"></div>
								</div>
							</div>
						</div>
						<!-- End Icon Blocks -->
					</div>
				<?php endforeach; ?>
		</div>
</section>
