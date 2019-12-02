<div class="collapse navbar-collapse align-items-center flex-sm-row g-pt-10 g-pt-5--lg" id="navBar">
	<?= ($this->agent->is_mobile()) ? '<div class="js-scrollbar card-block  u-info-v1-1 g-bg-white-gradient-v1--after g-pa-0 full-height"> ' : '' ?>
	<ul class="navbar-nav text-uppercase g-font-weight-600 mr-auto">

		<?php foreach ($navigation_array as $nav): ?>
			<?php if ($this->agent->is_mobile()): ?>
				<?php if (empty($nav['menu'])): ?>
					<li class="nav-item  g-mx-10--lg g-mx-15--xl">
						<a id="nav-link-pages" class="nav-link g-py-7 g-px-0 text-uppercase"
						   href="<?= $nav['url'] ?>"> <?= $nav['title'] ?></a>
					</li>
				<?php else: ?>
					<li class="hs-has-sub-menu nav-item  g-mx-10--lg g-mx-15--xl" data-animation-in="fadeIn"
					    data-animation-out="fadeOut">
						<a id="nav-link-pages" class="nav-link g-py-7 g-px-0 text-uppercase" href="#" aria-haspopup="true"
						   aria-expanded="false" aria-controls="nav-submenu-pages"><?= $nav['title'] ?></a>
						<ul
							class="mega-menu hs-sub-menu list-unstyled u-shadow-v11 g-brd-0 g-min-width-220 g-mt-18 g-mt-8--lg--scrolling"
							id="nav-submenu-pages" aria-labelledby="nav-link-pages">
							<!-- Pages - Others -->
							<?php foreach ($nav['menu'] as $menu): ?>
								<?php if (empty($menu->menu)): //don't have menu?>
									<li class="dropdown-item">
										<a id="nav-link--pages--others" class="nav-link g-color-black"
										   href="<?= $menu->url ?>"> <?= $menu->title ?></a>
									</li>
								<?php else: //has menu?>
									<li class="dropdown-item hs-has-sub-menu ">
										<a id="nav-link--pages--others" class="nav-link g-color-black" href="#" aria-haspopup="true"
										   aria-expanded="false" aria-controls="nav-submenu--pages--others"><i
												class="<?= $menu->icon ?> g-mr-10"></i><?= $menu->title ?></a>

										<ul class="hs-sub-menu list-unstyled u-shadow-v11 g-brd-0 g-min-width-220 g-mt-minus-2"
										    id="nav-submenu--pages--others" aria-labelledby="nav-link--pages--others">
											<?php foreach ($menu->menu as $submenu): ?>
												<?php if (empty($submenu->menu)): ?>
													<li class="dropdown-item">
														<a class="nav-link g-color-black" href="<?= $submenu->url ?>"><?= $submenu->menu ?></a>
													</li>
												<?php else: ?>
													<li class="dropdown-item hs-has-sub-menu ">
														<a class="nav-link g-color-black" href="#" aria-haspopup="true" aria-expanded="false"
														   aria-controls="nav-submenu--pages--404"><?= $submenu->title ?></a>

														<ul class="hs-sub-menu list-unstyled u-shadow-v11 g-brd-0 g-min-width-220 g-mt-minus-2 "
														    id="nav-submenu--pages--404" aria-labelledby="nav-link--pages--404">
															<?php foreach ($submenu->menu as $subsubmenu): 
																	if(!empty($subsubmenu->has_page)):
																?>
																<li class="dropdown-item as">
																	<a class="nav-link g-color-black"
																	   href="<?= $subsubmenu->has_page == 1 ? HOST.$subsubmenu->url : '#' ?>"><?= $subsubmenu->title ?></a>
																</li>
															<?php 
															endif;
														endforeach; ?>
														</ul>
													</li> <!-- End Menu lvl 3 -->
												<?php endif; //has sub sub menu?>
											<?php endforeach; // submenu?>
										</ul>
									</li> <!-- End Menu lvl 2 -->
								<?php endif; // has submenu?>
							<?php endforeach; // menu?>
						</ul>
					</li> <!-- End Menu lvl 1 -->
				<?php endif; //has menu?>
			<?php else: ?>
				<?php if ($nav['for'] != 'language'): ?>
					<?php if (empty($nav['menu'])): ?>
						<li class="nav-item  g-mx-10--lg g-mx-15--xl">
							<a id="nav-link-pages" class="nav-link g-py-7 g-px-0 text-uppercase"
							   href="<?= $nav['url'] ?>"> <?= $nav['title'] ?></a>
						</li>
					<?php else: ?>
						<li class="hs-has-sub-menu nav-item  g-mx-10--lg g-mx-15--xl" data-animation-in="fadeIn"
						    data-animation-out="fadeOut">
							<a id="nav-link-pages" class="nav-link g-py-7 g-px-0 text-uppercase" href="#" aria-haspopup="true"
							   aria-expanded="false" aria-controls="nav-submenu-pages"><?= $nav['title'] ?></a>
							<ul
								class="mega-menu hs-sub-menu list-unstyled u-shadow-v11 g-brd-0 g-min-width-220 g-mt-18 g-mt-8--lg--scrolling"
								id="nav-submenu-pages" aria-labelledby="nav-link-pages">
								<!-- Pages - Others -->
								<?php foreach ($nav['menu'] as $menu): ?>
									<?php if (empty($menu->menu)): //don't have menu?>
										<li class="dropdown-item">
											<a id="nav-link--pages--others" class="nav-link g-color-black"
											   href="<?= $menu->url ?>"> <?= $menu->title ?></a>
										</li>
									<?php else: //has menu?>
										<li class="dropdown-item hs-has-sub-menu ">
											<a id="nav-link--pages--others" class="nav-link g-color-black" href="#" aria-haspopup="true"
											   aria-expanded="false" aria-controls="nav-submenu--pages--others"><i
													class="<?= $menu->icon ?> g-mr-10"></i><?= $menu->title ?></a>

											<ul class="hs-sub-menu list-unstyled u-shadow-v11 g-brd-0 g-min-width-220 g-mt-minus-2"
											    id="nav-submenu--pages--others" aria-labelledby="nav-link--pages--others">
												<?php foreach ($menu->menu as $submenu): ?>
													<?php if (empty($submenu->menu)): ?>
														<li class="dropdown-item">
															<a class="nav-link g-color-black" href="<?= $submenu->url ?>"><?= $submenu->menu ?></a>
														</li>
													<?php else: ?>
														<li class="dropdown-item hs-has-sub-menu ">
															<a class="nav-link g-color-black" href="#" aria-haspopup="true" aria-expanded="false"
															   aria-controls="nav-submenu--pages--404"><?= $submenu->title ?></a>

															<ul class="hs-sub-menu list-unstyled u-shadow-v11 g-brd-0 g-min-width-220 g-mt-minus-2 "
															    id="nav-submenu--pages--404" aria-labelledby="nav-link--pages--404">
																<?php foreach ($submenu->menu as $subsubmenu): 
																	if(!empty($subsubmenu->has_page)):
																	?>
																	<li class="dropdown-item as">
																		<a class="nav-link g-color-black"
																		   href="<?= $subsubmenu->has_page == 1 ? HOST.$subsubmenu->url : '#' ?>"><?= $subsubmenu->title ?></a>
																	</li>
																<?php 
																endif;
															endforeach; ?>
															</ul>
														</li> <!-- End Menu lvl 3 -->
													<?php endif; //has sub sub menu?>
												<?php endforeach; // submenu?>
											</ul>
										</li> <!-- End Menu lvl 2 -->
									<?php endif; // has submenu?>
								<?php endforeach; // menu?>
							</ul>
						</li> <!-- End Menu lvl 1 -->
					<?php endif; //has menu?>
				<?php endif; ?>
			<?php endif; // end lang?>

		<?php endforeach; // nav?>
		<!-- End Pages -->
	</ul>
	<?= ($this->agent->is_mobile()) ? '<br><br><br><br></div>' : '' ?>

	<?php
	if (!$this->agent->is_mobile()) {
		?>

		<div class="hs-has-sub-menu nav-item g-mx-20--lg" data-animation-in="fadeIn" data-animation-out="fadeOut"
		     data-position="right">
			<a href="javascript:void()" class="<?=$template=='index' ? 'nav-change-scroll g-color-white' : ''?> g-font-size-12 nav-link px-0"
			   style="line-height: 1;color:black" aria-haspopup="true" aria-expanded="false">
				<img src="<?=get_image('assets/img/icons/flag_indonesia.png')?>"
				     style="border: 1px solid rgba(0,0,0,0.1);height: 13px;margin-bottom: 2px">
				ID
			</a>
			<ul class="hs-sub-menu list-unstyled box-shadow-down g-mt-14 g-min-width-65 animated hs-position-right fadeOut"
			    id="nav-submenu--features" aria-labelledby="nav-link--features" style="display: none;">
				<li class="dropdown-item ">
					<a class="nav-link g-color-info" href="javascript:void()">ID</a>
				</li>
				<li class="dropdown-item ">
					<a class="nav-link g-color-black-opacity-0_8" href="<?=site_url('en')?>">EN</a>
				</li>
			</ul>
		</div>

		<?php
	} // END if (!$this->agent->is_mobile() && )
	?>


</div> <!-- End Navigation -->
