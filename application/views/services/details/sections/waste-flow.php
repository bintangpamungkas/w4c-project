
<!-- Mockup Block -->
<section class="g-bg-secondary <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-py-140' ?>">

  <div id="waste-flow" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>

  <div class="container">
    <div class="text-center g-mb-50">
      <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= lang('waste_flow') ?></h2>
      <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
    </div>

    <?php
    if($this->agent->is_mobile()){
      ?>
      <div>
        <?php $i=1; foreach ($flows as $flow): ?>
          <article class="g-transition-0_3">
            <div class="g-color-black g-bg-white--hover g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 30px 0 0 0!important;">
              <div class="row g-mb-10">
                <div class="col-5">
                  <img class="img-fluid g-ml-10" src="<?= base_url('assets/img/icons/services/flow/'.$i.'.png') ?>" alt="Image Description" style="max-height: 100px">
                </div>
                <div class="col-7 g-pt-10">
                  <h2 class="h5 g-color-black g-font-weight-600 mb-4" style="margin-bottom: 5px!important;">
                    <?= $flow->flow_name ?>
                  </h2>
                </div>
              </div>
            </div>
          </article>
          <div style="background-color: #e2e2e2;height: 50px;width: 2px;margin-left: 20%;"></div>
        <?php $i++; endforeach; ?>
      </div>
      <?php
    }else{ // DESKTOP
      ?>
      <div>
        <div class="row justify-content-center">
          <?php $i=1; foreach ($flows as $flow): ?>
            <div class="col-md-4">
              <article class="g-transition-0_3">
                <div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 30px 0 0 0!important;">
                  <img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= base_url('assets/img/icons/services/flow/'.$i.'.png') ?>" alt="Image Description" style="width: 40%">
                  <div class="g-pa-15">
                    <h2 class="h5 g-color-black g-font-weight-600 mb-4 g-font-size-15" style="margin-bottom: 5px!important;">
                      <?= $flow->flow_name ?>
                    </h2>
                    <!-- <p class="text-muted">
                      <?= lang('hiw_1_description') ?>
                    </p> -->
                  </div>
                </div>
              </article>
            </div>
          <?php $i++; endforeach; ?>
        </div>
      </div>
      <?php
    } //end desktop
    ?>
  </div>
</section>
<!-- End Mockup Block -->
