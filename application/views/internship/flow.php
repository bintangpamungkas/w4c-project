<!-- Our Value -->
<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-40' : 'g-bg-white g-pb-50 g-pt-100' ?>">
	<div class="container">
		<h2 class="g-font-asap g-color-black text-uppercase text-center g-font-weight-600 g-font-size-<?= $this->agent->is_mobile() ? '24' : '35 g-mb-10' ?>"><?= $copy->flow->title ?></h2>
		<hr class="g-width-70 g-my-20 g-brd-2 w4c-brd-blue">
			<!-- <div class="col-md-4 mx-auto pt-3"> -->
		<p class="text-center" style="color: #52575C;font-size:<?= $this->agent->is_mobile() ? '11px' : '14px' ?>;"><?= $copy->flow->subtitle ?></p>
			<!-- </div> -->
		</div>
	<div>
		<?php if ($this->agent->is_mobile()) : ?>
		<div class="container">
			<div class="row justify-content-left g-mt-30">
				<?php foreach ($copy->flow->items as $item) : ?>
					<div class="mx-auto" style="width:<?= $item->width ?>">
						<article class="g-transition-0_3">
							<div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-pa-0 g-pt-20">
								<img class="img-fluid u-block-hover__main--zoom-v1 animated zoomIn" src="<?= get_image(DIR_ICON . 'flow/' . $item->image) ?>" alt="<?= $copy->flow->title . ' ' . $item->title ?>" style="width:<?= $item->size?>;padding-top:<?= $item->top_mobile ?>">
								<div class="g-pt-15">
									<div class="g-font-weight-600 mb-4 g-font-size-8" style="margin-bottom: 5px!important;color: #17A2B8">
										<?= $item->title ?>
									</div>
									<p class="g-font-size-8" style="color:#52575C"><?= $item->description ?></p>
								</div>
							</div>
						</article>
					</div>
				<?php endforeach; ?>
				</div>
			</div>
			<div class="row justify-content-center my_tab_content g-mt-30">
				<?php foreach ($copy->flow->items2 as $item) : ?>
					<div class="mr-3 ml-3" style="width:<?= $item->width ?>">
						<article class="g-transition-0_3">
							<div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-pa-0 g-pt-20">
								<img class="img-fluid u-block-hover__main--zoom-v1 animated zoomIn" src="<?= get_image(DIR_ICON . 'flow/' . $item->image) ?>" alt="<?= $copy->flow->title . ' ' . $item->title ?>" style="width:<?= $item->size?>;padding-top:<?= $item->top_mobile ?>">
								<div class="g-pt-15">
									<div class="g-font-weight-600 mb-4 g-font-size-8" style="margin-bottom: 5px!important;color: #17A2B8">
										<?= $item->title ?>
									</div>
									<p class="g-font-size-8" style="color:#52575C"><?= $item->description ?></p>
								</div>
							</div>
						</article>
					</div>
				<?php endforeach; ?>
			</div>


		<?php else : // DESKTOP 
		?>
		<div class="container">
			<div class="row justify-content-center my_tab_content g-mt-30">
				<?php foreach ($copy->flow->items as $item) : ?>
					<div class="col-lg-2"  style="padding:0px!important">
						<article class="g-transition-0_3">
							<div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-pa-0 g-pt-20">
								<img class="img-fluid u-block-hover__main--zoom-v1 animated zoomIn" src="<?= get_image(DIR_ICON . 'flow/' . $item->image) ?>" alt="<?= $copy->flow->title . ' ' . $item->title ?>" style="width:<?= $item->width ?>;padding-top:<?= $item->top ?>">
								<div class="flow-internship">
									<div class="g-font-weight-600 mb-4 g-font-size-15 pt-3" style="margin-bottom: 5px!important;color: #17A2B8">
										<?= $item->title ?>
									</div>
									<p style="color:#52575C;width:280px!important;margin-left:-40px!important"><?= $item->description ?></p>
								</div>
							</div>
						</article>
					</div>
				<?php endforeach; ?>
			</div>
			<div class="row justify-content-center my_tab_content g-mt-30">
				<?php foreach ($copy->flow->items2 as $item) : ?>
					<div class="col-lg-2"  style="padding:0px!important">
						<article class="g-transition-0_3">
							<div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-pa-0 g-pt-20">
								<img class="img-fluid u-block-hover__main--zoom-v1 animated zoomIn" src="<?= get_image(DIR_ICON . 'flow/' . $item->image) ?>" alt="<?= $copy->flow->title . ' ' . $item->title ?>" style="width:<?= $item->width ?>;padding-top:<?= $item->top ?>">
								<div class="flow-internship">
									<div class="g-font-weight-600 mb-4 g-font-size-15 pt-3" style="margin-bottom: 5px!important;color: #17A2B8">
										<?= $item->title ?>
									</div>
									<p style="color:#52575C;width:280px!important;margin-left:-40px!important" ><?= $item->description ?></p>
								</div>
							</div>
						</article>
					</div>
				<?php endforeach; ?>
			</div>
		</div>
		<?php endif; //end desktop 
		?>
		<div class="col-md-4 mx-auto pt-3">
			<p class="text-center" style="color: #52575C;font-size:<?= $this->agent->is_mobile() ? '11px' : '14px' ?>;"><?= $copy->flow->endtitle ?></p>
		</div>
	</div>
</section>
<!-- End Our Value -->