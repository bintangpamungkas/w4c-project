<section class="g-bg-white">
  <div id="<?=$section_slug?>" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
  <div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'g-py-70' ?>">

    <div class="row">
      <div class="col-md-5 col-xs-12">
        <div class="mb-2 <?=$this->agent->is_mobile() ? 'text-center' : ''?>">
          <span class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : 'g-font-size-25' ?>"><?=$section->section_title?></span>
          <?=$this->agent->is_mobile() ? '<hr class="g-width-50 g-mt-10 g-mb-20 g-brd-2 g-brd-blue">' : '<div class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue"></div>'?>
          <div class="mt-2 mb-6"> <?=get_lang('what_you_get_sub')?> </div>
        </div>
      </div>
      <div class="col-md-7 col-xs-12">
        <div class="row">
          <?php foreach ($section->section_items as $facility): ?>
            <div class="col-md-6 col-xs-12 g-line-height-1_3">
              <div class="row no-gutters <?=$this->agent->is_mobile() ? 'g-my-20' : 'g-my-25'?> ">
                <div class="col-auto">
                  <img src="<?=get_image(DIR_ICON.'what-you-get/'.$facility->item_image)?>" alt="Flow <?=$facility->item_title?>" style="<?=$this->agent->is_mobile() ? 'tmax-width: 60px;max-height: 60px;' : 'max-width: 70px;max-height: 70px;'?> margin-right: 10px; margin-top: -25px;">
                </div>
                <div class="col">
                  <?=$facility->item_title?>
                </div>
              </div>
            </div>
        <?php endforeach; ?>
      </div>
      </div>
    </div>
  </div>
</section>
