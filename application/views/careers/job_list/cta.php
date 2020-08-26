<!-- CTA -->
<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}' style="background-color:white;height:400px">
  <div class="divimage dzsparallaxer--target w-100" style="height: 130%; background-image: url(<?= get_image(DIR_IMG . 'bg/career/image11.png') ?>); transform: translate3d(0px, -48.5814px, 0px);">
  </div>
  <div style="background:rgba(248,248,248,0.45); height:100%">
    <div class="container <?= $this->agent->is_mobile() ? 'text-center g-py-50' : 'g-py-70' ?>">
      <div class="row justify-content-center text-center">
        <div class="col-mb-12 col-10 g-mb-15 pt-5 align-self-center">
          <div class="g-color-black g-font-size-<?= $this->agent->is_mobile() ? '22  g-mb-30' : '36  g-mb-50' ?>">
            <?= $copy->CantFindWhatYouAreLookingFor ?></div>
        </div>
        <div class="col-md-3 col-10 g-mb-15 align-self-center">
          <a class="btn btn-block btn-info g-color-white g-font-size-<?= $this->agent->is_mobile() ? '14' : '18' ?> g-font-weight-600 g-rounded-50 g-py-15 g-px-50" href="<?= $copy->DropCVUrl ?>">
            <?= strtoupper($copy->DropCV) ?>
          </a>
        </div>
        <div class="col-md-3 col-10 g-mb-15 align-self-center">
          <a class="btn btn-block btn-outline-info g-brd-2 g-font-size-<?= $this->agent->is_mobile() ? '14' : '18' ?> g-font-weight-600 g-rounded-50 g-py-15 g-px-50" href = "<?= $copy->ContactUrl?>">
            <?= strtoupper($copy->ContactUs) ?>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- End CTA -->