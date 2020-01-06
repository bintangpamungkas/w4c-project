<!-- Promo Block -->
<section id="welcome" class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}' style="background-color: #3D658E;">
	<div class="divimage dzsparallaxer--target w-100 g-bg-pos-bottom-center image-opacity-0 animated fadeIn" id="welcome-image" style="height: 120%;background-image: url(<?= $this->agent->is_mobile() ? base_url(DIR_BG . 'header-allservices.jpg') : base_url(DIR_BG . 'home/welcome-header.jpg') ?>);filter: grayscale(100%);background-position-y: 10px;"></div>
	<div class="g-flex-middle-item full-height-block pending-show animated d-zap" style="background: radial-gradient(circle farthest-side at 85% 35%, rgba(21, 189, 119, 0.67), rgba(61, 101, 142, 0.92));">
		<div class="container">
			<div class="row content-middle-fullscreen">
				<div class="col-md-12">
					<div class="g-font-asap g-font-weight-500  g-font-size-<?= $this->agent->is_mobile() ? '46 g-line-height-1_3' : '60  g-mt-70' ?> g-color-white" ><?= get_lang('it-is-time-to-responsibly') ?></div>
					<div class="g-font-asap g-font-weight-900 g-letter-spacing-1_5 g-font-size-<?= $this->agent->is_mobile() ? '46 g-line-height-1_3' : '60 g-line-height-1' ?>" style="color: #88C662;text-shadow: 0.5px 0.5px 0 #88C662, -0.5px -0.5px 0 #88C662, 0.5px -0.5px 0 #88C662, -0.5px 0.5px 0 #88C662, 3px 3px 5px #0000;"><?= get_lang('responsibly') ?></div>
					<div class="g-font-asap g-font-weight-900 g-letter-spacing-1_5 g-font-size-<?= $this->agent->is_mobile() ? '46 g-line-height-1_3' : '60 g-line-height-1' ?> g-color-white" style="text-shadow: 0.5px 0.5px 0 #fff, -0.5px -0.5px 0 #fff, 0.5px -0.5px 0 #fff, -0.5px 0.5px 0 #fff, 3px 3px 5px #0000;"><?= get_lang('manage-your-waste') ?></div>
					
					<div class="g-font-asap g-font-weight-500 g-line-height-1 g-font-size-<?= $this->agent->is_mobile() ? '25 mb-3 g-mt-40' : '45 g-mt-30' ?> g-color-white" ><?= get_lang('with-waste4change') ?></div>
					<span class="d-block g-color-white-opacity-0_8 g-font-size-20 mb-5 mt-1"></span>
					<a class="js-fancybox u-link-v5 g-color-white" href="https://vimeo.com/167434033" title="Single Image" style="display: none">
          <span class="align-middle u-icon-v3 u-block-hover--scale g-bg-white g-color-black g-color-primary--hover g-rounded-50x g-cursor-pointer mr-2">
            <i class="g-font-size-18 g-pos-rel g-left-2 fa fa-play"></i>
          </span>
						1:41 minutes
					</a>
				</div>
			</div>

			<!-- Services target navivation -->
			
			<!-- END Services target navivation -->

		</div>
	</div>

</section>
<!-- End Promo Block -->

<?php
	// $this->load->view('sites/sections/fact-waste');
?>

<?php
	$this->load->view('sites/sections/services');
?>

<?php
	$this->load->view('sites/sections/counter');
?>

<?php
	$this->load->view('sites/sections/client');
?>

<?php
	$this->load->view('sites/sections/testimonial');
?>

<?php
	// $this->load->view('sites/sections/media');
?>

<?php
	$this->load->view('sites/sections/blog');
?>

<?php
	$this->load->view('sites/sections/share');
?>

<?php
	$this->load->view('sites/sections/cta');
?>
