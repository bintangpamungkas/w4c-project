<?php if (!empty($service->service_map_url)): ?>
	<!-- Promo Block -->
	<div id="<?= $section_slug ?>" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
	<section class="g-bg-secondary  <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-0' : 'g-pt-70' ?>">
		<div class="text-center mb-2">
			<h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-25' : '' ?>"><?= $section_name ?></h2>
			<hr class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue">
		</div>
		<div class="">
			<iframe src="<?= $service->service_map_url ?>" style="width: 100%; height: 600px; position: relative; overflow: hidden;margin-bottom: -8px;"></iframe>
		</div>
		<div class="container g-pt-20 g-pb-30 <?=$this->agent->is_mobile() ? 'g-font-size-12' : ''?>">
			<?php if ($service_id == 'responsible-waste-management' || $service_id == 'zero-waste-to-landfill' || $service_id == 'inorganic-waste-management' || $service_id == 'event-waste-management' || $service_id == 'in-store-recycling' || $service_id == 'digital-epr' || $service_id == 'solid-waste-management-research' || $service_id == 'community-based-implementation' || $service_id == '3r-school-program' || $service_id == 'black-soldier-fly-learning-center' || $service_id == 'personal-waste-management'): ?>
				<div class="row justify-content-center">
					<div class="col-md-6 g-mb-10 text-center">
						<img src="<?= base_url() . DIR_ICON ?>pin/google-blue.png" alt="blue pin" style="height:30px; margin-right:10px; margin-bottom:0px">
						<?= get_lang('our-coverage') . ' ' . $service->service_name ?>
					</div>
				</div>
			<?php elseif ($service_id == 'akabis-waste-management-academy'): ?>
				<div class="row justify-content-<?=$this->agent->is_mobile() ? 'center' : 'between'?>">
					<div class="col-md-auto g-mb-10">
						<img src="<?= base_url() . DIR_ICON ?>pin/google-blue.png" alt="blue pin" style="height:<?=$this->agent->is_mobile() ? '25px' : '30px'?>; margin-right:10px; margin-bottom:0">
						<?= get_lang('track-record') . ' AKABIS CLASS' ?>
						<br>
						<span style="display:inline-block; <?=$this->agent->is_mobile() ? 'width: 15px;height: 15px' : 'width: 20px;height: 20px'?>; background-color: #7ab74e40; border: 2px solid #7ab74ebb; margin: 10px 16px -5px 5px"></span>
						<?= get_lang('our-coverage') . ' AKABIS CLASS' ?>
					</div>
					<div class="col-md-auto g-mb-10 ">
						<img src="<?= base_url() . DIR_ICON ?>pin/google-green.png" alt="green pin" style="height:<?=$this->agent->is_mobile() ? '25px' : '30px'?>; margin-right:10px; margin-bottom:0">
						<?= get_lang('track-record') . ' AKABIS EXPERIENCE' ?>
						<br>
						<span style="display:inline-block; <?=$this->agent->is_mobile() ? 'width: 15px;height: 15px' : 'width: 20px;height: 20px'?>; background-color: #17a2b840; border: 2px solid #17a2b8bb;margin: 10px 16px -5px 5px"></span>
						<?= get_lang('our-coverage') . ' AKABIS EXPERIENCE' ?>
					</div>
				</div>
			<?php endif; ?>
		</div>
	</section>
	<!-- End Promo Block -->

<?php endif; ?>