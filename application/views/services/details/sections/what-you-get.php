<section class="g-bg-white">
  <div id="<?=$section_slug?>" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
  <div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'g-pt-80 g-pb-80' ?>">

    <div class="row">
      <div class="col-md-5 col-xs-12">
        <div class="mb-2 <?=$this->agent->is_mobile() ? 'text-center' : ''?>">
          <span class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?=$section_name?></span>
          <?=$this->agent->is_mobile() ? '<hr class="g-width-50 g-my-5 g-brd-2 g-brd-blue">' : '<div class="g-width-30 g-height-2 g-pos-rel g-bg-info g-mt-5"></div>'?>
          <div class="mt-2 mb-4"> <?=get_lang('what_you_get_sub')?> </div>
        </div>
      </div>
      <div class="col-md-7 col-xs-12">
        <div class="row">
          <?php foreach ($facilities as $facility): ?>
            <div class="col-md-6 col-xs-12 g-line-height-1_3">
              <div class="row no-gutters <?=$this->agent->is_mobile() ? 'g-my-20' : 'g-my-25'?> ">
                <div class="col-auto">
                  <img src="<?=get_image(DIR_ICON.'what-you-get/'.$facility->facility_icon)?>" alt="" style="<?=$this->agent->is_mobile() ? 'tmax-width: 60px;max-height: 60px;' : 'max-width: 70px;max-height: 70px;'?> margin-right: 0px; margin-top: -20px;">
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
