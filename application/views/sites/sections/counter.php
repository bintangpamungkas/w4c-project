<section class="bg-white dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
	<div class="divimage dzsparallaxer--target w-100 d-none" style="height: 130%; background-image: url(<?= base_url('assets/img/bg/img36.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
	<div class="container <?= $this->agent->is_mobile() ? 'g-pt-75 g-pb-30' : 'g-py-70' ?>">
		<div class="text-center g-mb-50">
			<h2 class="g-font-asap g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= strtoupper(get_lang('our-achievement')) ?></h2>
			<p class="text-muted"><?= get_lang('we-create-an-ecosystem-of-responsible-waste-manage') ?></p>
		</div>
		<div class="row text-center">
			<div class="col-md-4 col-xs-12 mb-4">
				<div class="js-counter g-color-w4c-blue-v1 g-font-size-50 g-font-weight-900" data-comma-separated="true">
          198
				</div>
				<div class="g-font-weight-700 g-font-size-18">
					<?= get_lang('clients') ?>
				</div>
			</div>
			<div class="col-md-4 col-xs-12 mb-4">
				<div class="js-counter g-color-w4c-blue-v1 g-font-size-50 g-font-weight-900" data-comma-separated="true">
          175
				</div>
				<div class="g-font-weight-700 g-font-size-18">
					<?= get_lang('projects') ?>
				</div>
			</div>
			<div class="col-md-4 col-xs-12 mb-4 ">
				<div class="g-color-w4c-blue-v1 g-font-size-50 g-font-weight-900" >
          <div class="js-counter" style="display: inline" data-comma-separated="true">441041</div>
        </div>
				<div class="g-font-weight-700 g-font-size-18">
					<?= get_lang('waste-manage') ?>
				</div>
			</div>
      <script>

      </script>
			<div class="col-12">
				<a class="btn btn-info g-color-white g-font-size-13 g-font-weight-700 g-rounded-50 g-px-30 g-py-10 text-uppercase" href="<?= site_url('about') ?>" style="border-radius:100px"><?= get_lang('more-about-us') ?></a>
			</div>
		</div>
	</div>
</section>


<!-- JS Plugins Init. -->
<script>
    $(document).on('ready', function () {
        // initialization of counters
        var counters = $.HSCore.components.HSCounter.init('[class*="js-counter"]');
    });
</script>
