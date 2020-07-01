<?php
	$types = [
		'id' => [
			[
				'title' => 'DITERIMA',
				'subtitle' => 'Kami menerima sampah anorganik kertas (HVS, karton, kardus) dan non-kertas (plastik, kaca, logam, sachet).',
				'icon' => 'accepted.png'
			],
			[
				'title' => 'TIDAK DITERIMA',
				'subtitle' => 'Saat ini kami belum menerima sampah organik, sampah elektronik, sampah medis, sampah B3, dan sampah popok/pembalut via program ini.',
				'icon' => 'not-accepted.png'
			]
		],
		'en' => [
			[
				'title' => 'ACCEPTED',
				'subtitle' => 'We accept inorganic paper waste (HVS, carton, cardboard) and non-paper waste (plastic, glass, metal, sachets).',
				'icon' => 'accepted.png'
			],
			[
				'title' => 'NOT ACCEPTED',
				'subtitle' => 'Currently we do not accept the following waste: electronic waste, medical waste, toxic and hazardous waste (B3), as well as diapers/sanitary products via this progam.',
				'icon' => 'not-accepted.png'
			]
		]
	];
	$waste_types=$this->session->userdata('language')=='en' ? $types['en'] : $types['id'];

?>
<!-- Mockup Block -->
<div id="<?= $section_slug ?>" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>
<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-py-70' ?>">
	<div class="container">
		<div class="text-center g-mb-20">
			<h3 class="g-color-black g-font-weight-600 "><?= strtoupper(get_lang('waste-type')) ?></h3>
			<hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
		</div>
		<div class="row justify-content-center">
			<?php foreach ($waste_types as $waste_type): ?>
				<div class="col-md">
					<article class="g-transition-0_3">
						<div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 30px 0 0 0!important;">
							<img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= base_url(DIR_ICON . 'waste-type/' . $waste_type['icon']) ?>" alt="<?=$waste_type['title']?> icon" style="max-height: 250px">
							<div class="g-pa-15">
								<?= $this->agent->is_mobile() ? '': '<h2 class="h5 g-color-black g-font-weight-900 mb-4 g-font-size-24" style="margin-bottom: 5px!important;"> '.$waste_type['title']. '</h2>'?>
								<div class="g-px-10 g-mt-25 g-color-black <?= $this->agent->is_mobile() ?'g-font-size-12' : 'g-font-size-18'?>"><?= $waste_type['subtitle']?></div>
							</div>
						</div>
					</article>
				</div>
			<?php endforeach; ?>
		</div>
	</div>
</section>
<!-- End Mockup Block -->
