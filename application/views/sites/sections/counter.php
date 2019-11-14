<section class="bg-white dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
  <div class="divimage dzsparallaxer--target w-100 d-none" style="height: 130%; background-image: url(<?= base_url('assets/img/bg/img36.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
  <div class="container <?= $this->agent->is_mobile() ? 'g-pt-75 g-pb-30' : 'g-pt-140 g-pb-70' ?>">
    <div class="text-center g-mb-50">
      <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= strtoupper(lang('counter_title')) ?></h2>
      <p class="text-muted"><?= lang('counter_subtitle') ?></p>
    </div>
    <div class="row text-center">
      <div class="col-md-4 col-xs-12 mb-4">
        <div class="g-font-color-w4c-<?=$this->agent->is_mobile() ? 'green-v1' : 'blue-v1' ?> g-font-size-50 g-font-weight-900">
            9999
        </div>
        <div class="g-font-weight-700 g-font-size-18">
          <?=lang('counter_client')?>
        </div>
      </div>
      <div class="col-md-4 col-xs-12 mb-4">
        <div class="g-font-color-w4c-<?=$this->agent->is_mobile() ? 'green-v1' : 'blue-v1' ?> g-font-size-50 g-font-weight-900">
            9999
        </div>
        <div class="g-font-weight-700 g-font-size-18">
          <?=lang('counter_project')?>
        </div>
      </div>
      <div class="col-md-4 col-xs-12 mb-4 ">
        <div class="g-font-color-w4c-<?=$this->agent->is_mobile() ? 'green-v1' : 'blue-v1' ?> g-font-size-50 g-font-weight-900">
            9999
        </div>
        <div class="g-font-weight-700 g-font-size-18">
          <?=lang('counter_partner')?>
        </div>
      </div>
      <div class="col-12">
        <a class="btn btn-info text-uppercase g-px-30 g-py-10" href="<?=site_url('about')?>" style="border-radius:100px"><?=lang('more_about_us')?></a>
      </div>
    </div>
  </div>
</div>
</section>
