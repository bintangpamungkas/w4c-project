<div id="<?= $section_slug ?>" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>
<section class="g-bg-gray-light-v5 <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-0' : 'g-pt-100 g-pb-100' ?>">
	<?php

		$pricings = [
			'id' => [
				[
					'price_title' => 'PAKET 6 BULAN',
					'price_subtitle' => 'Anda akan berlangganan selama 6 bulan',
					'price_discount' => 'Rp.1.155.000',
					'price_new' => 'Rp.990.000',
					'price_tax' => 'Termasuk PPN',
				],
				[
					'price_title' => 'PAKET 1 TAHUN',
					'price_subtitle' => 'Anda akan berlangganan selama 1 tahun',
					'price_discount' => 'Rp.2.310.000',
					'price_new' => 'Rp.1.980.000',
					'price_tax' => 'Termasuk PPN',
				],
			],
			'en' => [
				[
					'price_title' => 'PACKAGE FOR 6 MONTHS',
					'price_subtitle' => 'You will subscribe for 6 months',
					'price_discount' => 'Rp.1.155.000',
					'price_new' => 'Rp.990.000',
					'price_tax' => 'including VAT',
				],
				[
					'price_title' => 'PACKAGE FOR 1 YEAR',
					'price_subtitle' => 'You will subscribe for 1 year',
					'price_discount' => 'Rp.2.310.000',
					'price_new' => 'Rp.1.980.000',
					'price_tax' => 'including VAT',
				],
			]
		];
		$pricing_content = $this->session->userdata('language') == 'en' ? $pricings['en'] : $pricings['id'];
	?>
	<?php
		if ($this->agent->is_mobile()):
			?>

			<div class="container">
				<div class="text-center g-mb-20">
					<h3 class="g-color-black g-font-weight-600 "><?= strtoupper(get_lang('pricing')) ?></h3>
					<hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
				</div>
				<div class="row align-items-center justify-content-center">

					<h5 class="col-md-12 text-center g-mb-10">
						<strong><?= $this->session->userdata('language') == 'en' ? 'Special Discount in 2020' : 'Diskon Khusus Tahun 2020' ?></strong>
					</h5>

					<h6 class="col-md-12 text-center g-mb-30">
						<strike class="text-muted">Rp. 192.500</strike> <strong class="g-color-info">Rp. 165.000 </strong>/ <?= $this->session->userdata('language') == 'en' ? 'Month' : 'Bulan' ?>
					</h6>


					<div id="testi-carousel" class="owl-theme">
						<?php
							foreach ($pricing_content as $pricing):
								?>
								<article class="text-center g-bg-white g-rounded-15 g-overflow-hidden g-transform-scale-1_05--hover g-transition-0_3">
									<!-- Article Header -->
									<header class="g-bg-info g-pos-rel g-px-20 g-pt-30 g-pb-50">
										<svg class="g-pos-abs g-bottom-0 g-left-0 g-right-0" version="1.1" preserveAspectRatio="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
										     width="100%" height="70px" viewBox="0 0 300 70">
											<path d="M30.913,43.944c0,0,42.911-34.464,87.51-14.191c77.31,35.14,113.304-1.952,146.638-4.729 c48.654-4.056,69.94,16.218,69.94,16.218v54.396H30.913V43.944z" opacity="0.6"
											      fill="#ffffff"></path>
											<path d="M-35.667,44.628c0,0,42.91-34.463,87.51-14.191c77.31,35.141,113.304-1.952,146.639-4.729 c48.653-4.055,69.939,16.218,69.939,16.218v54.396H-35.667V44.628z" opacity="0.6"
											      fill="#ffffff"></path>
											<path d="M43.415,98.342c0,0,48.283-68.927,109.133-68.927c65.886,0,97.983,67.914,97.983,67.914v3.716 H42.401L43.415,98.342z" opacity="0.7" fill="#ffffff"></path>
											<path
												d="M-34.667,62.998c0,0,56-45.667,120.316-27.839C167.484,57.842,197,41.332,232.286,30.428 c53.07-16.399,104.047,36.903,104.047,36.903l1.333,36.667l-372-2.954L-34.667,62.998z"
												fill="#ffffff"></path>
										</svg>
										<strong class="d-block g-color-white g-font-size-20 g-line-height-0_7 g-mb-10">
											<?= $pricing['price_title'] ?>
										</strong>
										<h6 class="g-color-white-opacity-0_7 g-mb-20"><?= $pricing['price_subtitle'] ?></h6>
									</header>
									<!-- End Article Header -->

									<!-- Article Content -->
									<div class="g-px-20 g-pt-0 g-pb-20">
										<ul class="list-unstyled g-mb-40">
											<li class="g-mb-0 g-font-size-15 text-muted"><strike><?= $pricing['price_discount'] ?></strike></li>
											<li class="g-font-size-25 text-info"><?= $pricing['price_new'] ?></li>
											<li class="g-mb-20 text-muted"><?= $pricing['price_tax'] ?></li>
										</ul>
										<a class="btn text-uppercase btn-info g-color-white--focus g-rounded-50 g-font-size-12 g-font-weight-700 g-pa-15-30 g-mb-10"
										   href="<?= site_url('service/personal-waste-management/join') ?>"><?= $this->session->userdata('language') == 'en' ? 'SUBSCRIBE' : 'BERLANGGANAN' ?></a>
									</div>
									<!-- End Article Content -->
								</article>
							<?php
							endforeach;
						?>
					</div>

					<script>
						$(document).ready(function () {
							var element_id = '#testi-carousel';
							$(element_id).owlCarousel({
								stagePadding: <?= $this->agent->is_mobile() ? '30' : '70' ?>,
								loop: false,
								margin: 20,
								dots: true,
								nav: true,
								autoplay: true,
								autoplayTimeout: 10000,
								autoplayHoverPause: true,
								responsive: {
									0: {
										items: 1
									},
									600: {
										items: 2
									},
									1000: {
										items: 2
									}
								},
								navText: ['<i class="fa fa-angle-left g-color-black nav-arrow-left <?= $this->agent->is_mobile() ? 'd-none' : '' ?>" aria-hidden="true" style="transform: scale(2)"></i>', '<i class="<?= $this->agent->is_mobile() ? 'd-none' : '' ?> fa fa-angle-right g-color-black nav-arrow-right" aria-hidden="true" style="transform: scale(2)"></i>']
							});

							//$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
							$(element_id + ' .owl-controls').attr('style', 'margin-top: 25px;margin-bottom: 20px');

							$(element_id + ' .owl-stage-outer').css({'padding-top': 1, 'margin-left':<?= $this->agent->is_mobile() ? '15' : '60' ?>});
							$(element_id + ' .owl-stage').css('padding-left', 10);

							var screen_display =<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
							console.log(screen_display);
							var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '60' : '80' ?>) / 100) / 2;
							console.log('screen : ' + screen_display + 'nav : ' + screen_display * <?= $this->agent->is_mobile() ? '8' : '9' ?>0 / 100 + 'batas : ' + margin_side);
							<?php
							if ($this->agent->is_mobile()) {
								echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 275px;width: 68%;right: '+margin_side+'px;')";
							} else {
								echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 110px;width: 84%;right: '+margin_side+'px;')";
							}
							?>
						});

					</script>

					<style>
						.owl-prev {
							width: 15px;
							height: 100px;
							position: absolute;
							top: 40%;
							margin-left: -20px;
							display: block !important;
							border: 0px solid black;
						}

						.owl-next {
							width: 15px;
							height: 100px;
							position: absolute;
							top: 40%;
							right: -25px;
							display: block !important;
							border: 0px solid black;
						}

						.owl-prev i, .owl-next i {
							transform: scale(1, 6);
							color: #ccc;
						}
					</style>


				</div>

			</div>

		<?php
		else:
			?>

			<div class="container">
				<div class="text-center g-mb-30">
					<h2 class="g-color-black g-font-weight-600 "><?= strtoupper(get_lang('pricing')) ?></h2>
					<hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
				</div>
				<div class="row align-items-center justify-content-center">
					<h4 class="col-md-12 text-center g-mb-10">
						<strong><?= $this->session->userdata('language') == 'en' ? 'Special Discount in 2020' : 'Diskon Khusus Tahun 2020' ?></strong>
					</h4>
					<h5 class="col-md-12 text-center g-mb-30">
						<strike class="text-muted">Rp. 192.500</strike> <strong class="g-color-info">Rp. 165.000 </strong>/ <?= $this->session->userdata('language') == 'en' ? 'Month' : 'Bulan' ?>
					</h5>

					<?php
						foreach ($pricing_content as $pricing):
							?>

							<div class="col-md-4 g-mb-30">
								<!-- Article -->
								<article class="text-center g-bg-white g-rounded-15 g-overflow-hidden g-transform-scale-1_05--hover g-transition-0_3">
									<!-- Article Header -->
									<header class="g-bg-info g-pos-rel g-px-20 g-pt-30 g-pb-50">
										<svg class="g-pos-abs g-bottom-0 g-left-0 g-right-0" version="1.1" preserveAspectRatio="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
										     width="100%" height="70px" viewBox="0 0 300 70">
											<path d="M30.913,43.944c0,0,42.911-34.464,87.51-14.191c77.31,35.14,113.304-1.952,146.638-4.729 c48.654-4.056,69.94,16.218,69.94,16.218v54.396H30.913V43.944z" opacity="0.6"
											      fill="#ffffff"></path>
											<path d="M-35.667,44.628c0,0,42.91-34.463,87.51-14.191c77.31,35.141,113.304-1.952,146.639-4.729 c48.653-4.055,69.939,16.218,69.939,16.218v54.396H-35.667V44.628z" opacity="0.6"
											      fill="#ffffff"></path>
											<path d="M43.415,98.342c0,0,48.283-68.927,109.133-68.927c65.886,0,97.983,67.914,97.983,67.914v3.716 H42.401L43.415,98.342z" opacity="0.7" fill="#ffffff"></path>
											<path
												d="M-34.667,62.998c0,0,56-45.667,120.316-27.839C167.484,57.842,197,41.332,232.286,30.428 c53.07-16.399,104.047,36.903,104.047,36.903l1.333,36.667l-372-2.954L-34.667,62.998z"
												fill="#ffffff"></path>
										</svg>
										<strong class="d-block g-color-white g-font-size-20 g-line-height-0_7 g-mb-20">
											<?= $pricing['price_title'] ?>
										</strong>
										<h6 class="g-color-white-opacity-0_7 g-mb-20"><?= $pricing['price_subtitle'] ?></h6>
									</header>
									<!-- End Article Header -->

									<!-- Article Content -->
									<div class="g-px-20 g-pt-20 g-pb-20">
										<ul class="list-unstyled g-mb-40">
											<li class="g-mb-0 g-font-size-20 text-muted"><strike><?= $pricing['price_discount'] ?></strike></li>
											<li class="g-font-size-30 text-info"><?= $pricing['price_new'] ?></li>
											<li class="g-mb-0 text-muted"><small><?= $pricing['price_tax'] ?></small></li>
										</ul>
										<a class="btn text-uppercase btn-info g-color-white--focus  g-rounded-50 g-font-size-12 g-font-weight-700 g-pa-15-30 g-mb-10"
										   href="<?= site_url('service/personal-waste-management/join') ?>"><?= $this->session->userdata('language') == 'en' ? 'SUBSCRIBE' : 'BERLANGGANAN' ?></a>
									</div>
									<!-- End Article Content -->
								</article>
								<!-- End Article -->
							</div>

						<?php
						endforeach;
					?>

				</div>

			</div>

		<?php
		endif;
	?>

</section>


