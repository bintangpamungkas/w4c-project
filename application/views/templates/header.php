<header id="js-header" class="u-header u-header--sticky-top u-header--change-appearance" data-header-fix-moment="100">
	<!-- <div id="navigation-block" class="nav-type-transparent navbar-toggle-btn u-header__section u-header__section--dark pb-10" data-header-fix-moment-exclude="pb-10 g-color-white" data-header-fix-moment-classes="g-bg-white u-shadow-v18 g-py-0"> -->
	<div id="navigation-block"
	     class="<?= $template == 'index' ? 'nav-type-transparent' : '' ?> navbar-toggle-btn  pb-10 u-header__section u-header__section--<?= $template == 'services' ? 'light bg-white' : 'dark' ?> g-pt-10--lg"
			 <?= $template == 'index' ? 'data-header-fix-moment-exclude="pb-10 g-color-white" data-header-fix-moment-classes="g-bg-white u-shadow-v18 g-py-0"' : '' ?>>

		<nav class="js-mega-menu navbar navbar-expand-lg">
			<div class="container">
				<?php if ($this->agent->is_mobile()): ?>
					<div class="hs-has-sub-menu nav-item g-mx-20--lg g-pos-abs g-top-3 g-right-0" data-animation-in="fadeIn" data-animation-out="fadeOut" data-position="right" style=" right: 50px; ">
						<a href="javascript:void()" class="<?= $template == 'index' ? 'nav-change-scroll g-color-white' : '' ?> g-font-size-12 nav-link px-0" style="line-height: 1;color:black"
						   aria-haspopup="true" aria-expanded="false">
							<img
								src="<?= $this->session->userdata('language') ? ($this->session->userdata('language') == 'id' ? get_image(DIR_ICON . 'flag_indonesia.png') : get_image(DIR_ICON . 'flag_england.png')) : get_image(DIR_ICON . 'flag_indonesia.png') ?>"
								style="border: 1px solid rgba(0,0,0,0.1);height: 13px;margin-bottom: 2px">
						</a>
						<ul class="hs-sub-menu list-unstyled box-shadow-down g-mt-14 g-min-width-65 animated fadeOut arrow-box" style="display: none; position: absolute; margin-left: -14px;">
							<?php foreach ($languages as $language) {
								?>
								<li class="dropdown-item g-pl-0">
									<a
										class="nav-link <?= empty($this->session->userdata('language')) ? (($language->language_code == 'id') ? 'g-color-info' : 'g-color-black-opacity-0_8') : (($this->session->userdata('language') == $language->language_code) ? 'g-color-info' : 'g-color-black-opacity-0_8') ?> "
										href="<?= $this->session->userdata('language') == $language->language_code ? 'javascript:void()' : site_url($language->language_code) ?>">
										<img class="g-mr-10" src="<?= get_image(DIR_ICON . $language->language_flag) ?>" style="border: 1px solid rgba(0,0,0,0.1);height: 13px;margin-bottom: 2px">
										<?= strtoupper($language->language_code) ?>
									</a>
								</li>
								<?php
							}
							?>
						</ul>
					</div>
				<?php endif; ?>

				<button class="navbar-toggler navbar-toggler-right btn g-line-height-1 g-brd-none g-pa-0 g-pos-abs g-top-3 g-right-0" type="button" aria-label="Toggle navigation" aria-expanded="false"
				        aria-controls="navBar" data-toggle="collapse" data-target="#navBar">
          <span class="hamburger g-pa-0 <?= $this->agent->is_mobile() ? 'g-pt-4' : 'g-pt-10' ?> hamburger--slider">
            <span class="hamburger-box">
              <span class="hamburger-inner"></span>
            </span>
          </span>
				</button>
				<!-- End Responsive Toggle Button -->

				<!-- Logo -->
				<a href="<?= W4C_URL ?>" class="navbar-brand">
					<img src="<?= base_url('assets/img/logo/logo-W4C_179_web.png') ?>" alt="Image Description" style="height: <?= $this->agent->is_mobile() ? '29px' : '39px' ?>">
				</a>

				<?php
				$this->load->view('templates/navigations/general');
				?>
			</div>
		</nav>
	</div>
	<?php
	if (!empty($subnav)): ?>
		<div class="u-header__section u-header__section--light pb-10 g-bg-secondary" data-header-fix-moment-exclude="pb-10 g-color-white" data-header-fix-moment-classes="u-shadow-v18 g-py-0"
		     style="border-top: 1px solid rgba(0, 0, 0, 0.05)">
			<nav class="navbar navbar-expand-lg">
				<div class="container">
					<!-- Responsive Toggle Button -->
					<button
						class="<?= $this->agent->is_mobile() ? 'd-block' : 'd-none' ?> g-bg-secondary g-font-size-22 toggle-icon navbar-toggler-sub navbar-toggler-right btn g-line-height-1 g-brd-none g-pa-0 g-pos-abs g-top-0 g-right-minus-15 g-pt-10 g-px-15"
						data-toggle-icon="icon-arrow-up" type="button" aria-label="Toggle navigation" aria-expanded="false" aria-controls="navBar" data-toggle="collapse" data-target="#navBar2">
						<i class="icon-arrow-down"></i>
					</button>
					<?php if (!empty($service->service_proposal_url)): ?>
						<div class="d-none g-bg-transparent g-font-size-22 btn g-line-height-1 g-brd-none g-pa-0 g-pos-abs g-top-3 g-right-30"
								 <?= $this->agent->is_mobile() ? ' data-header-fix-moment-exclude="d-none" data-header-fix-moment-classes="d-block"' : '' ?>>
							<a class="btn btn-info btn-xs g-color-white g-brd-white-opacity-0_2 g-rounded-50 g-py-5 g-px-20 g-mt-3"
							   href="<?= site_url('service/' . $service_id . '/join') ?>">
								<?= $service->service_id == 11 ? strtoupper(get_lang('enroll-the-class')) : strtoupper(get_lang('get-proposal')) ?>
							</a>
						</div>
					<?php endif; ?>
					<!-- End Responsive Toggle Button -->
					<a href="#welcome" class="click_scroll navbar-brand g-font-size-12 g-font-weight-700 d-inline-flex g-color-black-opacity-0_8 g-py-10">
						<i class="et-icon-recycle g-mr-12 g-font-size-24 <?= $this->agent->is_mobile() ? '' : '' ?> d-none"></i>
						<?php if ($this->agent->is_mobile()): ?>
							<div onclick="window.history.back();">
								<i class="icon-arrow-left g-font-size-14 g-mr-10"></i>
							</div>
							<div class="d-none" data-header-fix-moment-exclude="d-none" data-header-fix-moment-classes="d-block">
								<div style="width:calc(100vw - 245px); white-space: nowrap; overflow: hidden;;text-overflow: ellipsis;">
									<?= empty($parent_service->service_name) ? view_sort_name($service->service_name, 3) : view_sort_name($parent_service->service_name, 3) ?>
								</div>
							</div>
							<div class="d-block" data-header-fix-moment-exclude="d-block" data-header-fix-moment-classes="d-none">
								<div class="" style="width:calc(100vw - 95px); white-space: nowrap; overflow: hidden;;text-overflow: ellipsis;">
									<?= empty($parent_service->service_name) ? ($service->service_name) : $parent_service->service_name ?>
								</div>
							</div>
						<?php endif; ?>
					</a>

					<div class="collapse navbar-collapse align-items-center flex-sm-row" id="navBar2">
						<div <?= $this->agent->is_mobile() ? 'class="row no-gutters"' : 'class="row no-gutters justify-content-around" style="width: calc(100% + 33px); margin-left:-33px"' ?>" >
							<div class="col-7">
								<ul class="navbar-nav text-uppercase g-font-weight-600 mr-auto <?= $this->agent->is_mobile() ? '' : 'row no-gutters align-items-center' ?>">
									<?php foreach ($subnav as $subnav): ?>
										<?php if (!empty($subnav->section_menu_name)): ?>
											<?= $this->agent->is_mobile() ? '' : '<div class="col">' ?>
												<li class="nav-item g-my-2 <?= $this->agent->is_mobile() ? 'g-my-10' : '' ?> g-mx-20--lg">
													<a href="#<?= $subnav->section_slug ?>" class="font-weight-normal g-font-size-11 click_scroll nav-link px-0 b-color-white g-color-blue--hover g-py-9"
													   style="line-height: 1"><?= $subnav->section_menu_name ?>
													</a>
												</li>
											<?= $this->agent->is_mobile() ? '' : '</div>' ?>
										<?php endif; ?>
									<?php endforeach; ?>
								</ul>
							</div>
							<?php if (!$this->agent->is_mobile()) { // desktop view only ?>
								<div class="col-5">
									<div class="row no-gutters justify-content-end">
										<div class="col-6">
											<a class="click_scroll btn btn-info btn-block g-color-white g-brd-white-opacity-0_2 g-font-size-13 g-rounded-50 g-px-20 g-py-9 d-none"
											   href="<?= site_url('service/' . $service_id . '/join') ?>"
											   data-header-fix-moment-exclude="d-none"
											   data-header-fix-moment-classes="d-block"> <?= $service->service_id == 11 ? strtoupper(get_lang('enroll-the-class')) : strtoupper(get_lang('get-proposal')) ?>
												<span class="align-middle u-icon-v3 d-none g-width-16 g-height-16 g-color-black-opacity-0_5 g-bg-white g-font-size-11 rounded-circle ml-3"> <i class="fa fa-info"></i> </span>
											</a>
										</div>
										<?php if (empty($parent_service->service_portfolio_url)) { ?>
											<?php if ($service->service_portfolio_url == 1) { ?>
												<div class="col-6">

													<a class="click_scroll btn btn-outline-info btn-block g-font-size-13 g-rounded-50 g-px-20 g-brd-2 g-ml-15  g-py-9 d-none"
													   href="<?= base_url(DIR_SERVICE . $service_id . '/portfolio/' . $lang . '.pdf') ?>" data-header-fix-moment-exclude="d-none"
													   data-header-fix-moment-classes="d-block"> <?= strtoupper(get_lang('get-portfolio')) ?>
														<span class="align-middle u-icon-v3 d-none g-width-16 g-height-16 g-color-black-opacity-0_5 g-bg-white g-font-size-11 rounded-circle ml-3"> <i
																class="fa fa-info"></i> </span>
													</a>
												</div>

											<?php } ?>
										<?php } else { ?>
											<?php if ($parent_service->service_portfolio_url == 1) { ?>
												<div class="col-6">
													<a class="click_scroll btn btn-outline-info btn-block g-font-size-13 g-rounded-50 g-px-20 g-brd-2 g-ml-15  g-py-9 d-none"
													   href="<?= base_url(DIR_SERVICE . $parent_service->service_slug . '/portfolio/' . $lang . '.pdf') ?>" data-header-fix-moment-exclude="d-none"
													   data-header-fix-moment-classes="d-block"> <?= strtoupper(get_lang('get-portfolio')) ?>
														<span class="align-middle u-icon-v3 d-none g-width-16 g-height-16 g-color-black-opacity-0_5 g-bg-white g-font-size-11 rounded-circle ml-3"> <i
																class="fa fa-info"></i> </span>
													</a>
												</div>
											<?php } ?>
										<?php } ?>
									</div>
								</div>
							<?php }// end desktop view ?>
						</div>
					</div>
				</div>
			</nav>
		</div>
	<?php
	endif; ?>

</header>
