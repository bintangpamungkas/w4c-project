<section class="g-bg-gray-light-v5">
  <div id="description" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>

  <div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'g-pt-80 g-pb-80' ?>">
    <div class="row">
  <?php
  if($this->agent->is_mobile()){
    ?>
    <div class="col-lg-6 g-mb-30>">
      <div class="mb-2 text-center">
        <span class="g-color-gray-dark-v3 g-font-weight-700 g-font-size-16 text-uppercase"><?= lang('about_only') ?></span>
          <hr class="g-width-50 g-my-5 g-brd-2 g-brd-blue">
          </div>
        <div style="background: url('<?= get_image('assets/img/service/'.$service_id.'/bg/'.$service->service_about_image) ?>');height: 200px;background-size: cover"></div>
      </div>
    <?php
  }
  ?>
      <div class="col-lg-6 g-mb-30 <?= $this->agent->is_mobile() ? 'd-none' : '' ?>">
        <div style="background: url('<?= get_image('assets/img/service/'.$service_id.'/bg/'.$service->service_about_image) ?>');height: 400px;background-size: cover"></div>
      </div>

      <div class="col-md-6 g-mb-30 g-mt-15">
        <div class="g-ml-10--lg">
          <div class="mb-2 <?=$this->agent->is_mobile() ? 'd-none' : ''?>">
            <span class="g-color-gray-dark-v3 g-font-weight-700 g-font-size-16 text-uppercase"><?= lang('about_only') ?></span>
            <?=$this->agent->is_mobile() ? '' : '<div class="g-width-30 g-height-2 g-pos-rel g-bg-info g-mt-5"></div>'?>
          </div>
          <div class="g-mb-5--lg">
            <h2 class="<?= $this->agent->is_mobile() ? 'h4 text-center' : 'h1' ?> g-color-black g-font-weight-600 g-mb-35 text-capitalize">
              <?= $service->service_slogan ?>
            </h2>
            <p class="g-pa-35 g-color-white" style="background: linear-gradient(90deg, rgba(11, 144, 185, 0.9), rgba(19, 182, 127, 0.9));<?= $this->agent->is_mobile() ? '' : 'margin-left: -100px' ?>">
              <?= $service->service_about ?>
            </p>
          </div>
          <a target="_blank" class="d-none btn btn-info g-font-size-default text-uppercase g-rounded-50 g-py-12 g-px-30" href="#">JOIN NOW</a>
        </div>
      </div>

    </div>
  </div>
</section>