<!-- Persuasive Banner Section -->

<div class="u-header__section u-header__section--light pb-10 g-bg-secondary" data-header-fix-moment-exclude="pb-10 g-color-white" data-header-fix-moment-classes="u-shadow-v18 g-py-0" style="border-top: 1px solid rgba(0, 0, 0, 0.05); overflow: hidden;position: fixed;
    width: 100%;
    top: 114px;
    z-index: 10;
    overflow: hidden;">
	<nav class="navbar navbar-expand-lg" style="display: block; text-align: center;">
		<div class="container">
			<!-- Responsive Toggle Button -->
			<button class="d-none g-bg-secondary g-font-size-22 toggle-icon navbar-toggler-sub navbar-toggler-right btn g-line-height-1 g-brd-none g-pa-0 g-pos-abs g-top-0 g-right-minus-15 g-pt-10 g-px-15" data-toggle-icon="icon-arrow-up" type="button" aria-label="Toggle navigation" aria-expanded="false" aria-controls="navBar" data-toggle="collapse" data-target="#navBar2">
				<i class="icon-arrow-down"></i>
			</button>
			
			<!-- End Responsive Toggle Button -->
			<a href="#welcome" class="click_scroll navbar-brand g-font-size-12 g-font-weight-700 d-inline-flex g-color-black-opacity-0_8 g-py-10">
				<i class="et-icon-recycle g-mr-12 g-font-size-24  d-none"></i>
									</a>

			<div class="collapse navbar-collapse align-items-center flex-sm-row" id="navBar2">
				<div class="row no-gutters justify-content-around" style="width: calc(100% + 17px); margin-left:-33px" "="">
					<div class="col-12" data-header-fix-moment-exclude="col-12" data-header-fix-moment-classes="col-9" "="">
					<ul class=" navbar-nav text-uppercase g-font-weight-600 mr-auto">
						<table><tbody><tr>																																																													<td>										<li class="nav-item g-my-2  g-mx-15--lg">
									<a href="#about" class="font-weight-normal g-font-size-11 click_scroll nav-link px-0 b-color-white g-color-blue--hover g-py-9" style="line-height: 1">Tentang											</a>
								</li>
								</td>																																				<td>										<li class="nav-item g-my-2  g-mx-15--lg">
									<a href="#benefit" class="font-weight-normal g-font-size-11 click_scroll nav-link px-0 b-color-white g-color-blue--hover g-py-9" style="line-height: 1">Keuntungan											</a>
								</li>
								</td>																																				<td>										<li class="nav-item g-my-2  g-mx-15--lg">
									<a href="#what-you-get" class="font-weight-normal g-font-size-11 click_scroll nav-link px-0 b-color-white g-color-blue--hover g-py-9" style="line-height: 1">Yang Anda Dapat											</a>
								</li>
								</td>																																				<td>										<li class="nav-item g-my-2  g-mx-15--lg">
									<a href="#waste-flow" class="font-weight-normal g-font-size-11 click_scroll nav-link px-0 b-color-white g-color-blue--hover g-py-9" style="line-height: 1">Alur Sampah											</a>
								</li>
								</td>																																																					<td>										<li class="nav-item g-my-2  g-mx-15--lg">
									<a href="#our-client" class="font-weight-normal g-font-size-11 click_scroll nav-link px-0 b-color-white g-color-blue--hover g-py-9" style="line-height: 1">Klien											</a>
								</li>
								</td>																																																																																							<td>										<li class="nav-item g-my-2  g-mx-15--lg">
									<a href="#our-coverage" class="font-weight-normal g-font-size-11 click_scroll nav-link px-0 b-color-white g-color-blue--hover g-py-9" style="line-height: 1">Area Cakupan											</a>
								</li>
								</td>																																										</tr></tbody></table>								</ul>
					</div>
													<div class="col-3">
							<div class="d-none" data-header-fix-moment-exclude="d-none" data-header-fix-moment-classes="d-block">
								<div class="row no-gutters justify-content-end">
									<div class="col">
										
										<a class="click_scroll btn btn-info btn-block g-color-white g-brd-white-opacity-0_2 g-font-size-13 g-rounded-50 g-px-30 g-py-9" href="https://waste4change.com/official/service/responsible-waste-management/join"> DAPATKAN PROPOSAL													<span class="align-middle u-icon-v3 d-none g-width-16 g-height-16 g-color-black-opacity-0_5 g-bg-white g-font-size-11 rounded-circle ml-3"> <i class="fa fa-info"></i> </span>
										</a>
																				</div>
																																										</div>
							</div>
						</div>
											</div>
			</div>
		</div>
	</nav>
</div>
<section>
	<div id="welcome" class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall" data-options="{direction: &quot;reverse&quot;, settings_mode_oneelement_max_offset: &quot;150&quot;}">
		<div class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall">
			<div class="divimage dzsparallaxer--target w-100 g-bg-pos-bottom-center" style="height: 100%;background: url(<?= base_url(DIR_IMG . 'service/responsible-waste-management/bg/header.jpg') ?>) 0% 0% / cover;background-size: cover;background-position:<?= $this->agent->is_mobile() ? 'center' : '' ?>; transform: translate3d(0px, 0px, 0px);"></div>
			<div class="full-height-block pending-show animated fadeIn" style="background-image: linear-gradient(100deg, rgba(255, 255, 255, 0.9) 0%, rgba(255, 255, 255, 0.6) 55%, rgba(255, 255, 255, 0) 75%); min-height: 684px !important;">
			<div class="container">
				<div class="row content-middle-fullscreen with-header middle-top " style="padding-top: 152.27px">
					<div class="col-12 g-mb-20 g-mt-40">
					<?php foreach ($breadcrumb as $bread) : ?>
						<?php if ($bread['active'] != true) : ?>
							<a class="g-color-black g-text-transform-none" href="<?= site_url($bread['url']) ?>">
								<?php echo $bread['title'] ?>
							</a>
							<i class="fa fa-angle-right g-mx-10"></i>
						<?php else : ?>
							<span class="g-font-color-w4c-1"><?php echo $bread['title'] ?> </span>
						<?php endif; ?>
					<?php endforeach; ?>																										<span class="g-font-color-w4c-1"><?php echo $title ?> </span> -->
					</div>
										<div class="col-md-6 col-10">
													<h3 class="g-color-black-opacity-0_8 g-font-weight-700 g-font-size-50 mb-4 g-font-asap" style="line-height: 1.2"><?php echo $title ?></h3>
												<div class="row">
							<div class="col-md-12">
								<h3 class="g-color-black-opacity-0_7 g-font-size-16 g-line-height-1_5 mb-3"><?php echo $titleDesc ?></h3>
							</div>
						</div>
						<div class="row pt-5 g-pb-60">
							<div class="col-md-6 col-xs-12">
								<a class="click_scroll btn btn-info btn-block g-color-white g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mb-10" href="https://waste4change.com/official/service/responsible-waste-management/join">
									DAPATKAN PROPOSAL								</a>
							</div>
													</div>
					</div>
				</div>
				<br>
			</div>
		</div>
	</div>
</section>
<!-- End Persuasive Banner Section -->