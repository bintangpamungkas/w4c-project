<section class="g-bg-gray-light-v5">
  <div id="description" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
  <div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'g-pt-80 g-pb-80' ?>">
    <div class="row">
      <?php
      if($this->agent->is_mobile()){
        ?>
        <div class="col-lg-6 g-mb-30>">
          <div class="mb-2 text-center">
            <span class="g-color-gray-dark-v3 g-font-weight-700 g-font-size-16 text-uppercase"><?= get_lang('description') ?></span>
              <hr class="g-width-50 g-my-5 g-brd-2 g-brd-blue">
            </div>
          <div style="background: url('<?= get_image('assets/img/project/'.$service_id.'/about.jpg') ?>');height: 200px;background-size: cover"></div>
        </div>    
        <div class="col-md-6">
          <div class="g-mb-5--lg g-px-20" style="margin-top:-30px">
            <p class="g-pa-20 g-color-white" style="background: linear-gradient(90deg, rgba(11, 144, 185, 0.9), rgba(19, 182, 127, 0.9));<?= $this->agent->is_mobile() ? '' : 'margin-left: -100px' ?>">
              <?= empty($service->service_about) ? get_lang('long-lorem') : $service->service_about ?>
            </p>
          </div>
          <a target="_blank" class="d-none btn btn-info g-font-size-default text-uppercase g-rounded-50 g-py-12 g-px-30" href="#">JOIN NOW</a>
        </div>
        <?php
      }else{
        ?>
          <div class="col-lg-6 g-mb-30" style="z-index:2">
            <div style="background: url('<?= get_image('assets/img/project/'.$service_id.'/about.jpg') ?>');height: 250px;background-size: cover;"></div>
          </div>
          <div class="col-md-6 g-mb-30 g-mt-15">
            <div class="g-ml-10--lg">
              <div class="mb-2">
                <span class="g-color-gray-dark-v3 g-font-weight-700 g-font-size-16 text-uppercase"><?= get_lang('description') ?></span>
                <div class="g-width-30 g-height-2 g-pos-rel g-bg-info g-mt-5"></div>
              </div>
              <div class="g-mb-5--lg">
                <p class="g-pa-35 g-color-white g-pl-100" style="background: linear-gradient(90deg, rgba(11, 144, 185, 0.9), rgba(19, 182, 127, 0.9));<?= $this->agent->is_mobile() ? '' : 'margin-left: -100px' ?>">
                  <?= empty($service->service_about) ? get_lang('long-lorem') : $service->service_about ?>
                </p>
              </div>
              <a target="_blank" class="d-none btn btn-info g-font-size-default text-uppercase g-rounded-50 g-py-12 g-px-30" href="#">JOIN NOW</a>
            </div>
          </div>
          <?php
      }
      ?>
    </div>
  </div>
</section>
