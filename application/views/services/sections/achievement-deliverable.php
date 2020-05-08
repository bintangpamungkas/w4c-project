<?php if(!empty($achievements)):?>
<section class="g-bg-white">
  <div id="<?=$section_slug?>" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
  <div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'g-py-70' ?>">
    <div class="text-center g-mb-50">
        <h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?=$section_name?></h2>
        <hr class="g-width-30 g-my-5 g-brd-2 g-brd-blue">
    </div>
    <div class="row  justify-content-md-center">
	    <?php foreach ($achievements as $achievement): ?>
        <div class="col-md-4 col-xs-12 g-line-height-1_3">
          <div class="row no-gutters <?=$this->agent->is_mobile() ? 'g-my-20' : 'g-my-25'?> ">
            <div class="col-auto">
              <img src="<?=get_image(DIR_ICON.'what-you-get/'.$achievement->achievement_icon)?>" alt="<?= $section_name.' '.$achievement->achievement_name?>" style="<?=$this->agent->is_mobile() ? 'tmax-width: 60px;max-height: 60px;' : 'max-width: 70px;max-height: 70px;'?> margin-right: 10px; margin-top: -20px;">
            </div>
            <div class="col">
              <?=$achievement->achievement_name?>
            </div>
          </div>
        </div>
	    <?php endforeach; ?>
    </div>
  </div>
</section>
<?php endif; ?>
