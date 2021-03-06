<section class="g-bg-gray-light-v5">
	<div id="<?= $section_slug ?>" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>

	<div class="container <?= $this->agent->is_mobile() ? 'g-pt-40 g-pb-10' : 'g-pt-70 g-pb-10' ?>">
		<div class="row">
			<?php
			if ($this->agent->is_mobile()) {
				?>
				<div class="col-lg-6 g-mb-30>">
					<div class="mb-2 text-center">
						<span class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?= $section_name ?></span>
						<hr class="g-width-50 g-mt-5 g-mb-15 g-brd-2 g-brd-blue">
					</div>
					<div style="background: url('<?= get_image(DIR_IMG.'service/' . $service_id . '/bg/' . $service->service_about_image) ?>');height: 200px;background-size: cover"></div>
				</div>
				<?php
			}
			?>
			<div class="col-lg-6 g-mb-30 <?= $this->agent->is_mobile() ? 'd-none' : '' ?>">
				<div style="background: url('<?= get_image(DIR_IMG.'service/' . $service_id . '/bg/' . $service->service_about_image) ?>');height: 400px;background-size: cover"></div>
			</div>

			<div class="col-md-6 g-mb-30">
				<div class="g-ml-10--lg">
					<div class="mb-2 <?= $this->agent->is_mobile() ? 'd-none' : '' ?>">
						<span class="g-color-gray-dark-v3 g-font-weight-700 g-font-size-18 text-uppercase"><?= $section_name ?></span>
						<?= $this->agent->is_mobile() ? '' : '<div class="g-width-30 g-height-2 g-pos-rel g-bg-info g-mt-5"></div>' ?>
					</div>
					<div class="g-mb-5--lg">
						<h2 class="<?= $this->agent->is_mobile() ? 'h4 text-center g-mb-20 g-mt-30' : 'h2 g-mb-20' ?> g-color-black g-font-weight-600 text-capitalize">
							<?= $service->service_slogan ?>
						</h2>
						<div class="g-py-35 g-px-25 g-color-white" style="background: linear-gradient(90deg, rgba(11, 144, 185, 0.9), rgba(19, 182, 127, 0.9));<?= $this->agent->is_mobile() ? '' : 'margin-left: -100px' ?>">
							<?= $service->service_about ?>
						</div>
					</div>
					<a target="_blank" class="d-none btn btn-info g-font-size-default text-uppercase g-rounded-50 g-py-12 g-px-30" href="#">JOIN NOW</a>
				</div>
			</div>

		</div>
	</div>
</section>
