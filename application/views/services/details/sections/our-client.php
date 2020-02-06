<?php if (!empty($clients)): ?>
	<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
		<div id="<?= $section_slug ?>" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>
		<div class="divimage dzsparallaxer--target w-100" style="height: 130%; background-image: url(<?= base_url('assets/img/bg/sleek_bg_image_black.png') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
		<div style="background:radial-gradient(circle farthest-side at 80% 60%, rgba(244,244,244,0.91), rgba(244,244,244,0.92))">
			<div class="container <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-py-70' ?>">
				<div class="text-center g-mb-50">
					<h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?= $section_name ?></h2>
					<hr class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue">
					<p class="g-color-white-opacity-0_8 d-none"><?= get_lang('brand_partner_subtitle') ?></p>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-11 col-12">
						<div id="our-client-carousel" class="owl-theme row no-gutters justify-content-center" style="margin: 0 0 30px 0!important;padding:0px">
							<?php
							if ($this->agent->is_mobile()) {
								if (count($clients) > 2) {
									$carousel = true;
								} else {
									$carousel = false;
								}
							} else {
								if (count($clients) > 4) {
									$carousel = true;
								} else {
									$carousel = false;
								}
							}
							
							foreach ($clients as $client) :
								?>
								<div class="<?= $carousel == true ? '' : ($this->agent->is_mobile() ? 'col-6' : 'col-3') ?> text-center">
									<div class="g-bg-white rounded g-pa-10 <?= $this->agent->is_mobile() ? 'g-mx-3 g-mb-5' : 'g-px-30 g-mx-10 g-mb-10' ?>">
										<img class="img-fluid mx-auto" src="<?= get_image('assets/img/service/' . $service_id . '/client/' . $client->client_logo) ?>" alt="Logo <?= $client->client_name ?>">
									</div>
									<small><?= $client->client_name ?></small>
								</div>
							<?php
							endforeach;
							?>
						</div>
						<?php if ($carousel == true): ?>
							<script>
                  $(window).ready(function () {
                      var element_id = '#our-client-carousel';
                      $(element_id).owlCarousel({
                          loop: true,
                          margin: 0,
                          dots: true,
                          nav: true,
                          autoplay: true,
                          autoplayTimeout: 1500,
                          autoplayHoverPause: true,
                          responsive: {
                              0: {
                                  items: 2
                              },
                              600: {
                                  items: 4
                              },
                              1000: {
                                  items: 4
                              }
                          },
                          navText: ['<i class="<?=$this->agent->is_mobile() ? 'fa fa-angle-left g-color-gray-light-v1 nav-arrow-left' : 'fa fa-angle-left g-color-w4c-blue-v1' ?>" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile() ? '2' : '4'?>)"></i>', '<i class="<?=$this->agent->is_mobile() ? 'fa fa-angle-right g-color-gray-light-v1 nav-arrow-right' : 'fa fa-angle-right g-color-w4c-blue-v1' ?>" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile() ? '2' : '4'?>)"></i>']
                      });

                      //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
                      $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
                      var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                      // console.log(screen_display);
                      var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '98.5' ?>) / 100) / 2;
                      //console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
										<?php
										if ($this->agent->is_mobile()) {
											echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 175px;width: 74%;right: '+margin_side+'px;')";
										} else {
											echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 60px;width: 101.5%;right: '+margin_side+'px;')";
										}
										?>
                  });

							</script>
						<?php endif; ?>

					</div>
				</div>
			</div>
		</div>
	</section>
<?php endif; ?>