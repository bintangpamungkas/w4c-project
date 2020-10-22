<!-- // TODO Check unused line code -->

<div class="collapse navbar-collapse align-items-center flex-sm-row g-pt-10 g-pt-5--lg" id="navBar">
	<?= ($this->agent->is_mobile()) ? '<div class="js-scrollbar card-block  u-info-v1-1 g-bg-white-gradient-v1--after g-pa-0 full-height"> ' : '' ?>
	<ul class="navbar-nav g-font-weight-600 mr-auto">

		<?php if ($this->agent->is_mobile()) : ?>

			<!-- Mobile View -->
			<!-- Navigation Level 1 -->
			<?php foreach ($navigations as $nav_1) : ?>
				<?php if ($nav_1->status == true) : ?>
					<?php if (empty($nav_1->items)) : ?>
						<li class="lvl-0 nav-item g-mx-10--lg g-mx-15--xl">
							<a class="nav-link g-py-7 g-px-0 text-uppercase" href="<?= get_url($nav_1->url) ?>"> <?= $nav_1->title ?></a>
						</li>

					<?php else : ?>
						<li class="lvl-0 hs-has-sub-menu nav-item g-mx-10--lg g-mx-15--xl" data-animation-in="fadeIn" data-animation-out="fadeOut">
							<a class="nav-link g-py-7 g-px-0 text-uppercase g-color-black--active g-color-black--focus" href="" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu-pages"><?= $nav_1->title ?></a>
							<ul class="mega-menu hs-sub-menu list-unstyled g-brd-0 g-min-width-220 g-mt-2 g-mt-8--lg--scrolling" aria-labelledby="nav-link-pages">

								<!-- Navigation Level 2 -->
								<?php foreach ($nav_1->items as $nav_2) : ?>
									<?php if ($nav_2->status == true) : ?>
										<?php if (empty($nav_2->items)) : ?>
											<li class="lvl-1 dropdown-item g-bg-blue-opacity-0_1--hover g-color-black--focus g-color-black--active ">
												<a class="nav-link g-color-black g-color-blue-dark-v2--hover g-color-blue-dark-v2--active" href="<?= get_url($nav_2->url) ?>"> <?= $nav_2->title ?></a>
											</li>

										<?php else : ?>
											<li class="lvl-1 dropdown-item hs-has-sub-menu g-bg-white g-color-black--focus g-color-black--active ">
												<a class="nav-link g-color-black" href="" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu--pages--others"><i class="<?= $nav_2->icon ?> g-mr-10"></i><?= $nav_2->title ?></a>
												<ul class="hs-sub-menu list-unstyled g-brd-0 g-min-width-220 g-mt-minus-2" aria-labelledby="nav-link--pages--others">

													<!-- Navigation Level 3 -->
													<?php foreach ($nav_2->items as $nav_3) : ?>
														<?php if ($nav_3->status == true) : ?>
															<?php if (empty($nav_3->items)) : ?>
																<li class="lvl-2 dropdown-item g-bg-blue-opacity-0_1--hover g-pl-30">
																	<a class="nav-link g-color-black g-color-black--active g-color-blue-dark-v2--active g-color-blue-dark-v2--hover" href="<?= get_url($nav_3->url) ?>"><?= $nav_3->title ?>"></a>
																</li>

															<?php else : ?>
																<li class="lvl-2 dropdown-item hs-has-sub-menu g-bg-white g-pr-0 g-pl-30">
																	<a class="nav-link g-color-black  g-color-black--active g-color-black--focus" href="" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu--pages--404">
																		<?= $nav_3->title ?>
																	</a>
																	<ul class="hs-sub-menu list-unstyled g-brd-0 g-min-width-220 g-mt-minus-2 " id="nav-submenu--pages--404" aria-labelledby="nav-link--pages--404">

																		<!-- Navigation Level 4 -->
																		<?php foreach ($nav_3->items as $nav_4) : ?>
																			<?php if ($nav_4->status == true) : ?>
																				<?php if (!empty($nav_4->has_page)) : ?>
																					<li class="lvl-3 dropdown-item g-bg-blue-opacity-0_1--hover  g-pr-0">
																						<a class="nav-link g-color-black g-color-blue-dark-v2--active g-color-blue-dark-v2--hover" href="<?= get_url($nav_4->url) ?>">
																							<?= str_replace($nav_3->title . " - ", "", $nav_4->title) ?>
																						</a>
																					</li>
																				<?php endif; ?>
																			<?php endif; ?>
																		<?php endforeach; ?>
																		<!-- End Navigation Level 4 -->

																	</ul>
																</li>
															<?php endif; ?>
														<?php endif; ?>
													<?php endforeach; ?>
													<!-- End Navigation Level 3 -->

												</ul>
											</li>
										<?php endif; ?>
									<?php endif; ?>
								<?php endforeach; ?>
								<!-- End Navigation Level 2 -->

							</ul>
						</li>
					<?php endif; ?>
				<?php endif; ?>
			<?php endforeach; ?>
			<!-- end Navigation Level 1 -->

		<?php else : ?>
			<!-- Desktop View-->

			<!-- Navigation Level 1 -->
			<?php foreach ($navigations as $nav_1) : ?>
				<?php if ($nav_1->status == true) : ?>
					<?php if (empty($nav_1->items)) : ?>
						<li class="lvl-0 nav-item g-mx-10--lg g-mx-15--xl">
							<a class="nav-link g-py-7 g-px-0 text-uppercase" href="<?= get_url($nav_1->url) ?>"> <?= $nav_1->title ?></a>
						</li>

					<?php else : ?>
						<li class="lvl-0 hs-has-sub-menu nav-item g-mx-10--lg g-mx-15--xl" data-animation-in="fadeIn" data-animation-out="fadeOut">
							<a class="nav-link g-py-7 g-px-0 text-uppercase" href="#" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu-pages"><?= $nav_1->title ?></a>
							<ul class="mega-menu hs-sub-menu list-unstyled u-shadow-v11 g-brd-0 g-min-width-220 g-py-20 g-mt-18 g-mt-8--lg--scrolling arrow-box" aria-labelledby="nav-link-pages">

								<!-- Navigation Level 2 -->
								<?php foreach ($nav_1->items as $nav_2) : ?>
									<?php if ($nav_2->status == true) : ?>
										<?php if (empty($nav_2->items)) : ?>
											<li class="lvl-1 dropdown-item g-bg-blue-opacity-0_1--hover g-color-blue-dark-v2--focus g-color-blue-dark-v2--active">
												<a class="nav-link g-color-black g-color-blue-dark-v2--hover " href="<?= get_url($nav_2->url) ?>"> <?= $nav_2->title ?></a>
											</li>

										<?php else : ?>
											<li class="lvl-1 dropdown-item hs-has-sub-menu g-bg-blue-opacity-0_1--hover g-color-blue-dark-v2--focus g-color-blue-dark-v2--active g-parent">
												<a class="nav-link g-color-black g-color-blue-dark-v2--hover  text-uppercase" href="#" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu--pages--others">
													<i class="<?= $nav_2->icon ?> g-mr-10"></i>
													<img class="g-mr-10 g-grayscale-100x g-grayscale-0--parent-hover" src="<?= get_image(DIR_ICON . $nav_2->icon) ?>" alt="<?= $nav_2->title ?> icon" style="max-width: 30px; max-height: 30px;">
													<?= $nav_2->title ?>
												</a>
												<ul class="hs-sub-menu list-unstyled u-shadow-v11 g-brd-0 g-min-width-300 g-py-20 g-mt-minus-20" aria-labelledby="nav-link--pages--others">

													<!-- Navigation Level 3 -->
													<?php foreach ($nav_2->items as $nav_3) : ?>
														<?php if ($nav_3->status == true) : ?>
															<?php if (empty($nav_3->items)) : ?>
																<li class="lvl-2 dropdown-item g-bg-blue-opacity-0_1--hover">
																	<a style="padding: 12px 0px;" class="nav-link g-color-black g-color-blue-dark-v2--hover" href="<?= get_url($nav_3->url) ?>"><?= $nav_3->title ?></a>
																</li>

															<?php else : ?>
																<li class="lvl-2 dropdown-item hs-has-sub-menu g-bg-blue-opacity-0_1--hover ">
																	<a style="padding: 12px 0px;" class="nav-link g-color-black g-color-blue-dark-v2--hover" href="#" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu--pages--404">
																		<?= $nav_3->title ?>
																	</a>
																	<ul class="hs-sub-menu list-unstyled u-shadow-v11 g-brd-0 g-min-width-220 g-py-20 g-mt-minus-20 " id="nav-submenu--pages--404" aria-labelledby="nav-link--pages--404">

																		<!-- Navigation Level 4 -->
																		<?php foreach ($nav_3->items as $nav_4) : ?>
																			<?php if ($nav_4->status == true) : ?>
																				<?php if (!empty($nav_4->has_page)) : ?>
																					<li class="lvl-3 dropdown-item g-bg-blue-opacity-0_1--hover">
																						<a style="padding: 12px 0px;" class="nav-link g-color-black g-color-blue-dark-v2--hover" href="<?= get_url($nav_4->url) ?>">
																							<?= str_replace($nav_3->title . " - ", "", $nav_4->title) ?>
																						</a>
																					</li>
																				<?php endif; ?>
																			<?php endif; ?>
																		<?php endforeach; ?>
																		<!-- End Navigation Level 4 -->

																	</ul>
																</li>
															<?php endif; ?>
														<?php endif; ?>
													<?php endforeach; ?>
													<!-- End Navigation Level 3 -->

												</ul>
											</li>
										<?php endif; ?>
									<?php endif; ?>
								<?php endforeach; ?>
								<!-- End Navigation Level 2 -->

							</ul>
						</li>
					<?php endif; ?>
				<?php endif; ?>
			<?php endforeach; ?>
			<!-- end Navigation Level 1 -->
		<?php endif; ?>
		<!-- End Desktop View -->
		<?= ($this->agent->is_mobile()) ? '<br><br><br><br>' : '' ?>
	</ul>

	<!-- Language Pick -->
	<?php if (!$this->agent->is_mobile()) : ?>
		<div class="hs-has-sub-menu nav-item g-ml-20--lg" data-animation-in="fadeIn" data-animation-out="fadeOut" data-position="right">
			<a href="javascript:void()" class="<?= $template == 'index' ? 'nav-change-scroll g-color-white' : '' ?> g-font-size-12 nav-link px-0" style="line-height: 1;color:black" aria-haspopup="true" aria-expanded="false">
				<img src="<?= get_image(DIR_ICON . $languages->{$lang}->language_flag) ?>" alt="<?= $languages->{$lang}->language_name . ' flag' ?>" style="border: 1px solid rgba(0,0,0,0.1);height: 13px;margin-bottom: 2px">
				<?= strtoupper($lang) ?>
			</a>
			<ul class="hs-sub-menu list-unstyled box-shadow-down g-mt-14 g-min-width-65 animated hs-position-right fadeOut arrow-box" id="nav-submenu--features" aria-labelledby="nav-link--features" style="display: none; margin-left:-5px">

				<?php foreach ($languages as $languageI => $language) : ?>
					<li class="dropdown-item">
						<a class="nav-link <?= ($lang == $languageI) ? 'g-color-info' : 'g-color-black-opacity-0_8' ?> " href="<?= $lang == $languageI ? 'javascript:void()' : site_url($languageI) ?>">
							<img class="g-mr-10" src="<?= get_image(DIR_ICON . $language->language_flag) ?>" alt="<?= $languageI ?>" style="border: 1px solid rgba(0,0,0,0.1);height: 13px;margin-bottom: 2px">
							<?= strtoupper($languageI) ?>
						</a>
					</li>
				<?php endforeach; ?>

			</ul>
		</div>
	<?php endif; ?>
	<!-- End Language Pick -->

</div>
<!-- End Navigation -->