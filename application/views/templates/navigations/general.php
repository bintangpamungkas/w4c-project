<div class="collapse navbar-collapse align-items-center flex-sm-row g-pt-10 g-pt-5--lg" id="navBar">
	<?= ($this->agent->is_mobile()) ? '<div class="js-scrollbar card-block  u-info-v1-1 g-bg-white-gradient-v1--after g-pa-0 full-height"> ' : '' ?>
	<ul class="navbar-nav g-font-weight-600 mr-auto">
		<?php foreach ($navigation_array as $nav) : ?>
			<?php if ($this->agent->is_mobile()) : ?>
				<?php if (empty($nav['menu'])) : ?>
					<li class="lvl-0 nav-item g-mx-10--lg g-mx-15--xl">
						<a class="nav-link g-py-7 g-px-0 text-uppercase" href="<?= $nav['url'] ?>"> <?= $nav['title'] ?></a>
					</li>
				<?php else : ?>
					<li class="lvl-0 hs-has-sub-menu nav-item g-mx-10--lg g-mx-15--xl" data-animation-in="fadeIn" data-animation-out="fadeOut">
						<a class="nav-link g-py-7 g-px-0  g-color-black--active g-color-black--focus" href="" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu-pages"><?= $nav['title'] ?></a>
						<ul class="mega-menu hs-sub-menu list-unstyled g-brd-0  g-min-width-220 g-mt-2 g-mt-8--lg--scrolling" aria-labelledby="nav-link-pages">
							<?php if ($nav['menu'] == $products) : ?>
								<?php foreach ($products as $menu_product) :  ?>
									<li class="lvl-1 dropdown-item g-bg-blue-opacity-0_1--hover g-color-black--focus g-color-black--active ">
										<a class="nav-link g-color-black" href="<?= get_url($menu_product->url) ?>" ><?= $menu_product->title ?></a>
									</li>
								<?php endforeach; ?>
							<?php else : ?>
								<?php foreach ($service_targets as $menu) : ?>
					
								<?php if (empty($menu->services)) : //don't have menu
								?>
									<li class="lvl-1 dropdown-item g-bg-blue-opacity-0_1--hover g-color-black--focus g-color-black--active ">
									<a class="nav-link g-color-black" href="<?= get_url($menu->url) ?>" ><i class="<?= $menu->icon ?> g-mr-10"></i><?= $menu->title ?></a>
									</li>
								<?php else : //has menu
								?>
									<li class="lvl-1 dropdown-item hs-has-sub-menu g-bg-white g-color-black--focus g-color-black--active ">
										<a class="nav-link g-color-black" href="" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu--pages--others"><i class="<?= $menu->icon ?> g-mr-10"></i><?= $menu->title ?></a>
										<ul class="hs-sub-menu list-unstyled g-brd-0 g-min-width-220 g-mt-minus-2" aria-labelledby="nav-link--pages--others">
											<?php foreach ($menu->services as $submenumenu) : ?>
												<?php if (empty($submenumenu)) : ?>
													<li class="dropdown-item g-bg-blue-opacity-0_1--hover">
														<a class="nav-link g-color-black g-color-blue-dark-v2--active g-color-blue-dark-v2--hover" href="<?= get_url($submenumenu->url) ?>"><?= $submenumenu->title ?></a>
													</li>
												<?php elseif ($submenumenu->url != "") : ?>
														<li class="lvl-2 dropdown-item g-bg-blue-opacity-0_1--hover <?= $this->agent->is_mobile() ? 'g-pl-30' : '' ?>">
															<a class="nav-link g-color-black g-color-black--active g-color-blue-dark-v2--active g-color-blue-dark-v2--hover" href="<?= get_url($submenumenu->url) ?>"><?= $submenumenu->title ?></a>
														</li>
													<?php else : ?>
														<li class="lvl-2 dropdown-item hs-has-sub-menu g-bg-white g-pr-0 <?= $this->agent->is_mobile() ? 'g-pl-30' : '' ?>">
															<a class="nav-link g-color-black  g-color-black--active g-color-black--focus" href="" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu--pages--404">
																<?= $submenumenu->title ?>
															</a>
															<ul class="hs-sub-menu list-unstyled g-brd-0 g-min-width-220 g-mt-minus-2 " id="nav-submenu--pages--404" aria-labelledby="nav-link--pages--404">
																<?php foreach ($submenumenu->services as $subsubmenu) :
																	if ($subsubmenu->has_page == 1) :
																?>
																		<li class="lvl-3 dropdown-item g-bg-blue-opacity-0_1--hover  g-pr-0">
																			<a class="nav-link g-color-black g-color-blue-dark-v2--active g-color-blue-dark-v2--hover" href="<?= $subsubmenu->has_page == 1 ? get_url($subsubmenu->url) : '#' ?>">
																				<?= $subsubmenu->title ?>
																			</a>
																		</li>
																<?php
																	endif;
																endforeach; // subsubmenu
																?>
															</ul>
														</li> <!-- End Menu lvl 3 -->
													<?php endif; //end just 1 sub menu
													?>
											<?php endforeach; // submenu
											?>
										</ul>
									</li> <!-- End Menu lvl 2 -->
								<?php endif; // has submenu
								?>
							<?php endforeach; // menu
							?>
							<?php endif; ?>
						</ul>
					</li> <!-- End Menu lvl 1 -->
				<?php endif; //has menu
				?>

			<?php else : ?>
				<!--DESKTOP-->
				<?php if (empty($nav['menu'])) : ?>
					<li class="lvl-0 nav-item g-mx-10--lg g-mx-15--xl">
						<a class="nav-link g-py-7 g-px-0 text-uppercase" href="<?= $nav['url'] ?>"> <?= $nav['title'] ?></a>
					</li>
				<?php else : ?>
					<li class="lvl-0 hs-has-sub-menu nav-item g-mx-10--lg g-mx-15--xl" data-animation-in="fadeIn" data-animation-out="fadeOut">
						<a class="nav-link g-py-7 g-px-0 text-uppercase" href="#" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu-pages"><?= $nav['title'] ?></a>
						<ul class="mega-menu hs-sub-menu list-unstyled u-shadow-v11 g-brd-0 g-min-width-220 g-py-20 g-mt-18 g-mt-8--lg--scrolling arrow-box" aria-labelledby="nav-link-pages">
							<?php if($nav['menu'] == $products) : ?>
								<?php foreach($products as $menu_product): ?>
									<li class="lvl-1 dropdown-item g-bg-blue-opacity-0_1--hover g-color-blue-dark-v2--focus g-color-blue-dark-v2--active">								
											<a class="nav-link g-color-black g-color-blue-dark-v2--hover" href="<?= get_url($menu_product->url) ?>" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu--pages--others">
												<?= $menu_product->title ?>
											</a>
										</li>
								<?php endforeach; ?>
							<?php else : ?>
								<?php foreach ($service_targets as $menu) : ?>

								<?php if (empty($menu->services)) : //don't have menu
								?>
									<li class="lvl-1 dropdown-item g-bg-blue-opacity-0_1--hover g-color-blue-dark-v2--focus g-color-blue-dark-v2--active">								
										<a class="nav-link g-color-black g-color-blue-dark-v2--hover  text-uppercase" href="<?= get_url($menu->url) ?>" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu--pages--others">
											<i class="<?= $menu->icon ?> g-mr-10"></i>
											<img class="g-mr-10 g-grayscale-100x g-grayscale-0--parent-hover" src="<?= get_image(DIR_ICON . $menu->icon) ?>" alt="<?= $menu->title ?> icon" style="max-width: 30px; max-height: 30px;">
											<?= $menu->title ?>
										</a>
									</li>
								<?php else : //has menu
								?>
									
									<li class="lvl-1 dropdown-item hs-has-sub-menu g-bg-blue-opacity-0_1--hover g-color-blue-dark-v2--focus g-color-blue-dark-v2--active g-parent">
										<a class="nav-link g-color-black g-color-blue-dark-v2--hover  text-uppercase" href="#" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu--pages--others">
											<i class="<?= $menu->icon ?> g-mr-10"></i>
											<img class="g-mr-10 g-grayscale-100x g-grayscale-0--parent-hover" src="<?= get_image(DIR_ICON . $menu->icon) ?>" alt="<?= $menu->title ?> icon" style="max-width: 30px; max-height: 30px;">
											<?= $menu->title ?>
										</a>
										<ul class="hs-sub-menu list-unstyled u-shadow-v11 g-brd-0 g-min-width-300 g-py-20 g-mt-minus-20" aria-labelledby="nav-link--pages--others">
											<?php foreach ($menu->services as $submenumenu) : ?>
												<?php if (empty($submenumenu)): ?>
													<li class="lvl-2 dropdown-item g-bg-blue-opacity-0_1--hover">
														<a style="padding: 12px 0px;" class="nav-link g-color-black g-color-blue-dark-v2--hover" href="<?= get_url($submenumenu->url) ?>"><?= $submenumenu->title ?></a>
													</li>
													<?php elseif ($submenumenu->url != "") : ?>
														<li class="lvl-2 dropdown-item g-bg-blue-opacity-0_1--hover">
															<a style="padding: 12px 0px;" class="nav-link g-color-black g-color-blue-dark-v2--hover" href="<?= get_url($submenumenu->url) ?>"><?= $submenumenu->title ?></a>
														</li>
													<?php else : ?>
														<li class="lvl-2 dropdown-item hs-has-sub-menu g-bg-blue-opacity-0_1--hover ">
															<a style="padding: 12px 0px;" class="nav-link g-color-black g-color-blue-dark-v2--hover" href="#" aria-haspopup="true" aria-expanded="false" aria-controls="nav-submenu--pages--404">
																<?= $submenumenu->title ?>
															</a>
															<ul class="hs-sub-menu list-unstyled u-shadow-v11 g-brd-0 g-min-width-220 g-py-20 g-mt-minus-20 " id="nav-submenu--pages--404" aria-labelledby="nav-link--pages--404">
																<?php foreach ($submenumenu->services as $subsubmenu) :
																	if (!empty($subsubmenu->has_page)) :
																?>
																		<li class="lvl-3 dropdown-item g-bg-blue-opacity-0_1--hover">
																			<a style="padding: 12px 0px;" class="nav-link g-color-black g-color-blue-dark-v2--hover" href="<?= $subsubmenu->has_page == 1 ? get_url($subsubmenu->url) : '#' ?>">
																				<?= $subsubmenu->title ?>
																			</a>
																		</li>
																<?php
																	endif;
																endforeach; // submenu
																?>
															</ul>
														</li> <!-- End Menu lvl 3 -->
													<?php endif; // end if subsubmenu just 1
													?>
											<?php endforeach; // submenu
											?>
										</ul>
									</li> <!-- End Menu lvl 2 -->
								<?php endif; // has submenu
								?>
							<?php endforeach; // menu
							?>
							<?php endif; ?>
						</ul>
					</li> <!-- End Menu lvl 1 -->
				<?php endif; //has menu
				?>
			<?php endif; ?>
		<?php endforeach; // end nav
		?>
		<?php
		if ($this->agent->is_mobile()) :
			if (!empty($service_id)) :
				if ($service_id == 'personal-waste-management') :
		?>
					<li class="lvl-0 nav-item g-mx-10--lg g-mx-15--xl">
						<a class="nav-link g-py-7 g-px-0 text-uppercase" href="http://personal.waste4change.com/?<?= $query_from_url ?>"> <?= empty($this->session->userdata('language')) ? 'AKUN SAYA' : 'MY ACCOUNT' ?></a>
					</li>
		<?php
				endif;
			endif;
		endif;
		?>
		<?= ($this->agent->is_mobile()) ? '<br><br><br><br>' : '' ?>
	</ul>
	<?php
	if (!$this->agent->is_mobile()) :
		if (!empty($service_id)) :
			if ($service_id == 'personal-waste-management') :
	?>
				<div class="g-ml-20--lg" data-animation-in="fadeIn" data-animation-out="fadeOut" data-position="right">
					<a href="http://personal.waste4change.com/?<?= $query_from_url ?>" class="g-font-size-12  px-0 nav-link" style="line-height: 1;color:black">
						<img src="<?= get_image(DIR_ICON . 'user_icon.png') ?>" alt="<?= empty($this->session->userdata('language')) ? 'ID' : strtoupper($this->session->userdata('language')) ?>" style="height: 15px;margin-bottom: 4px;margin-right: 4px;">
						<?= empty($this->session->userdata('language')) ? 'AKUN SAYA' : 'MY ACCOUNT' ?>
					</a>
				</div>
	<?php
			endif;
		endif;
	endif;
	?>
	<?php
	if (!$this->agent->is_mobile()) {
	?>
		<div class="hs-has-sub-menu nav-item g-ml-20--lg" data-animation-in="fadeIn" data-animation-out="fadeOut" data-position="right">
			<a href="javascript:void()" class="<?= $template == 'index' ? 'nav-change-scroll g-color-white' : '' ?> g-font-size-12 nav-link px-0" style="line-height: 1;color:black" aria-haspopup="true" aria-expanded="false">
				<img src="<?= $this->session->userdata('language') ? ($this->session->userdata('language') == 'id' ? get_image(DIR_ICON . 'flag_indonesia.png') : get_image(DIR_ICON . 'flag_england.png')) : get_image(DIR_ICON . 'flag_indonesia.png') ?>" alt="<?= empty($this->session->userdata('language')) ? 'ID' : strtoupper($this->session->userdata('language')) ?>" style="border: 1px solid rgba(0,0,0,0.1);height: 13px;margin-bottom: 2px">
				<?= empty($this->session->userdata('language')) ? 'ID' : strtoupper($this->session->userdata('language')) ?>
			</a>
			<ul class="hs-sub-menu list-unstyled box-shadow-down g-mt-14 g-min-width-65 animated hs-position-right fadeOut arrow-box" id="nav-submenu--features" aria-labelledby="nav-link--features" style="display: none; margin-left:-5px">
				<?php foreach ($languages as $language) {
				?>
					<li class="dropdown-item">
						<a class="nav-link <?= empty($this->session->userdata('language')) ? (($language->language_code == 'id') ? 'g-color-info' : 'g-color-black-opacity-0_8') : (($this->session->userdata('language') == $language->language_code) ? 'g-color-info' : 'g-color-black-opacity-0_8') ?> " href="<?= $this->session->userdata('language') == $language->language_code ? 'javascript:void()' : site_url($language->language_code) ?>">
							<img class="g-mr-10" src="<?= get_image(DIR_ICON . $language->language_flag) ?>" alt="<?= $language->language_code ?>" style="border: 1px solid rgba(0,0,0,0.1);height: 13px;margin-bottom: 2px">
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
<script>

</script>