<section class="g-bg-secondary">
	<div id="our_services" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
	<!--<div style="background:radial-gradient(circle farthest-side at 80% 60%, rgba(90,219,127,0.67), rgba(22,127,148,0.92))">-->
	<div style="position: absolute; bottom: <?= $this->agent->is_mobile() ? '-100px' : '-40px' ?>; width: 100%">
		<div class="container">
			<div class="row g-ma-0">
				<?php if ($this->agent->is_mobile()): ?>
					<?php foreach ($service_targets as $target): ?>
						<div
							class="col-6 g-px-0 g-font-weight-700 <?= $target->service_target_id == 1 ? '' : ' tab-shadow' ?> my_tab <?= $target->service_target_id == 1 ? 'tab-active' : '' ?>"
							data-tab="#tab-<?= $target->service_target_id ?>" data-id="<?= $target->service_target_slug ?>">
							<div class="my_tab_line"></div>
							<a
								class="my_tab_item g-cursor-pointer nav-link my_tab g-py-20 g-font-weight-300 g-font-size-12 g-px-20 text-center text-uppercase">
								<img class="my_tab_icon" src="<?= get_image(DIR_ICON . $target->service_target_icon) ?>"
								     alt="" style="max-width: 80px; max-height: 80px;display:inline-block;">
								<br>
								<?= $target->service_target_name ?>
							</a>
						</div>
					<?php endforeach; ?>
				<?php else: ?>
					<?php foreach ($service_targets as $target): ?>
						<div
							class="col-auto g-px-0 g-font-weight-700 <?= $target->service_target_id == 1 ? '' : ' tab-shadow' ?> my_tab <?= $target->service_target_id == 1 ? 'tab-active' : '' ?>"
							data-tab="#tab-<?= $target->service_target_id ?>" data-id="<?= $target->service_target_slug ?>">
							<div class="my_tab_line"></div>
							<a
								class="my_tab_item g-cursor-pointer nav-link my_tab  g-py-20 g-font-weight-300 g-font-size-20 g-px-45 text-uppercase">
								<img class="my_tab_icon" src="<?= get_image(DIR_ICON . $target->service_target_icon) ?>"
								     alt="" style="max-width: 35px; max-height: 35px">
								<?= $target->service_target_name ?>
							</a>
						</div>
					<?php endforeach; ?>
				<?php endif; ?>
			</div>
		</div>
	</div>
	<div class="container <?= $this->agent->is_mobile() ? 'g-pt-150 g-pb-25' : 'g-py-70' ?>">
		<div class="g-mb-10">
			<h2 class="g-font-asap g-font-color-w4c-1 mb-2"
			    color><?= get_lang('available-services-for-your-location') ?>:</h2>
			<div class="row">
				<div class="col-md-6">
					<form action="<?= site_url('service') ?>" method="get">
						<div class="autocomplete">
							<div class="input-group pull-right">
								<div class="input-group-prepend">
									<span class="input-group-text rounded-0 g-bg-white g-color-gray-light-v1 g-pa-10 border-right-0"
									      style="border:1px solid #0B90B9;"><i class="fa fa-map-marker"></i></span>
								</div>
								<input id="input_city"
								       class="form-control form-control-md border-left-0 rounded-0 g-pa-10 pl-0 border-right-0 g-box-shadow-none "
								       type="text"
								       name="city"
								       value="<?= empty($input_city) ? '' : $input_city ?>"
								       style="border:1px solid #0B90B9; border-radius:0px"
								       placeholder="<?= get_lang('enter-the-name-of-your-city') ?>"
								       autocomplete="off">
								<input type="hidden" name="target" value="<?= empty($service_target) ? '' : $service_target ?>">
								<div class="input-group-btn">
									<button class="btn btn-info g-py-10 g-px-30 g-letter-spacing-2 border-left-0" type="submit"
									        style="border:1px solid #0B90B9;border-radius:0px">
										<?= $this->agent->is_mobile() ? '<i class="icon icon-magnifier  g-font-size-20"></i>' : strtoupper(get_lang('search')) ?>
									</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<script>
        $(document).on('click', '.my_tab', function () {
            var tab_target = $(this).data('tab');
            $('.my_tab').removeClass('tab-active');
            $(this).addClass('tab-active');
            $('.my_tab_content').addClass('d-none');
            $(tab_target).removeClass('d-none');
            $('input[name=target]').val($(this).data('id'));
        })
		</script>
		
		<?php
		if ($this->agent->is_mobile()) {
		?>
		<div class="">
			<?php
			$i = 1;
			foreach ($service_targets as $target) {
				?>
				<div class="my_tab_content <?= $i > 1 ? 'd-none' : '' ?>" id="tab-<?= $target->service_target_id ?>">
					<div class="animated fadeIn row g-ma-0 g-rounded-7"
					     style="background-size: cover;background-position: left;background-repeat: no-repeat">
						<div class="col-md-9 col-12 g-pa-0">
							<div id="service-<?= $target->service_target_id ?>-carousel"
							     class="owl-carousel row owl-theme" style="margin: 0!important;">
								<?php
								$service_id = 0;
								foreach ($target->list as $service) {
									if ($service->service_id != $service_id) {
										?>
										<div class="service-item-content g-mb-20 g-bg-white g-mt-10 box-shadow-down">
											<div
												style="height: 200px;background: url(<?= get_image(DIR_SERVICE . $service->service_slug . '/bg/' . $service->service_thumbnail_image) ?>);background-size: cover;"></div>
											<div class="bg-white g-mx-20 g-px-30 g-py-20"
											     onclick="window.location.href='<?= $service->service_page_url ?>'"
											     style="margin-top: -40px; min-height:250px">
												<div>
													<h6
														class="h6 g-color-black-opacity-0_5 g-font-weight-600 g-mb-5 g-font-size-10 text-uppercase"> <?= $service->service_category_name ?> </h6>
													<h4 class="h6 g-color-black g-font-weight-600 g-mb-5 g-font-size-20"
													    style="min-height: 50px"><?= $service->service_name ?></h4>
													<em
														class="d-block g-color-gray-dark-v4 g-font-style-normal g-font-size-12 g-mb-10"><?= $service->service_description ?></em>
												</div>
												<a class="g-color-info g-color-blue--hover g-font-size-12 g-mt-10 g-font-weight-900"
												   href="<?= $service->service_page_url ?>"><?= strtoupper(get_lang('learn-more')) ?>
													<i class="fa fa-angle-right g-ml-10 g-font-size-15"></i>
												</a>
											</div>
										</div>
										<?php
										$service_id = $service->service_id;
									}
								} //End foreach($target->list as $service)
								?>
							</div>
							<script>
                  $(window).ready(function () {
                      var element_id = '#service-<?= $target->service_target_id ?>-carousel';
                      $(element_id).owlCarousel({
                          stagePadding: <?= $this->agent->is_mobile() ? '30' : '70' ?>,
                          loop: true,
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
                          navText: ['<i class="<?=$this->agent->is_mobile() ? 'fa fa-angle-left g-color-gray-light-v1 nav-arrow-left' : 'fa fa-angle-left g-color-w4c-blue-v1' ?>" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile() ? '2' : '4'?>)"></i>', '<i class="<?=$this->agent->is_mobile() ? 'fa fa-angle-right g-color-gray-light-v1 nav-arrow-right' : 'fa fa-angle-right g-color-w4c-blue-v1' ?>" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile() ? '2' : '4'?>)"></i>']
                      });

                      //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
                      $(element_id + ' .owl-controls').attr('style', 'margin-top: 5px;margin-bottom: 20px');

                      $(element_id + ' .owl-stage-outer').css({'padding-top': 1});
                      $(element_id + ' .owl-stage').css('padding-left', 10);

                      var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                      // console.log(screen_display);
                      var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '60' : '80' ?>) / 100) / 2;
                      // console.log('screen :/ '+screen_display+'nav : '+screen_display*<?= $this->agent->is_mobile() ? '8' : '9' ?>0/100+'batas : '+margin_side);
                      // console.log($('.owl-stage').height());
                      $(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: ' + ($('.owl-stage').height() + 10) + 'px;width: 74%;right: ' + margin_side + 'px;');
                  });
							</script>
							<br>
						</div>
						<div class="col-md-3 g-pa-0">
						</div>
					</div>
				</div>
				<?php
			} //End   foreach ($service_targets as $target)
			?>
			<div class="g-mx-30">
				<div class="g-font-weight-700 g-font-size-20 mb-4">
					<?= get_lang('cant-found-the-solution-you-are-looking-for?') ?>
				</div>
				<a
					class="btn btn-info btn-xl btn-block g-brd-2 g-font-size-13 g-rounded-50 g-font-weight-700 g-color-white--active"
					href="<?= site_url('service') ?>"><?= strtoupper(get_lang('all-services')) ?></a>

				<a class="btn btn-outline-info btn-block g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9"
				   href="<?= site_url('contact') ?>"><?= strtoupper(get_lang('talk-to-our-expert')) ?></a>
			</div>
		</div>
	</div>
	<?php
	} else { // jika desktop
		foreach ($service_targets as $target) {
			?>
			<div class="my_tab_content g-rounded-7" id="tab-<?= $target->service_target_id ?>">
				<div class="row">
					<?php
					if (empty($input_city)) {
						$limit = 5;
					} else {
						$limit = 32;
					}
					$i = 0;
					$service_id = 0;
					foreach ($target->list as $service) {
						if ($service->service_id != $service_id && $i < $limit) {
							?>
							<div class="col-4">
								<div
									class="service-item-content g-mb-5 g-bg-white <?= $this->agent->is_mobile() ? 'g-mt-10' : 'g-mt-25' ?> box-shadow-down">
									<div
										style="height: 200px;background: url(<?= get_image(DIR_SERVICE . $service->service_slug . '/bg/' . $service->service_thumbnail_image) ?>);background-size: cover;"></div>
									<div class="bg-white g-mx-20 g-px-30 g-py-20"
									     onclick="window.location.href='<?= $service->service_page_url ?>'"
									     style="margin-top: -40px; min-height:250px">
										<div>
											<h6
												class="h6 g-color-black-opacity-0_5 g-font-weight-600 g-mb-5 g-font-size-10 text-uppercase"> <?= $service->service_category_name ?> </h6>
											<h4 class="h6 g-color-black g-font-weight-600 g-mb-5 g-font-size-20"
											    style="min-height: 50px"><?= $service->service_name ?></h4>
											<em
												class="d-block g-color-gray-dark-v4 g-font-style-normal g-font-size-12 g-mb-10"><?= $service->service_description ?></em>
										</div>
										<a class="g-color-info g-color-blue--hover g-font-size-12 g-mt-10 g-font-weight-900"
										   href="<?= $service->service_page_url ?>"><?= strtoupper(get_lang('learn-more')) ?>
											<i class="fa fa-angle-right g-ml-10 g-font-size-15"></i>
										</a>
									</div>
								</div>
							</div>
							<?php
							$i++;
							$service_id = $service->service_id;
						}
					} //End foreach($target->list as $service)
					?>
					<div class="col-4">
						<div
							class="service-item-all g-mb-5 g-bg-white <?= $this->agent->is_mobile() ? 'g-mt-10' : 'g-mt-25' ?> box-shadow-down">
							<div class="text-center bg-white g-mx-20 g-px-30 g-py-20">
								<div class="g-mt-100">
									<div class="g-font-weight-700 g-font-size-20 mb-4">
										<?= get_lang('cant-found-the-solution-you-are-looking-for?') ?>
									</div>
									<a class="btn btn-info btn-block g-brd-2 g-font-size-13 g-rounded-50 g-font-weight-700 g-px-30 g-py-9"
									   href="<?= site_url('service') ?>"><?= strtoupper(get_lang('all-services')) ?></a>
									<a class="btn btn-outline-info btn-block g-brd-2 g-font-size-13 g-rounded-50  g-px-30 g-py-9"
									   href="<?= site_url('contact') ?>"><?= strtoupper(get_lang('talk-to-our-expert')) ?></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<?php
		}; //End foreach services_target
	}; //End jika desktop
	?>
</section>


<script>
    $(function () {
        var availableTags = [
					<?php foreach ($coverage_cities as $city) {
					echo '"' . $city->service_coverage_city . '",';
				}
					?>
        ];
        $("#input_city").autocomplete({
            source: availableTags
        });
    });

    $(window).ready(function () {
        $('.my_tab_content').addClass('d-none');
        $('.my_tab_content').first().removeClass('d-none');

        var detail, tempHeight;

        detail = $(".service-item-content");
        tempHeight = 0;

        jQuery.each(detail, function (index, value) {
            if (tempHeight < $(this).height()) {
                tempHeight = $(this).height();
            }
        });
        detail.height(tempHeight);
        $(".service-item-all").height(tempHeight);
    });
</script>