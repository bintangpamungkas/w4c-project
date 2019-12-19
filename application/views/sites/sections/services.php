<section class="g-bg-secondary">
	<div id="our_services" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
	<!--<div style="background:radial-gradient(circle farthest-side at 80% 60%, rgba(90,219,127,0.67), rgba(22,127,148,0.92))">-->
	<div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-25' : 'g-py-70' ?>">
		<div class="row justify-content-center g-ma-0" style="position: absolute; bottom: -40px;">
			<?php foreach ($service_targets as $target): ?>
				<div class="col-auto text-center g-px-0 g-font-weight-700 <?= $target->service_target_id == 1 ? '' : ' tab-shadow' ?> my_tab <?= $target->service_target_id == 1 ? 'tab-active' : '' ?>" data-tab="#tab-<?= $target->service_target_id ?>">
					<div class="my_tab_line"></div>
					<a class="my_tab_item g-cursor-pointer nav-link my_tab  g-py-20 g-font-weight-300 text-uppercase g-font-size-<?= $this->agent->is_mobile() ? '14 g-px-20' : '20 g-px-45' ?>">
						<i class="<?= $target->service_target_icon ?> g-mr-10  g-mb-17 g-font-size-<?= $this->agent->is_mobile() ? '16' : '20' ?>"></i>
						<?= $target->service_target_name ?>
					</a>
				</div>
			<?php endforeach; ?>
		</div>

		<div class="g-mb-10">
			<h2 class="g-font-asap g-font-color-w4c-1 mb-2" color><?= get_lang('available-services-for-your-location') ?></h2>
			<div class="row">
				<div class="col-md-6">
					<form action="<?= site_url('') ?>" method="get">
						<div class="autocomplete">
							<div class="input-group">
							<input id="input_city" class="form-control g-pa-10" type="text" name="city" value="<?= $input_city ?>" style="border:1px solid #0B90B9; border-radius:0px" placeholder="<?= get_lang('enter-location') ?>" autocomplete="off">
							<span class="input-group-btn">
                <button class="btn btn-info g-py-10 g-px-30" type="submit" style="border:1px solid #0B90B9;border-radius:0px"><?= strtoupper(get_lang('search')) ?></button>
              </span>
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
        })
		</script>
		
		<?php
			if ($this->agent->is_mobile()) {
		?>
		<div class="">
			<?php
				foreach ($service_targets as $target) {
					?>
					<div class="my_tab_content" id="tab-<?= $target->service_target_id ?>">
						<div class="animated fadeIn row g-ma-0 g-rounded-7" style="background-size: cover;background-position: left;background-repeat: no-repeat">
							<div class="col-md-9 col-12 g-pa-0">
								<div id="service-<?= $target->service_target_id ?>-carousel" class="owl-carousel row owl-theme" style="margin: 0!important;">
									<?php
										$service_id = 0;
										foreach ($target->list as $service) {
											if ($service->service_id != $service_id) {
												?>
												<div class="g-mb-20 g-bg-white g-mt-10 box-shadow-down">
													<div style="height: 200px;background: url(<?= get_image(DIR_SERVICE . $service->service_slug . '/bg/' . $service->service_thumbnail_image) ?>);background-size: cover;"></div>
													<div class="bg-white g-mx-20 g-px-30 g-py-20" onclick="window.location.href='<?= $service->service_page_url ?>'" style="margin-top: -40px; height:250px">
														<!--                            --><?php //if($service['is_new']==true): ?>
														<!--                              <span class="g-color-white g-bg-primary g-rounded-5 g-font-size-10 g-px-8 g-py-3 g-ml-5 float-right">--><?//= lang('new') ?><!--</span>-->
														<!--                            --><?php //endif; ?>
														<div>
															<h6 class="h6 g-color-black-opacity-0_5 g-font-weight-600 g-mb-5 g-font-size-10 text-uppercase"> <?= $service->service_category_name ?> </h6>
															<h4 class="h6 g-color-black g-font-weight-600 g-mb-5 g-font-size-20" style="min-height: 50px"><?= $service->service_name ?></h4>
															<em class="d-block g-color-gray-dark-v4 g-font-style-normal g-font-size-12 g-mb-10"><?= $service->service_description ?></em>
														</div>
														<a class="g-color-info g-color-blue--hover g-font-size-12 g-mt-10 g-font-weight-900" href="<?= $service->service_page_url ?>"><?= strtoupper(get_lang('learn-more')) ?></a>
													</div>
													<br>
													<br>
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
                        $(element_id + ' .owl-controls').attr('style', 'margin-top: 5px;margin-bottom: 20px');

                        $(element_id + ' .owl-stage-outer').css({'padding-top': 1});
                        $(element_id + ' .owl-stage').css('padding-left', 10);

                        var screen_display =<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                        // console.log(screen_display);
                        var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '60' : '80' ?>) / 100) / 2;
                        // console.log('screen :/ '+screen_display+'nav : '+screen_display*<?= $this->agent->is_mobile() ? '8' : '9' ?>0/100+'batas : '+margin_side);
											<?php
											if ($this->agent->is_mobile()) {
												echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 275px;width: 68%;right: '+margin_side+'px;')";
											} else {
												echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 110px;width: 84%;right: '+margin_side+'px;')";
											}
											?>
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
					<?= get_lang('cannot-found-the-solution-you-are-looking-for?') ?>
				</div>
				<a class="g-font-asap btn btn-info btn-xl btn-block g-brd-2 g-font-size-13 g-rounded-50 g-font-weight-700" href="#"><?= strtoupper(get_lang('all-services')) ?></a>
				<a class="g-font-asap btn btn-outline-info btn-xl btn-block g-brd-2 g-font-size-13 g-rounded-50 g-font-weight-700" href="#"><?= strtoupper(get_lang('talk-to-our-expert')) ?></a>
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
									<div class="g-mb-5 g-bg-white <?= $this->agent->is_mobile() ? 'g-mt-10' : 'g-mt-25' ?> box-shadow-down">
										<div style="height: 200px;background: url(<?= get_image(DIR_SERVICE . $service->service_slug . '/bg/' . $service->service_thumbnail_image) ?>);background-size: cover;"></div>
										<div class="bg-white g-mx-20 g-px-30 g-pt-20" onclick="window.location.href='<?= $service->service_page_url ?>'" style="margin-top: -40px; min-height:250px">
											<!--                        --><?php //if($service['is_new']==true):
											?>
											<!--                          <span class="g-color-white g-bg-primary g-font-size-10 g-px-8 g-py-3 g-ml-5 float-right">--><?//= lang('new')
											?><!--</span>-->
											<!--                        --><?php //endif;
											?>
											<div>
												<h6 class="h6 g-color-black-opacity-0_5 g-font-weight-600 g-mb-5 g-font-size-10 text-uppercase"> <?= $service->service_category_name ?> </h6>
												<h4 class="h6 g-color-black g-font-weight-600 g-mb-5 g-font-size-20" style="min-height: 50px"><?= $service->service_name ?></h4>
												<em class="d-block g-color-gray-dark-v4 g-font-style-normal g-font-size-12 g-mb-10"><?= $service->service_description ?></em>
											</div>
											<a class="g-color-info g-color-blue--hover g-font-size-12 g-mt-10 g-font-weight-900" href="<?= $service->service_page_url ?>"><?= strtoupper(get_lang('learn-more')) ?> <i class="fa fa-angle-right g-ml-10"></i> </a>
										</div>
										<br>
										<br>
									</div>
								</div>
								<?php
								$i++;
								$service_id = $service->service_id;
							}
						} //End foreach($target->list as $service)
					?>
					<div class="col-4">
						<div class="g-mb-5 g-bg-white <?= $this->agent->is_mobile() ? 'g-mt-10' : 'g-mt-25' ?> box-shadow-down">
							<div class="text-center bg-white g-mx-20 g-px-30 g-py-20" style=" height:453px">
								<div class="g-mt-100">
									<div class="g-font-weight-700 g-font-size-20 mb-4">
										<?= get_lang('cannot-found-the-solution-you-are-looking-for?') ?>
									</div>
									<a class="g-font-asap btn btn-info btn-xl btn-block g-brd-2 g-font-size-13 g-rounded-50 g-font-weight-700" href="<?= site_url('service') ?>"><?= strtoupper(get_lang('all-services')) ?></a>
									<a class="g-font-asap btn btn-outline-info btn-xl btn-block g-brd-3 g-font-size-13 g-rounded-50 g-font-weight-700" href="<?= site_url('contact') ?>"><?= strtoupper(get_lang('talk-to-our-expert')) ?></a>
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
    $(window).ready(function () {
        $('.my_tab_content').addClass('d-none');
        $('.my_tab_content').first().removeClass('d-none');
    });

    function autocomplete(inp, arr) {
        /*the autocomplete function takes two arguments,
				the text field element and an array of possible autocompleted values:*/
        var currentFocus;
        /*execute a function when someone writes in the text field:*/
        inp.addEventListener("input", function (e) {
            var a, b, i, val = this.value;
            /*close any already open lists of autocompleted values*/
            closeAllLists();
            if (!val) {
                return false;
            }
            currentFocus = -1;
            /*create a DIV element that will contain the items (values):*/
            a = document.createElement("DIV");
            a.setAttribute("id", this.id + "autocomplete-list");
            a.setAttribute("class", "autocomplete-items");
            /*append the DIV element as a child of the autocomplete container:*/
            this.parentNode.appendChild(a);
            /*for each item in the array...*/
            for (i = 0; i < arr.length; i++) {
                /*check if the item starts with the same letters as the text field value:*/
                if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
                    /*create a DIV element for each matching element:*/
                    b = document.createElement("DIV");
                    /*make the matching letters bold:*/
                    b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
                    b.innerHTML += arr[i].substr(val.length);
                    /*insert a input field that will hold the current array item's value:*/
                    b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
                    /*execute a function when someone clicks on the item value (DIV element):*/
                    b.addEventListener("click", function (e) {
                        /*insert the value for the autocomplete text field:*/
                        inp.value = this.getElementsByTagName("input")[0].value;
                        /*close the list of autocompleted values,
												(or any other open lists of autocompleted values:*/
                        closeAllLists();
                    });
                    a.appendChild(b);
                }
            }
        });
        /*execute a function presses a key on the keyboard:*/
        inp.addEventListener("keydown", function (e) {
            var x = document.getElementById(this.id + "autocomplete-list");
            if (x) x = x.getElementsByTagName("div");
            if (e.keyCode == 40) {
                /*If the arrow DOWN key is pressed,
								increase the currentFocus variable:*/
                currentFocus++;
                /*and and make the current item more visible:*/
                addActive(x);
            } else if (e.keyCode == 38) { //up
                /*If the arrow UP key is pressed,
								decrease the currentFocus variable:*/
                currentFocus--;
                /*and and make the current item more visible:*/
                addActive(x);
            } else if (e.keyCode == 13) {
                /*If the ENTER key is pressed, prevent the form from being submitted,*/
                e.preventDefault();
                if (currentFocus > -1) {
                    /*and simulate a click on the "active" item:*/
                    if (x) x[currentFocus].click();
                }
            }
        });

        function addActive(x) {
            /*a function to classify an item as "active":*/
            if (!x) return false;
            /*start by removing the "active" class on all items:*/
            removeActive(x);
            if (currentFocus >= x.length) currentFocus = 0;
            if (currentFocus < 0) currentFocus = (x.length - 1);
            /*add class "autocomplete-active":*/
            x[currentFocus].classList.add("autocomplete-active");
        }

        function removeActive(x) {
            /*a function to remove the "active" class from all autocomplete items:*/
            for (var i = 0; i < x.length; i++) {
                x[i].classList.remove("autocomplete-active");
            }
        }

        function closeAllLists(elmnt) {
            /*close all autocomplete lists in the document,
						except the one passed as an argument:*/
            var x = document.getElementsByClassName("autocomplete-items");
            for (var i = 0; i < x.length; i++) {
                if (elmnt != x[i] && elmnt != inp) {
                    x[i].parentNode.removeChild(x[i]);
                }
            }
        }

        /*execute a function when someone clicks in the document:*/
        document.addEventListener("click", function (e) {
            closeAllLists(e.target);
        });
    }

    /*An array containing all the country names in the world:*/
    var countries = [
	    <?php foreach ($coverage_cities as $city) {
	    echo '"' . $city->city_name . '",';
    }
	    ?>

    ];

    /*initiate the autocomplete function on the "myInput" element, and pass along the countries array as possible autocomplete values:*/
    autocomplete(document.getElementById("input_city"), countries);
</script>
