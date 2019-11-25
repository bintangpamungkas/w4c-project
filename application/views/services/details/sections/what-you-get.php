<section class="g-bg-secondary">
  <div id="what-you-get" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
  <div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'g-pt-80 g-pb-80' ?>">

    <div class="row">
      <div class="col-md-5 col-xs-12">
        <div class="mb-2 <?=$this->agent->is_mobile() ? 'text-center' : ''?>">
          <span class="g-color-gray-dark-v3 g-font-weight-700 g-font-size-25 text-uppercase"><?= lang('what_you_get') ?></span>
          <?=$this->agent->is_mobile() ? '<hr class="g-width-50 g-my-5 g-brd-2 g-brd-blue">' : '<div class="g-width-30 g-height-2 g-pos-rel g-bg-info g-mt-5"></div>'?>
          <div class="mt-2 mb-4"> <?=lang('what_you_get_sub')?> </div>
        </div>
      </div>
      <div class="col-md-7 col-xs-12">
        <div class="row">
          <?php foreach ($facilities as $facility): ?>
            <div class="col-md-6 col-xs-12 g-line-height-1_3">
              <div class="row no-gutters <?=$this->agent->is_mobile() ? 'g-my-20' : 'g-my-25'?> ">
                <div class="col-auto">
                  <img src="<?=get_image('assets/img/icons/services/what-you-get/'.$facility->facility_icon)?>" alt="" style="max-width: 40px;max-height: 40px; margin-right: 20px; margin-top: -10px;">
                </div>
                <div class="col">
                  <?=$facility->facility_name?>
                </div>
              </div>
            </div>
        <?php endforeach; ?>
      </div>
      </div>
    </div>
  </div>
</section>
