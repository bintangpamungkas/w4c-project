<div id="<?= $section_slug ?>" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>
<section class="g-bg-gray-light-v5 <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-0' : 'g-pt-100 g-pb-100' ?>">
	<?php

	$pricings = [
		'id' => [
			[
				'price_title' => 'PAKET<br>3 BULAN',
				'price_subtitle' => 'Anda akan berlangganan selama 3 bulan',
				'price_discount' => 'Rp557.000',
				'price_new' => 'Rp495.000',
				'price_tax' => 'Termasuk PPN',
				'is_highlight' => 0
			],
			[
				'price_title' => 'PAKET<br>12 BULAN',
				'price_subtitle' => 'Anda akan berlangganan selama 12 bulan',
				'price_discount' => 'Rp2.310.000',
				'price_new' => 'Rp1.485.000',
				'price_tax' => 'Termasuk PPN',
				'is_highlight' => 1,
				'price_discount_message' => 'Lebih Hemat',
				'price_discount_nominal' => 'Rp825.000'
			],
			[
				'price_title' => 'PAKET<br>6 BULAN',
				'price_subtitle' => 'Anda akan berlangganan selama 6 bulan',
				'price_discount' => 'Rp1.155.000',
				'price_new' => 'Rp825.000',
				'price_tax' => 'Termasuk PPN',
				'is_highlight' => 0
			],
		],
		'en' => [
			[
				'price_title' => 'PACKAGE FOR<br>3 MONTHS',
				'price_subtitle' => 'You will subscribe for 3 months',
				'price_discount' => 'Rp557.000',
				'price_new' => 'Rp495.000',
				'price_tax' => 'including VAT',
				'is_highlight' => 0
			],
			[
				'price_title' => 'PACKAGE FOR<br>12 MONTHS',
				'price_subtitle' => 'You will subscribe for 12 months',
				'price_discount' => 'Rp2.310.000',
				'price_new' => 'Rp1.485.000',
				'price_tax' => 'including VAT',
				'is_highlight' => 1,
				'price_discount_message' => 'Save',
				'price_discount_nominal' => 'Rp825.000'
			],
			[
				'price_title' => 'PACKAGE FOR<br>6 MONTHS',
				'price_subtitle' => 'You will subscribe for 6 months',
				'price_discount' => 'Rp1.155.000',
				'price_new' => 'Rp825.000',
				'price_tax' => 'including VAT',
				'is_highlight' => 0
			],
		]
	];
	$pricing_content = $this->session->userdata('language') == 'en' ? $pricings['en'] : $pricings['id'];
	?>
	<?php
	if ($this->agent->is_mobile()) :
	?>
		<style>
			.box {
				position: relative;
			}

			/* common */
			.ribbon {
				width: 200px;
				height: 200px;
				overflow: hidden;
				position: absolute;
			}

			.ribbon::before,
			.ribbon::after {
				position: absolute;
				z-index: -1;
				content: '';
				display: block;
				border: 5px solid #2980b9;
			}

			.ribbon span {
				position: absolute;
				display: block;
				width: 225px;
				padding: 15px 0 10px 0;
				background: linear-gradient(0, #FFCF01 20%, #FFA901 100%);
				/* box-shadow: 0 5px 10px rgba(0,0,0,.1); */
				color: #fff;
				text-shadow: 0 1px 1px rgba(0, 0, 0, .2);
				text-align: center;
			}


			/* top right*/
			.ribbon-top-right {
				top: -15px;
				right: -69px;
			}

			.ribbon-top-right::before,
			.ribbon-top-right::after {
				border-top-color: transparent;
				border-right-color: transparent;
			}

			.ribbon-top-right::before {
				top: 0;
				left: 0;
			}

			.ribbon-top-right::after {
				bottom: 0;
				right: 0;
			}

			.ribbon-top-right span {
				left: -10px;
				top: 20px;
				transform: rotate(45deg);
			}
		</style>
		<div class="container">
			<div class="text-center g-mb-20">
				<h3 class="g-color-black g-font-weight-600 "><?= strtoupper(get_lang('pricing')) ?></h3>
				<hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
			</div>
			<div class="row align-items-center justify-content-center">
				<h5 class="col-md-12 text-center g-mb-10">
					<strong><?= $this->session->userdata('language') == 'en' ? 'Special Discount in 2020' : 'Diskon Khusus Tahun 2020' ?></strong>
				</h5>
				<!-- <h6 class="col-md-12 text-center g-mb-30">
					<strike class="text-muted">Rp 192.500</strike> <strong class="g-color-info">Rp 165.000 </strong>/ <?= $this->session->userdata('language') == 'en' ? 'Month' : 'Bulan' ?>
				</h6> -->
				<div id="testi-carousel" class="owl-theme">
					<?php
					foreach ($pricing_content as $pricing) :
					?>
						<article class="box text-center g-bg-white g-rounded-15 g-overflow-hidden g-transform-scale-1_05--hover g-transition-0_3">

							<!-- Article Header -->
							<header class="g-pos-rel g-px-20 g-pt-30 g-pb-50" style="background-color:<?= $pricing['is_highlight'] == 1 ? '#208DCD' : '#6DCAD9' ?>">
								<svg class="g-pos-abs g-bottom-0 g-left-0 g-right-0" version="1.1" preserveAspectRatio="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="70px" viewBox="0 0 300 70">
									<path d="M30.913,43.944c0,0,42.911-34.464,87.51-14.191c77.31,35.14,113.304-1.952,146.638-4.729 c48.654-4.056,69.94,16.218,69.94,16.218v54.396H30.913V43.944z" opacity="0.6" fill="#ffffff"></path>
									<path d="M-35.667,44.628c0,0,42.91-34.463,87.51-14.191c77.31,35.141,113.304-1.952,146.639-4.729 c48.653-4.055,69.939,16.218,69.939,16.218v54.396H-35.667V44.628z" opacity="0.6" fill="#ffffff"></path>
									<path d="M43.415,98.342c0,0,48.283-68.927,109.133-68.927c65.886,0,97.983,67.914,97.983,67.914v3.716 H42.401L43.415,98.342z" opacity="0.7" fill="#ffffff"></path>
									<path d="M-34.667,62.998c0,0,56-45.667,120.316-27.839C167.484,57.842,197,41.332,232.286,30.428 c53.07-16.399,104.047,36.903,104.047,36.903l1.333,36.667l-372-2.954L-34.667,62.998z" fill="#ffffff"></path>
								</svg>
								<strong class="d-block g-color-white g-font-size-25 g-line-height-1 g-mb-20 g-font-weight-900 <?= $pricing['is_highlight'] == 1 ? 'g-px-30' : '' ?>">
									<?= $pricing['price_title'] ?>
								</strong>
								<h6 class="g-color-white-opacity-0_7 g-mb-20"><?= $pricing['price_subtitle'] ?></h6>
								<?php if ($pricing['is_highlight'] == 1) : ?>
									<div class="ribbon ribbon-top-right">
										<span style="line-height:1.3">
											<div class="text-uppercase" style="font-size: 7px;"><?= $pricing['price_discount_message'] ?></div>
											<div class="g-font-size-12 g-font-weight-800"><?= $pricing['price_discount_nominal'] ?></div>
										</span>
									</div>
								<?php endif; ?>
							</header>

							<!-- End Article Header -->

							<!-- Article Content -->
							<div class="g-px-20 g-pt-0 g-pb-20">
								<ul class="list-unstyled g-mb-40">
									<li class="g-mb-0 g-font-size-15 text-muted"><strike><?= $pricing['price_discount'] ?></strike></li>
									<li class="g-font-size-25 g-font-weight-900" style="color:<?= $pricing['is_highlight'] == 1 ? '#208DCD' : '#6DCAD9' ?>"><?= $pricing['price_new'] ?></li>
									<li class="g-mb-20 text-muted"><?= $pricing['price_tax'] ?></li>
								</ul>
								<a class="btn text-uppercase <?= $pricing['is_highlight'] == 1 ? 'btn-info' : 'btn-outline-info' ?> g-color-white--focus  g-rounded-50 g-font-size-12 g-font-weight-700 g-py-15 g-px-60 g-mb-10" href="<?= site_url('service/personal-waste-management/join') ?>" style="<?= $pricing['is_highlight'] == 1 ? 'background-color:#208DCD' : '' ?>"><?= $this->session->userdata('language') == 'en' ? 'SUBSCRIBE' : 'BERLANGGANAN' ?></a>
							</div>
							<!-- End Article Content -->
						</article>
					<?php
					endforeach;
					?>
				</div>

				<script>
					$(document).ready(function() {
						var element_id = '#testi-carousel';
						$(element_id).owlCarousel({
							stagePadding: <?= $this->agent->is_mobile() ? '30' : '70' ?>,
							loop: false,
							margin: 20,
							dots: false,
							nav: true,
							autoplay: false,
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

						$(element_id + ' .owl-stage-outer').css({
							'padding-top': 1,
							'margin-left': <?= $this->agent->is_mobile() ? '15' : '60' ?>
						});
						$(element_id + ' .owl-stage').css('padding-left', 10);

						var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
						console.log(screen_display);
						var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '60' : '80' ?>) / 100) / 2;
						console.log('screen : ' + screen_display + 'nav : ' + screen_display * <?= $this->agent->is_mobile() ? '80' : '90' ?> / 100 + 'batas : ' + margin_side);
						<?php
						if ($this->agent->is_mobile()) {
							echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 275px;width: 68%;right: '+margin_side+'px;');";
						} else {
							echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 110px;width: 84%;right: '+margin_side+'px;');";
						}
						?>
						$(element_id).trigger('to.owl.carousel', [1, 300, true]);

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

					.owl-prev i,
					.owl-next i {
						transform: scale(1, 6);
						color: #ccc;
					}
				</style>
			</div>
		</div>

	<?php else : ?>
		<style>
			.box {
				position: relative;
			}

			/* common */
			.ribbon {
				width: 200px;
				height: 200px;
				overflow: hidden;
				position: absolute;
			}

			.ribbon::before,
			.ribbon::after {
				position: absolute;
				z-index: -1;
				content: '';
				display: block;
				border: 5px solid #2980b9;
			}

			.ribbon span {
				position: absolute;
				display: block;
				width: 225px;
				padding: 15px 0 10px 0;
				background: linear-gradient(0, #FFCF01 20%, #FFA901 100%);
				/* box-shadow: 0 5px 10px rgba(0,0,0,.1); */
				color: #fff;
				text-shadow: 0 1px 1px rgba(0, 0, 0, .2);
				text-align: center;
			}


			/* top right*/
			.ribbon-top-right {
				top: -15px;
				right: -69px;
			}

			.ribbon-top-right::before,
			.ribbon-top-right::after {
				border-top-color: transparent;
				border-right-color: transparent;
			}

			.ribbon-top-right::before {
				top: 0;
				left: 0;
			}

			.ribbon-top-right::after {
				bottom: 0;
				right: 0;
			}

			.ribbon-top-right span {
				left: -16px;
				top: 20px;
				transform: rotate(45deg);
			}
		</style>
		<div class="container">
			<div class="text-center g-mb-30">
				<h2 class="g-color-black g-font-weight-600 "><?= strtoupper(get_lang('pricing')) ?></h2>
				<hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
			</div>
			<div class="row align-items-center justify-content-center">
				<h4 class="col-md-12 text-center g-mb-10">
					<strong><?= $this->session->userdata('language') == 'en' ? 'Special Discount in 2020' : 'Diskon Khusus Tahun 2020' ?></strong>
				</h4>
				<!-- <h5 class="col-md-12 text-center g-mb-30">
					<strike class="text-muted">Rp 192.500</strike> <strong class="g-color-info">Rp 165.000 </strong>/ <?= $this->session->userdata('language') == 'en' ? 'Month' : 'Bulan' ?>
				</h5> -->

				<?php
				foreach ($pricing_content as $pricing) :
				?>
					<div class="col-md-4 g-pt-100 g-mb-30 g-px-20">
						<!-- Article -->
						<article class="box text-center g-bg-white g-rounded-10 g-overflow-hidden g-transition-0_3" style="box-shadow:7px 8px 20px rgba(0, 0, 0, 0.1);<?= $pricing['is_highlight'] == 1 ? 'transform: scale3d(1.175, 1.3, 1);z-index:2' : 'z-index:1' ?>">
							<!-- Article Header -->
							<header class="g-bg-info g-pos-rel g-px-20 g-pt-30 g-pb-50" style="background-color:<?= $pricing['is_highlight'] == 1 ? '#208DCD' : '#6DCAD9' ?>">
								<svg class="g-pos-abs g-bottom-0 g-left-0 g-right-0" version="1.1" preserveAspectRatio="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="70px" viewBox="0 0 300 70">
									<path d="M30.913,43.944c0,0,42.911-34.464,87.51-14.191c77.31,35.14,113.304-1.952,146.638-4.729 c48.654-4.056,69.94,16.218,69.94,16.218v54.396H30.913V43.944z" opacity="0.6" fill="#ffffff"></path>
									<path d="M-35.667,44.628c0,0,42.91-34.463,87.51-14.191c77.31,35.141,113.304-1.952,146.639-4.729 c48.653-4.055,69.939,16.218,69.939,16.218v54.396H-35.667V44.628z" opacity="0.6" fill="#ffffff"></path>
									<path d="M43.415,98.342c0,0,48.283-68.927,109.133-68.927c65.886,0,97.983,67.914,97.983,67.914v3.716 H42.401L43.415,98.342z" opacity="0.7" fill="#ffffff"></path>
									<path d="M-34.667,62.998c0,0,56-45.667,120.316-27.839C167.484,57.842,197,41.332,232.286,30.428 c53.07-16.399,104.047,36.903,104.047,36.903l1.333,36.667l-372-2.954L-34.667,62.998z" fill="#ffffff"></path>
								</svg>
								<div class="g-px-50 g-line-height-1_1">
									<strong class="d-block g-color-white g-font-size-25 g-line-height-1 g-mb-20 g-font-weight-900 <?= $pricing['is_highlight'] == 1 ? 'g-px-10' : '' ?>">
										<?= $pricing['price_title'] ?>
									</strong>
									<div class="g-color-white g-font-size-15 g-mb-20"><?= $pricing['price_subtitle'] ?></div>
								</div>
								<?php if ($pricing['is_highlight'] == 1) : ?>
									<div class="ribbon ribbon-top-right">
										<span style="line-height:20px">
											<div class="g-font-size-10 text-uppercase"><?= $pricing['price_discount_message'] ?></div>
											<div class="g-font-size-18 g-font-weight-800"><?= $pricing['price_discount_nominal'] ?></div>
										</span>
									</div>
								<?php endif; ?>
							</header>
							<!-- End Article Header -->

							<!-- Article Content -->
							<div class="g-px-20 g-pb-20">
								<ul class="list-unstyled g-mb-40">
									<li class="g-mb-0 g-font-size-20 text-muted"><strike><?= $pricing['price_discount'] ?></strike></li>
									<li class="g-font-size-30 g-font-weight-900" style="color:<?= $pricing['is_highlight'] == 1 ? '#208DCD' : '#6DCAD9' ?>"><?= $pricing['price_new'] ?></li>
									<li class="g-mb-0 g-font-size-10 text-muted"><small><?= $pricing['price_tax'] ?></small></li>
								</ul>
								<a class="btn text-uppercase <?= $pricing['is_highlight'] == 1 ? 'btn-info' : 'btn-outline-info' ?> g-color-white--focus  g-rounded-50 g-font-size-12 g-font-weight-700 g-py-15 g-px-60 g-mb-10" href="<?= site_url('service/personal-waste-management/join') ?>" style="<?= $pricing['is_highlight'] == 1 ? 'background-color:#208DCD' : '' ?>"><?= $this->session->userdata('language') == 'en' ? 'SUBSCRIBE' : 'BERLANGGANAN' ?></a>
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