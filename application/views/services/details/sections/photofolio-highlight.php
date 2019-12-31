<?php if (!empty($photofolios)): ?>
	<section class="g-bg-secondary">
		<div id="<?= $section_slug ?>" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>
		<div class="container <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-pt-140 g-pb-70' ?>">
			<div class="text-center g-mb-50">
				<h2 class="g-font-asap g-color-black g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= $section_name ?></h2>
				<hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
				<p class="g-color-white-opacity-0_8 d-none"><?= lang('brand_partner_subtitle') ?></p>
			</div>
			<div id="photofolio-highlight-carousel" class="owl-theme row" style="margin: 0 0 30px 0!important;padding:0px">
				<?php
					if ($this->agent->is_mobile()) {
						if (count($photofolios) > 1) {
							$carousel = true;
						} else {
							$carousel = false;
						}
					} else {
						if (count($photofolios) > 2) {
							$carousel = true;
						} else {
							$carousel = false;
						}
					}
					foreach ($photofolios as $porto) :
						?>
						<div class="col-<?= $this->agent->is_mobile() ? '12' : '6' ?>">
							<div class="row no-gutters g-bg-white u-shadow-v20 g-mx-10">
								<?php if ($this->agent->is_mobile()): ?>
									<div class="col-12">
										<img class="img-fluid mx-auto" src="<?= get_image(DIR_SERVICE . $service_id . '/photofolio/p-' . $porto->photofolio_image) ?>" alt="<?= 'thumbnail' . $porto->photofolio_client ?>" style="object-fit: cover;width: 100%;height: 150px">
									</div>
								<?php endif; ?>
								<div class="col-<?= $this->agent->is_mobile() ? '12' : '6' ?> g-pa-30">
									<img class="g-mb-15" src="<?= get_image(DIR_SERVICE . $service_id . '/photofolio/' . $porto->photofolio_client_logo) ?>" alt="<?= $porto->photofolio_client ?>" style="max-height: 50px; max-width: 80px;margin-bottom: 5px;">
									<div class="g-font-weight-600 g-font-size-20 g-line-height-1_1 g-mb-5"><?= $porto->photofolio_client ?></div>
									<div class="g-font-size-12 g-line-height-1_1" style="color:#AFAFAF"><?= limit_word($porto->photofolio_client_address, 3, ",") ?></div>
									<div class="g-mt-30 g-font-size-13">
										<?php if (!empty($porto->photofolio_waste_collected)) { ?>
											<div class="row no-gutters g-line-height-1_3 g-mt-10">
												<div class="col-auto g-mr-10">
													<img src="<?=get_image(DIR_ICON.'refresh.png')?>" alt="" style="max-width: 20px">
												</div>
												<div class="col" style="color:#6C6C6C">
													<?=get_lang('average-of-waste-collected')?>
													<br>
                          <?php $waste_collected=explode(' ',$porto->photofolio_waste_collected) ?>
													<strong><?= view_number($waste_collected[0]).' '.get_lang($waste_collected[1])?></strong>
												</div>
											</div>
											<?php
										};
											if (!empty($porto->photofolio_mou)) {
												?>
												<div class="row no-gutters g-line-height-1_3 g-mt-10">
													<div class="col-auto g-mr-10">
														<img src="<?=get_image(DIR_ICON.'check-circle-o.png')?>" alt="" style="max-width: 20px">
													</div>
													<div class="col" style="color:#6C6C6C">
                            <?=get_lang('mou-signed')?>
														<br>
														<strong><?= date("Y",strtotime($porto->photofolio_mou)) ?></strong>
													</div>
												</div>
												<?php
											};
											if (!empty($porto->photofolio_duration)) {
												?>
												<div class="row no-gutters g-line-height-1_3 g-mt-10">
													<div class="col-auto g-mr-10">
														<img src="<?=get_image(DIR_ICON.'calendar.png')?>" alt="" style="max-width: 20px">
													</div>
													<div class="col" style="color:#6C6C6C">
														Period of Contract
														<br>
                            <?php $duration=explode(' ',$porto->photofolio_duration) ?>
                            <strong><?= view_number($duration[0]).' '.get_lang($duration[1])?></strong>
													</div>
												</div>
												<?php
											};
											if (!empty($porto->photofolio_collection_schedulle)) {
												?>
												<div class="row no-gutters g-line-height-1_3 g-mt-10">
													<div class="col-auto g-mr-10">
														<img src="<?=get_image(DIR_ICON.'refresh-clock.png')?>" alt="" style="max-width: 20px">
													</div>
													<div class="col" style="color:#6C6C6C">
														Collection Schedule
														<br>
                            <?php $collection_schedulle=explode(' ',$porto->photofolio_collection_schedulle) ?>
                            <strong><?= empty($collection_schedulle[1]) ? get_lang($collection_schedulle[0]) : view_number($collection_schedulle[0]).' '.get_lang($collection_schedulle[1])?></strong>
													</div>
												</div>
												<?php
											};
											if (!empty($porto->photofolio_start) && !empty($porto->photofolio_end)){
                        ?>
                        <div class = "row no-gutters g-line-height-1_3 g-mt-10">
                          <div class = "col-auto g-mr-10">
                            <img src = "<?= get_image(DIR_ICON . 'calendar.png') ?>" alt = "" style = "max-width: 20px">
                          </div>
                          <div class = "col" style = "color:#6C6C6C">
                            Period
                            <br>
                            <?php
                            $start_day=date('d',strtotime($porto->photofolio_start));
                            $start_month=date('M',strtotime($porto->photofolio_start));
                            $start_year=date('Y',strtotime($porto->photofolio_start));
                            $end_day=date('d',strtotime($porto->photofolio_end));
                            $end_month=date('M',strtotime($porto->photofolio_end));
                            $end_year=date('Y',strtotime($porto->photofolio_end));
                           if ($start_year==$start_year){
                             if ($start_month==$end_month){
                               ?>
                               <strong><?= date("d", strtotime($porto->photofolio_start)) ?> - <?= date("d F Y", strtotime($porto->photofolio_end)) ?></strong>
                               <?php
                             }else{
                               ?>
                               <strong><?= date("d F", strtotime($porto->photofolio_start)) ?> - <?= date("d F Y", strtotime($porto->photofolio_end)) ?></strong>
                               <?php
                             }
                            }else{
                             ?>
                             <strong><?= date("d F Y", strtotime($porto->photofolio_start)) ?> - <?= date("d F Y", strtotime($porto->photofolio_end)) ?></strong>
                             <?php
                            }
                            ?>
                          </div>
                        </div>
                        <?php
                      }else {
                        if (!empty($porto->photofolio_start)) {
                          ?>
                          <div class = "row no-gutters g-line-height-1_3 g-mt-10">
                            <div class = "col-auto g-mr-10">
                              <img src = "<?= get_image(DIR_ICON . 'calendar.png') ?>" alt = "" style = "max-width: 20px">
                            </div>
                            <div class = "col" style = "color:#6C6C6C">
                              Period Start
                              <br>
                              <strong><?= date("d M Y", strtotime($porto->photofolio_start)) ?></strong>
                            </div>
                          </div>
                          <?php
                        }
                      }
                    if (!empty($porto->photofolio_audience)) {
                      ?>
                      <div class="row no-gutters g-line-height-1_3 g-mt-10">
                        <div class="col-auto g-mr-10">
                          <img src="<?=get_image(DIR_ICON.'calendar.png')?>" alt="" style="max-width: 20px">
                        </div>
                        <div class="col" style="color:#6C6C6C">
                          <?=get_lang('estimated-number-of-participants')?>
                          <br>
                          <strong><?= get_lang('approximately').' '.$porto->photofolio_audience.' '.get_lang('people') ?></strong>
                        </div>
                      </div>
                      <?php
                    };
										?>
									</div>
								</div>
								<?php if (!$this->agent->is_mobile()): ?>
									<div class="col-6">
										<img class="img-fluid mx-auto" src="<?= get_image(DIR_SERVICE . $service_id . '/photofolio/l-' . $porto->photofolio_image) ?>" alt="<?= 'thumbnail' . $porto->photofolio_client ?>" style="object-fit: cover;height: 100%">
									</div>
								<?php endif; ?>
							</div>
						</div>
					<?php
					endforeach;
				?>
			</div>
			<?php
				if ($carousel == true) {
					?>
					<script>
              $(window).ready(function () {
                  var element_id = '#photofolio-highlight-carousel';
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
                  var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                  // console.log(screen_display);
                  var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '98.5' ?>) / 100) / 2;
                  //console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
								<?php
								if ($this->agent->is_mobile()) {
									echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 483px;width: 74%;right: '+margin_side+'px;')";
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
	</section>
<?php endif; ?>