<?php
$copywriting = [
	'en' => [
		'title' => 'Where Did My Subscription Fees Go?',
		'subtitle' => 'We aim to improve the welfare of our waste management partners. Here is the percentage allocation of the cost paid by our clients:',
		'image' => 'graph-desktop.png',
		'legend' => [
			[
				'icon' => 'angkut.png',
				'number'=> '58%',
				'color'	=> '#0EACDD',
				'title' => 'Waste Collection Partner'
			],
			[
				'icon' => 'olah.png',
				'number'=> '15%',
				'color'	=> '#208DCD',
			'title' => 'Waste Management Partner'
			],
			[
				'icon' => 'perkap.png',
				'number'=> '10%',
				'color'	=> '#2EC1D4',
					'title' => 'Waste Segregation Tools & Equipment Provided for Clients'
			],
			[
				'icon' => 'rnd.png',
				'number'=> '17%',
				'color'	=> '#62C7C3',
					'title' => 'Waste4Change\'s Profit for R&D'
			]
		]
	],
	'id' => [
		'title' => 'Untuk Apa Biaya Berlangganan yang Saya Bayarkan?',
		'subtitle' => 'Kami berkomitmen meningkatkan kesejahteraan mitra pengelola sampah kami. Berikut adalah persentase alokasi biaya yang dibayarkan oleh klien kami:',
		'image' => 'graph-desktop.png',
		'legend' => [
			[
				'icon' => 'angkut.png',
				'number'=> '58%',
				'color'	=> '#0EACDD',
				'title' => 'Mitra Angkut Sampah'
			],
			[
				'icon' => 'olah.png',
				'number'=> '15%',
				'color'	=> '#208DCD',
				'title' => 'Mitra Olah Sampah'
			],
			[
				'icon' => 'perkap.png',
				'number'=> '10%',
				'color'	=> '#2EC1D4',
				'title' => 'Perlengkapan & Peralatan Pemilahan'
			],
			[
				'icon' => 'rnd.png',
				'number'=> '17%',
				'color'	=> '#62C7C3',
				'title' => 'Profit Waste4Change untuk R&D'
			]
		]
	]
];

$copy = json_decode(json_encode($copywriting[$lang]));
?>

<!-- Mockup Block -->
<div id="wasteflow" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>
<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-py-70' ?>">
	<div class="container">
		<div class="text-center">
			<h2 class="g-font-asap g-color-black g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?= $copy->title ?></h2>
			<hr class="g-width-70 g-mt-10 g-mb-0 g-brd-2 g-brd-blue">
			<div class="mt-2 mb-4" style="<?= $this->agent->is_mobile() ? 'padding:0 20px' : 'padding:0 200px'?>; color: rgba(0, 0, 0, 0.5);"><?= $copy->subtitle ?></div>
			<?php if ($this->agent->is_mobile()) : ?>
				<div class="g-pos-rel g-mt-20">
					<img src="<?= get_image(DIR_ICON . 'subscription/' . str_replace('desktop','mobile',$copy->image)) ?>" alt="">
					<div class="g-mt-60 ">
					<?php foreach ($copy->legend as $i => $legend) : ?>
							<div class="text-left g-mb-20 g-px-20 row no-gutters align-items-center">
								<div class="col-auto">
									<img class="" src="<?= get_image(DIR_ICON . 'subscription/' . $legend->icon) ?>" alt="<?= $legend->icon ?>" style="width:50px;">
								</div>
								<div class="col g-pl-10">
									<span class="g-font-size-20 g-font-weight-900 g-line-height-1" style="color:<?= $legend->color ?>"><?= $legend->number ?></span>
									<div class="g-font-size-14" style="color:rgba(0, 0, 0, 0.5)">
										<?= $legend->title ?>
									</div>
								</div>
						</div>
					<?php endforeach; ?>
					</div>
				</div>
			<?php else : ?>
				<!-- Desktop -->
				<div class="g-pt-100" style="position: relative;">
					<img src="<?= get_image(DIR_ICON . 'subscription/'.$copy->image) ?>" alt="">
					<?php foreach ($copy->legend as $i => $legend) : ?>
							<div class="g-mb-20"
							style=" position:absolute; width:350px;
							<?php	
								if($i==0){
									echo 'bottom:10px; left:40px;text-align: right!important;'; 
								}elseif($i==1){
									echo 'top:60px; left:100px;text-align: right!important;';
								}elseif($i==2){
									echo 'bottom:100px; right:15px;text-align: left!important;';
								}elseif($i==3){
									echo 'top:70px; right:50px;text-align: left!important;';
								}
							?>
							"
							>
								<img class="" src="<?= get_image(DIR_ICON . 'subscription/' . $legend->icon) ?>" alt="<?= $legend->icon ?>" style="width:50px; margin-top:-25px; ?>">
								<span class="g-font-size-36 g-font-weight-900 g-ml-15 g-line-height-1" style="color:<?= $legend->color ?>"><?= $legend->number ?></span>
								<div class="g-font-size-22" style="color:rgba(0, 0, 0, 0.5)">
									<?= $legend->title ?>
								</div>
						</div>
					<?php endforeach; ?>
				</div>
			<?php endif; ?>
		</div>
	</div>
</section>