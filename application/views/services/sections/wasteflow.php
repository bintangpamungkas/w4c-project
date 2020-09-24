<?php
$copywriting = [
	'en' => [
		'title' => 'Waste Flow',
		'subtitle' => 'We ensure that the waste is managed optimally and responsibly to <strong> reduce</strong> the amount of waste that ends up in the landfill',
		'flow' => [
			[
				'position' => 'center',
				'items' => [
					[
						'title' => 'Waste is collected in segregated state by Collecting Partners',
						'icon' => 'angkut2.png'
					]
				]
			],
			[
				'position' => 'center',
				'items' => [
					['icon' => 'arrow-right.png']
				]
			],
			[
				'position' => 'center',
				'items' => [
					[
						'title' => 'More detailed waste segregation by Processing Partners',
						'icon' => '2.png'
					],
				]
			],
			[
				'position' => 'center',
				'items' =>
				[
					['icon' => 'arrow-top-right.png'],
					[
						'icon' => 'arrow-down-right.png',
					]
				]
			],
			[
				'position' => 'center',
				'items' => [
					[
						'title' => 'An estimated 80-90% of waste will be recycled by Recycling Partners',
						'icon' => '3a.png'
					],
					[
						'title' => 'Waste is stored in transfer point provided by the regional government (TPS)',
						'icon' => '3b.png'
					],
				]
			],
			[
				'position' => 'end',
				'items' =>
				[
					['icon' => 'arrow-right.png'],
				]
			],
			[
				'position' => 'end',
				'items' =>
				[
					
					[
						'title' => 'An estimated 10-20% of residual waste will be sent to the city\'s official landfill',
						'icon' => '4.png'
					],
				]
			],
		]
	],
	'id' => [
		'title' => 'Alur Pengelolaan Sampah',
		'subtitle' => 'Kami memastikan sampah dikelola secara optimal dan bertanggung jawab untuk <strong>mengurangi</strong> jumlah sampah yang berakhir di TPA',
		'flow' => [
			[
				'position' => 'center',
				'items' => [
					[
						'title' => 'Sampah diangkut dalam keadaan terpilah oleh Mitra Angkut',
						'icon' => 'angkut2.png'
					]
				]
			],
			[
				'position' => 'center',
				'items' => [
					['icon' => 'arrow-right.png']
				]
			],
			[
				'position' => 'center',
				'items' => [
					[
						'title' => 'Sampah dipilah ulang oleh Mitra Olah',
						'icon' => '2.png'
					],
				]

			],
			[
				'position' => 'center',
				'items' =>
				[
					['icon' => 'arrow-top-right.png'],
					['icon' => 'arrow-down-right.png']
				]
			],
			[
				'position' => 'center',
				'items' => [
					[
						'title' => 'Sampah daur ulang diolah Mitra Daur Ulang (sekitar 80-90% dari total sampah)',
						'icon' => '3a.png'
					],
					[
						'title' => 'Residu dikirim ke titik transfer TPS yang disediakan pemerintah daerah',
						'icon' => '3b.png'
					],
				]
			],
			[
				'position' => 'end',
				'items' =>
				[
					['icon' => 'arrow-right.png'],
				]
			],
			[
				'position' => 'end',
				'items' =>
				[
					[
						'title' => 'Sampah residu dibawa ke TPA resmi kota (sekitar 10-20% dari total sampah)',
						'icon' => '4.png'
					],
				]
			],
		]
	]
];

$copy = json_decode(json_encode($copywriting[$lang]));
?>

<!-- Mockup Block -->
<div id="wasteflow" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>
<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-py-70' ?>">
	<div class="container">
		<div class="text-center g-mb-50">
			<h2 class="g-font-asap g-color-black g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?= $copy->title ?></h2>
			<hr class="g-width-70 g-mt-10 g-mb-0 g-brd-2 g-brd-blue">
			<div class="mt-2 mb-4"><?= $copy->subtitle ?></div>
			<?php if($this->agent->is_mobile()):?>
				<div class="row no-gutters">
				<?php foreach ($copy->flow as $i => $flow) : ?>
					<div class="col-12">
						<div class="row align-items-<?= $flow->position ?> justify-content-center" style="height:100%">
							<?php foreach ($flow->items as $j => $item) : ?>
								<div class="col-6">
									<div class="row no-gutters align-items-center text-center" style="height:100%">
										<img class="<?=empty($item->title) ? 'g-my-20' : 'g-py-20 g-px-30'?>" src="<?= get_image(DIR_ICON.'flow/'.str_replace('right','down',$item->icon))?>" alt="<?= $item->icon ?>" style="<?=empty($item->title) ? 'height:22px;margin-right:auto;margin-left:auto' : 'width:100%;'?>">
										<div class="g-font-size-12 g-color-black"><?= @$item->title ?></div>
									</div>
								</div>
							<?php endforeach; ?>
						</div>
					</div>
				<?php endforeach; ?>
			</div>
			<?php else: ?>
			<div class="row no-gutters">
				<?php foreach ($copy->flow as $i => $flow) : ?>
					<div class="col" >
						<div class="row no-gutters align-items-<?= $flow->position ?>" style="height:100%">
							<?php foreach ($flow->items as $j => $item) : ?>
								<div class="col-12">
									<div class="row no-gutters align-items-center" style="height:100%">
										<img class="g-pa-<?=empty($item->title) ? '' : '15'?>" src="<?= get_image(DIR_ICON.'flow/'.$item->icon) ?>" alt="<?= $item->icon ?>" style="width:<?=empty($item->title) ? '33px;margin-left:auto;margin-right:auto' : '100%'?>;<?= $i==5 ? 'margin-bottom:80px':'' ?>">
										<div class="g-font-size-14 g-cp;pr-black"><?= @$item->title ?></div>
									</div>
								</div>
							<?php endforeach; ?>
						</div>
					</div>
				<?php endforeach; ?>
			</div>
			<?php endif; ?>
		</div>
	</div>
</section>