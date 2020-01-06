<div class="collapse navbar-collapse align-items-center flex-sm-row g-pt-10 g-pt-5--lg" id="navBar">
	<?= ($this->agent->is_mobile()) ? '<div class="js-scrollbar card-block  u-info-v1-1 g-bg-white-gradient-v1--after g-pa-0 full-height"> ' : '' ?>
	<ul class="navbar-nav text-uppercase g-font-weight-600 mr-auto">
		<?php foreach ($navigation_array as $nav): ?>
			<?php if ($this->agent->is_mobile()): ?>
				<?php if (empty($nav['menu'])): ?>
					<li class="nav-item g-mx-10--lg g-mx-15--xl">
						<a class="nav-link g-py-7 g-px-0 text-uppercase" href="<?= $nav['url'] ?>"> <?= $nav['title'] ?></a>
					</li>
				<?php else: ?>

					<li class="hs-has-sub-menu nav-item g-mx-10--lg g-mx-15--xl" data-animation-in="fadeIn" data-animation-out="fadeOut">
						<a class="nav-link g-py-7 g-px-0 text-uppercase" href="javascript:void()" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu-pages"><?= $nav['title'] ?></a>
						<ul class="mega-menu hs-sub-menu list-unstyled g-brd-0  g-min-width-220 g-mt-2 g-mt-8--lg--scrolling" aria-labelledby="nav-link-pages">
							<?php foreach ($nav['menu'] as $menu): ?>
								<?php
								if ($menu->title == get_lang('for-individuals')) { //if target is individual category not show/ skip to list service
									$submenus = $menu->menu[0]->menu;
								} else {
									$submenus = $menu->menu;
								}
								?>
								<?php if (empty($submenus)): //don't have menu?>
									<li class="dropdown-item">
										<a class="nav-link g-color-black" href="<?= $menu->url ?>"> <?= $menu->title ?></a>
									</li>
								<?php else: //has menu?>
									<li class="dropdown-item hs-has-sub-menu g-bg-white">
										<a class="nav-link g-color-black" href="javascript:void()" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu--pages--others"><i class="<?= $menu->icon ?> g-mr-10"></i><?= $menu->title ?></a>
										<ul class="hs-sub-menu list-unstyled g-brd-0 g-min-width-220 g-mt-minus-2" aria-labelledby="nav-link--pages--others">
											<?php foreach ($submenus as $submenu): ?>
												<?php if (empty($submenu->menu)): ?>
													<li class="dropdown-item">
														<a class="nav-link g-color-black" href="<?= $submenu->url ?>"><?= $submenu->title ?></a>
													</li>
												<?php else: ?>
													<?php if (count($submenu->menu) == 1 && $submenu->menu[0]->title == $submenu->title): ?>
														<li class="dropdown-item g-bg-blue-opacity-0_1--hover">
															<a class="nav-link g-color-black g-color-blue-dark-v2--hover" href="<?= site_url($submenu->menu[0]->url) ?>"><?= $submenu->menu[0]->title ?></a>
														</li>
													<?php else: ?>
														<li class="dropdown-item hs-has-sub-menu g-bg-white g-pr-0">
															<a class="nav-link g-color-black" href="javascript:void()" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu--pages--404">
																<?= $submenu->title ?>
															</a>
															<ul class="hs-sub-menu list-unstyled g-brd-0 g-min-width-220 g-mt-minus-2 " id="nav-submenu--pages--404" aria-labelledby="nav-link--pages--404">
																<?php foreach ($submenu->menu as $subsubmenu):
																	if (!empty($subsubmenu->has_page)):
																		?>
																		<li class="dropdown-item g-pr-0">
																			<a class="nav-link g-color-black" href="<?= $subsubmenu->has_page == 1 ? HOST . $subsubmenu->url : '#' ?>">
																				<?= str_replace($submenu->title . " - ", "", $subsubmenu->title) ?>
																			</a>
																		</li>
																	<?php
																	endif;
																endforeach; // subsubmenu?>
															</ul>
														</li> <!-- End Menu lvl 3 -->
													<?php endif; //end just 1 sub menu?>
												<?php endif; //has subsubmenu?>
											<?php endforeach; // submenu?>
										</ul>
									</li> <!-- End Menu lvl 2 -->
								<?php endif; // has submenu?>
							<?php endforeach; // menu?>
						</ul>
					</li> <!-- End Menu lvl 1 -->
				<?php endif; //has menu?>
			<?php else: ?> <!--DESKTOP-->
				<?php if (empty($nav['menu'])): ?>
					<li class="nav-item g-mx-10--lg g-mx-15--xl">
						<a class="nav-link g-py-7 g-px-0 text-uppercase" href="<?= $nav['url'] ?>"> <?= $nav['title'] ?></a>
					</li>
				<?php else: ?>
					<li class="hs-has-sub-menu nav-item g-mx-10--lg g-mx-15--xl" data-animation-in="fadeIn" data-animation-out="fadeOut">
						<a class="nav-link g-py-7 g-px-0 text-uppercase" href="#" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu-pages"><?= $nav['title'] ?></a>
						<ul class="mega-menu hs-sub-menu list-unstyled u-shadow-v11 g-brd-0 g-min-width-220 g-py-20 g-mt-18 g-mt-8--lg--scrolling arrow-box" aria-labelledby="nav-link-pages">
							<?php foreach ($nav['menu'] as $menu): ?>
								<?php
								if ($menu->title == get_lang('for-individuals')) { //if target is individual category not show/ skip to list service
									$submenus = $menu->menu[0]->menu;
								} else {
									$submenus = $menu->menu;
								}
								?>
								<?php if (empty($submenus)): //don't have menu?>
									<li class="dropdown-item g-bg-blue-opacity-0_1--hover">
										<a class="nav-link g-color-black g-color-blue-dark-v2--hover" href="<?= site_url($menu->url) ?>"> <?= $menu->title ?></a>
									</li>
								<?php else: //has menu?>
									<li class="dropdown-item hs-has-sub-menu g-bg-blue-opacity-0_1--hover g-parent">
										<a class="nav-link g-color-black g-color-blue-dark-v2--hover " href="#" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu--pages--others">
											<i class="<?= $menu->icon ?> g-mr-10"></i>
											<img class="g-mr-10 g-grayscale-100x g-grayscale-0--parent-hover" src="<?= get_image(DIR_ICON . $menu->icon) ?>" alt="" style="max-width: 30px; max-height: 30px;">
											
											<?= $menu->title ?>
										</a>
										<ul class="hs-sub-menu list-unstyled u-shadow-v11 g-brd-0 g-min-width-300 g-py-20 g-mt-minus-20" aria-labelledby="nav-link--pages--others">
											<?php foreach ($submenus as $submenu): ?>
												<?php if (empty($submenu->menu)): ?>
													<li class="dropdown-item g-bg-blue-opacity-0_1--hover">
														<a class="nav-link g-color-black g-color-blue-dark-v2--hover" href="<?= site_url($submenu->url) ?>"><?= $submenu->title ?></a>
													</li>
												<?php else: ?>
													<?php if (count($submenu->menu) == 1 && $submenu->menu[0]->title == $submenu->title): ?>
														<li class="dropdown-item g-bg-blue-opacity-0_1--hover">
															<a class="nav-link g-color-black g-color-blue-dark-v2--hover" href="<?= site_url($submenu->menu[0]->url) ?>"><?= $submenu->menu[0]->title ?></a>
														</li>
													<?php else: ?>
														<li class="dropdown-item hs-has-sub-menu g-bg-blue-opacity-0_1--hover">
															<a class="nav-link g-color-black g-color-blue-dark-v2--hover" href="#" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu--pages--404">
																<?= $submenu->title ?>
															</a>
															<ul class="hs-sub-menu list-unstyled u-shadow-v11 g-brd-0 g-min-width-220 g-py-20 g-mt-minus-20 " id="nav-submenu--pages--404" aria-labelledby="nav-link--pages--404">
																<?php foreach ($submenu->menu as $subsubmenu):
																	if (!empty($subsubmenu->has_page)):
																		?>
																		<li class="dropdown-item g-bg-blue-opacity-0_1--hover">
																			<a class="nav-link g-color-black g-color-blue-dark-v2--hover" href="<?= $subsubmenu->has_page == 1 ? site_url($subsubmenu->url) : '#' ?>">
																				<?= str_replace($submenu->title . " - ", "", $subsubmenu->title) ?>
																			</a>
																		</li>
																	<?php
																	endif;
																endforeach; // submenu?>
															</ul>
														</li> <!-- End Menu lvl 3 -->
													<?php endif; // end if subsubmenu just 1?>
												<?php endif; //has subsubmenu?>
											<?php endforeach; // submenu?>
										</ul>
									</li> <!-- End Menu lvl 2 -->
								<?php endif; // has submenu?>
							<?php endforeach; // menu?>
						</ul>
					</li> <!-- End Menu lvl 1 -->
				<?php endif; //has menu?>
			<?php endif; ?>
		<?php endforeach; // end nav?>

	<?= ($this->agent->is_mobile()) ? '<br><br><br><br>' : '' ?>
	</ul>
	
	<?php
		if (!$this->agent->is_mobile()) {
			?>
			<div class="hs-has-sub-menu nav-item g-mx-20--lg" data-animation-in="fadeIn" data-animation-out="fadeOut" data-position="right">
				<a href="javascript:void()" class="<?= $template == 'index' ? 'nav-change-scroll g-color-white' : '' ?> g-font-size-12 nav-link px-0" style="line-height: 1;color:black" aria-haspopup="true" aria-expanded="false">
					<img src="<?= $this->session->userdata('language') ? ($this->session->userdata('language') == 'id' ? get_image(DIR_ICON . 'flag_indonesia.png') : get_image(DIR_ICON . 'flag_england.png')) : get_image(DIR_ICON . 'flag_indonesia.png') ?>" style="border: 1px solid rgba(0,0,0,0.1);height: 13px;margin-bottom: 2px">
					<?= empty($this->session->userdata('language')) ? 'ID' : strtoupper($this->session->userdata('language')) ?>
				</a>
				<ul class="hs-sub-menu list-unstyled box-shadow-down g-mt-14 g-min-width-65 animated hs-position-right fadeOut arrow-box" id="nav-submenu--features" aria-labelledby="nav-link--features" style="display: none; margin-left:-5px">
					<?php foreach ($languages as $language) {
						?>
						<li class="dropdown-item">
							<a class="nav-link <?= empty($this->session->userdata('language')) ? (($language->language_code == 'id') ? 'g-color-info' : 'g-color-black-opacity-0_8') : (($this->session->userdata('language') == $language->language_code) ? 'g-color-info' : 'g-color-black-opacity-0_8') ?> " href="<?= $this->session->userdata('language') == $language->language_code ? 'javascript:void()' : site_url($language->language_code) ?>">
								<img class="g-mr-10" src="<?= get_image(DIR_ICON . $language->language_flag) ?>" style="border: 1px solid rgba(0,0,0,0.1);height: 13px;margin-bottom: 2px">
								<?= strtoupper($language->language_code) ?>
							</a>
						</li>
						<?php
					}
					?>
				</ul>
			</div>
			<?php
		} // END if (!$this->agent->is_mobile() && )
	?>
</div> <!-- End Navigation -->
