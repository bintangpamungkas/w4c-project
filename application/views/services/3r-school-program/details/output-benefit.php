<?php if (1 == 1): ?>
	<section class="g-bg-secondary">
		<div id="<?=$section_slug?>" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
		<div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'g-py-70' ?>">
			<div class="g-font-asap g-mb-50 text-center">
				<h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?=$section->section_title?></h2>
				<?=$this->agent->is_mobile() ? '<hr class="g-width-30 g-my-5 g-brd-2 g-brd-blue">' : '<div class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue"></div>' ?>
			</div>
			<div class="row">
				<?php $category = '';$i=1; ?>
				<?php foreach ($section->section_items as $benefit): ?>
				
						<div class="col-md-12 ">
							<hr class="<?= ($category == $benefit->item_category || $i==1) ? 'd-none' : 'g-brd-top g-brd-gray-light-v3 g-my-20' ?>">
							<div class="row ">
								<div class="col-md-2 g-font-weight-900 <?=$this->agent->is_mobile() ? $category == $benefit->item_category ? 'g-pa-0' :'g-pr-30 g-pt-10 text-center g-pa-20' : 'g-pt-10'?>">
									<?= $category == $benefit->item_category ? '' : $benefit->item_category ?>
								</div>
								<div class="col">
									<div class="row no-gutters g-my-10">
										<div class="col-auto">
											<img src="<?= get_image(DIR_ICON . 'check-circle.png') ?>" alt="" style="<?= $this->agent->is_mobile() ? 'width:23px; margin-right: 13px' : 'width:30px; margin-right: 20px' ?>">
										</div>
										<div class="col" style="<?= $this->agent->is_mobile() ? '' : 'margin-top:7px' ?>">
											<?= $benefit->item_message ?>
										</div>
									</div>
								</div>
							</div>
						</div>
					<?php $category = $benefit->item_category; $i++; ?>
				<?php endforeach; ?>
			</div>
		</div>
	</section>
<?php endif; ?>