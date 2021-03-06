<!-- Promo Block -->
<section id="<?= $section_slug ?>" class="bg-white">
	<div class="">
		<div class="container <?= $this->agent->is_mobile() ? 'g-bg-gray-light-v5' : 'bg-white'?>">
			<div class="row with-header" style="<?= $this->agent->is_mobile() ? 'margin-top:100px' : 'margin-top:150px' ?>">
				<?php if (!$this->agent->is_mobile()): ?>
					<div class="col-12 g-pb-20" style="">
						<?php foreach ($breadcrumb as $bread): ?>
							<?php if ($bread['active'] != true): ?>
								<a class="g-color-black g-text-transform-none" href="<?= site_url($bread['url']) ?>">
									<?php echo $bread['title'] ?>
									<i class="fa fa-angle-right g-mx-10"></i>
								</a>
							<?php else: ?>
								<span class="g-font-color-w4c-1"><?php echo $bread['title'] ?> </span>
							<?php endif; ?>
						<?php endforeach; ?>
					</div>
				<?php endif; ?>
				<?php if ($this->agent->is_mobile()): ?>
					<div class="col-md-12 g-pa-0">
						<img src="<?= get_image(DIR_IMG . 'project/' . $service->service_slug . '/header.jpg') ?>" alt="Header <?=$service->service_name?>" style="max-width: 100vw; max-height: 260px; object-fit: cover">
					</div>
				<?php endif; ?>
				<div class="col-md-6 col-12">
					<div class="<?= $this->agent->is_mobile() ? 'bg-white g-mx-10 g-px-15 g-pb-10' : '' ?>" style="<?= $this->agent->is_mobile() ? 'margin-top:-50px; box-shadow:1px 3px 10px 0px rgba(0, 0, 0, 0.1);margin-bottom:-22px' : '' ?>">
						<h5 class="g-color-black-opacity-0_7 <?= $this->agent->is_mobile() ? 'g-font-size-15' : 'g-font-size-20' ?> pt-3"><?= $service->service_subcategory_name ?></h5>
						<h3 class="g-color-w4c-blue-v1 g-font-weight-700 <?= $this->agent->is_mobile() ? 'g-font-size-25' : 'g-font-size-40' ?> mb-4 g-font-asap"><?= $service->service_name ?></h3>
						<div class="row">
							<div class="col-md-12">
								<!-- <h3 class="g-color-black-opacity-0_7 <?= $this->agent->is_mobile() ? 'g-font-size-14' : 'g-font-size-16' ?> g-line-height-1_5 mb-3"><?= ucfirst($service->service_description) ?></h3> -->
							</div>
						</div>
						<div class="pt-4 <?= $this->agent->is_mobile() ? 'g-mt-20' : 'g-mt-20' ?>">
							<div class="<?= $this->agent->is_mobile() ? '' : '' ?>">
								<div class="g-color-black-opacity-0_8"><?= get_lang('client') ?>:<br>
									<?= $service->service_client_name ?>
								</div>
							</div>
						</div>
					</div>
				</div>
				<?php if (!$this->agent->is_mobile()): ?>
					<div class="col-md-6">
						<img src="<?= get_image(DIR_IMG . 'project/' . $service->service_slug . '/l-thumbnail.jpg') ?>" alt="Header <?=$service->service_name?>" style="width:100%">
						<div style="height:30px; background: linear-gradient(90deg, rgba(11, 144, 185, 0.9), rgba(19, 182, 127, 0.9)); margin-left:50px;opacity:0.5">
						</div>
					</div>

				<?php endif; ?>
			</div>
			<br>
		</div>
	</div>
</section>
<!-- End Promo Block -->
