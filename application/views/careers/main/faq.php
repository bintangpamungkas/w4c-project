<!-- FAQ -->
<section class="g-bg-gray-light-v5 g-py-50">
	<div class="container">
		<div class="container text-center g-mb-50">
			<h2 class="g-color-black g-font-weight-600 text-center g-font-size-<?= $this->agent->is_mobile() ? '24' : '35' ?>"><?= $copy->faq->title ?></h2>
			<hr class="g-width-30 g-my-20 g-brd-2 w4c-brd-blue">
			<div class="mt-2 mb-4 g-px-10 text-center"><?= $copy->faq->subtitle ?></div>
		</div>
		<div class="row justify-content-center">
			<div class="col-lg-8 col-12">
				<div id="accordion-11" class="u-accordion " role="tablist" aria-multiselectable="true">
					<?php foreach ($copy->faq->items as $number => $faq) : ?>
						<!-- Card -->
						<div class="card g-brd-none rounded g-mb-20 box-shadow-down-10-1">
							<div id="accordion-11-heading-<?= $number ?>" class="u-accordion__header g-pa-0" role="tab">
								<h5 class="mb-0">
									<a class="collapsed d-flex justify-content-between text-black-important g-font-weight-600 g-color-main g-text-underline--none--hover rounded g-px-30 g-py-20 " href="#accordion-11-body-<?= $number ?>" data-toggle="collapse" data-parent="#accordion-11" aria-expanded="false" aria-controls="accordion-11-body-<?= $number ?>">
										<?= $faq->question ?>
										<span class="u-accordion__control-icon g-color-black-opacity-0_5">
											<i class="fa fa-angle-down"></i>
											<i class="fa fa-angle-up"></i>
										</span>
									</a>
								</h5>
							</div>
							<div id="accordion-11-body-<?= $number ?>" class="collapse" role="tabpanel" aria-labelledby="accordion-11-heading-<?= $number ?>" data-parent="#accordion-11">
								<div class="u-accordion__body g-color-gray-dark-v4 g-pa-30">
									<?= $faq->answer ?>
								</div>
							</div>
						</div>
						<!-- End Card -->
					<?php endforeach;  ?>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- End FAQ -->