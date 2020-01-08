<div class="shortcode-html" id="footer">
	<!-- Footer -->
	<footer class="g-color-white-opacity-0_8 g-bg-img-hero g-pt-60" style="background: radial-gradient(circle farthest-side at 70% -10%, rgba(21, 189, 119, 1), rgba(11, 141, 192, 1));">
		<div class="container g-mb-60">
			<div class="row">

				<div class="col-lg-2 col-md-6 g-mb-40 g-mb-0--lg <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
					<div class="u-heading-v2-3 g-mb-20">
						<h2 class="u-heading-v2__title h6 text-uppercase mb-0 font-weight-bold"><?= APP_NAME ?></h2>
					</div>
					<ul class="list-unstyled">
						<li class="g-mb-5">
							<a class="g-color-white-opacity-0_8" href="<?= site_url('service') ?>"><?= get_lang('all-services') ?></a>
						</li>
						<li class="g-mb-5">
							<a class="g-color-white-opacity-0_8" href="<?= site_url('about') ?>"><?= get_lang('about-us') ?></a>
						</li>
						<li class="g-mb-5">
							<a class="g-color-white-opacity-0_8" href="<?= site_url('https://waste4change.com/blog') ?>"><?= get_lang('blog-and-news') ?></a>
						</li>
						<li class="g-mb-5">
							<a class="g-color-white-opacity-0_8" href="<?= site_url('contact') ?>"><?= get_lang('contact') ?></a>
						</li>
						<li class="g-mb-5">
							<a class="g-color-white-opacity-0_8" href="http://w4c.id/internship"><?= get_lang('internship') ?></a>
						</li>
						<li class="g-mb-5">
							<a class="g-color-white-opacity-0_8" href="https://waste4change.com/impactful-career-waste4change/"><?= get_lang('carrer') ?></a>
						</li>
					</ul>
				</div>
				<?php
				foreach ($navigation_array as $nav):
					if (!empty($nav['menu'])):
						?>
						<?php foreach ($nav['menu'] as $menu): ?>
						<div class="col-lg-auto col-md-6 g-mb-40 g-mb-0--lg <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
							<div class="u-heading-v2-3 g-mb-20">
								<h2 class="u-heading-v2__title h6 text-uppercase mb-0 font-weight-bold"><?= $menu->title ?></h2>
							</div>
							<ul class="list-unstyled g-ma-0">
								<?php foreach ($menu->menu as $submenu): ?>
									<?php foreach ($submenu->menu as $subsubmenu): ?>
										<li class="g-mb-5">
											<a class="g-color-white-opacity-0_8" href="<?= site_url($subsubmenu->url) ?>>"><?= $subsubmenu->title ?></a>
										</li>
									<?php endforeach; ?>
								<?php endforeach; ?>
							</ul>
						</div>
					<?php endforeach; //  foreach ($nav['menu'] as $menu)
						?>
					<?php
					endif; //	if (!empty($nav['menu'])):
				endforeach;
				?>
				<div class="col-lg col-md-6 g-mb-40 g-mb-0--lg <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
					<div class="u-heading-v2-3 g-mb-20">
						<h2 class="u-heading-v2__title h6 text-uppercase mb-0 font-weight-bold"><?= get_lang('connect-with-us') ?></h2>
					</div>

					<address class="mb-5 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
						<div class="g-mb-10">
<!--							<i class="icon-real-estate-018 u-line-icon-pro g-mr-10"></i>-->
							<span><a class="g-color-white-opacity-0_8" target="_blank" href="https://goo.gl/maps/h16wzCy2htA2"><?= OFFICIAL_ADDRESS ?></a></span>
						</div>

						<div class="g-mb-10">
<!--							<i class="fa fa-phone g-mr-10"></i>-->
							<span><?= OFFICIAL_TELEPHONE ?></span>
						</div>

						<div class="g-mb-10">
<!--							<i class="fa fa-envelope g-mr-10"></i>-->
							<span><a class="g-color-white-opacity-0_8" href="mailto:<?= OFFICIAL_MAIL ?>"><?= OFFICIAL_MAIL ?></a></span>
						</div>
					</address>

					<ul class="list-inline mb-0">
						<li class="list-inline-item g-mr-10">
							<a class="u-icon-v3 u-icon-size--md g-bg-white-opacity-0_1 g-bg-white-opacity-0_2--hover g-color-white-opacity-0_6 g-rounded-50x" href="https://facebook.com/waste4change" target="_blank">
								<i class="fa fa-facebook"></i>
							</a>
						</li>
						<li class="list-inline-item g-mr-10">
							<a class="u-icon-v3 u-icon-size--md g-bg-white-opacity-0_1 g-bg-white-opacity-0_2--hover g-color-white-opacity-0_6 g-rounded-50x" href="https://instagram.com/waste4change" target="_blank">
								<i class="fa fa-instagram"></i>
							</a>
						</li>
						<li class="list-inline-item g-mr-10">
							<a class="u-icon-v3 u-icon-size--md g-bg-white-opacity-0_1 g-bg-white-opacity-0_2--hover g-color-white-opacity-0_6 g-rounded-50x" href="https://twitter.com/waste4change" target="_blank">
								<i class="fa fa-twitter"></i>
							</a>
						</li>
						<li class="list-inline-item g-mr-10">
							<a class="u-icon-v3 u-icon-size--md g-bg-white-opacity-0_1 g-bg-white-opacity-0_2--hover g-color-white-opacity-0_6 g-rounded-50x" href="https://www.youtube.com/channel/UCmyjlUYRfBiYEWDRcsd5raQ" target="_blank">
								<i class="fa fa-youtube"></i>
							</a>
						</li>
					</ul>
				</div>
				<!-- End Footer Content -->
			</div>
		</div>

		<!-- Copyright Footer -->
		<div class="text-center g-py-20 g-color-blue" style="background-color:#0B6375">
			<div class="container">
				<small class="g-font-size-default g-mr-10 g-mb-10 g-mb-0--md" style="color:#44B4C5"><?= DEV_YEAR ?> - All Rights Reserved
					<a class="" href="<?= site_url('') ?>" style="color:#44B4C5"><?= APP_NAME ?></a>
				</small>
			</div>
		</div>
		<!-- End Copyright Footer -->
	</footer>
	<!-- End Footer -->
</div>

<a class="js-go-to u-go-to-v1" href="#" data-type="fixed" data-position='{
     "bottom": 15,
     "right": 15
   }' data-offset-top="400" data-compensation="#js-header" data-show-effect="zoomIn">
	<i class="hs-icon hs-icon-arrow-top"></i>
</a>