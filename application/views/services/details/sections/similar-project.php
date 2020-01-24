<?php if (!empty($projects)): ?>
	<section class="g-bg-secondary">
		<div id="<?=$section_slug?>" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>
		<div class="container <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-py-70' ?>">
			<div class="text-center g-mb-50">
				<h2
					class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?=$section_name?></h2>
				<hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
				<p class="g-color-white-opacity-0_8 d-none"><?= get_lang('brand-partner-subtitle') ?></p>
			</div>
			<div class="">
				<div class="">
					<div id="project-highlight-carousel" class="owl-theme row justify-content-md-center"
					     style="margin: 0 0 30px 0!important;padding:0px">
						<?php
							if ($this->agent->is_mobile()) {
								if (count($projects) > 1) {
									$carousel = true;
								} else {
									$carousel = false;
								}
							} else {
								$carousel = false;
							}
							foreach ($projects as $project) :
								if  ($project->service_subcategory_name!=$service->service_subcategory_name):
								?>
								<div class="col-<?= $this->agent->is_mobile() ? '12' : '6' ?> g-my-10" onclick="window.location.href='<?= site_url('project/' . $project->service_slug) ?>'">
									<div class="" style="max-height:200px">
										<div class="d-block u-bg-overlay g-bg-green-gradient-opacity-v2--after g-mb-30 g-mb-0--md">
											<img class="img-fluid" src="<?= get_image(DIR_IMG . 'project/' . $project->service_slug . '/l-thumbnail.jpg') ?>" alt="Image Description" style="object-fit:cover;max-height: 200px;width:100%">
											<div class="u-bg-overlay__inner <?= $this->agent->is_mobile() ? 'g-font-size-14' : 'g-font-size-18' ?> g-font-weight-700 g-color-white g-line-height-1_2 g-pos-abs g-left-20 g-top-30 g-pr-50 text-uppercase ">
												<?= $project->service_subcategory_name ?>
												<div class="g-width-50 g-height-2 g-pos-rel g-bg-white g-mt-25"></div>
												<a class="btn btn-outline-info <?= $this->agent->is_mobile() ? 'btn-xs' : '' ?> g-rounded-50 g-brd-white g-color-white g-mt-20 " href="<?= site_url('project/' . $project->service_slug) ?>"><?= get_lang('view_project') ?> <i class="fa fa-angle-right g-ml-10"></i></a>
											</div>
										</div>
									</div>
								</div>
								<?php
									endif;
							endforeach;
						?>
					</div>
					<?php
						if ($carousel == true) {
							?>
							<script>
                  $(window).ready(function () {
                      var element_id = '#project-highlight-carousel';
                      $(element_id).owlCarousel({
                          loop: true,
                          margin: 0,
                          dots: true,
                          nav: true,
                          autoplay: false,
                          autoplayTimeout: 1500,
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
                          navText: ['<i class="<?=$this->agent->is_mobile() ? 'fa fa-angle-left g-color-gray-light-v1 nav-arrow-left' : 'fa fa-angle-left g-color-w4c-blue-v1' ?>" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile() ? '2' : '4'?>)"></i>', '<i class="<?=$this->agent->is_mobile() ? 'fa fa-angle-right g-color-gray-light-v1 nav-arrow-right' : 'fa fa-angle-right g-color-w4c-blue-v1' ?>" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile() ? '2' : '4'?>)"></i>']
                      });

                      //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
                      $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
                      var screen_display =<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                      // console.log(screen_display);
                      var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '98.5' ?>) / 100) / 2;
                      //console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
										<?php
										if ($this->agent->is_mobile()) {
											echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 260px;width: 74%;right: '+margin_side+'px;')";
										} else {
											echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 200px;width: 101.5%;right: '+margin_side+'px;')";
										}
										?>
                  });

							</script>

							<?php
						}
					?>
				</div>
			</div>
		</div>
	</section>
<?php endif; ?>