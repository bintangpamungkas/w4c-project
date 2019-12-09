<?php if (!empty($activities)):?>

<section class="g-bg-secondary">
  <div id="activities" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
  <div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'g-pt-80 g-pb-80' ?>">
    <div class="text-center g-mb-50">
        <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-25' : '' ?>"><?= strtoupper(get_lang('activities')) ?></h2>
        <hr class="g-width-30 g-my-5 g-brd-2 g-brd-blue">
    </div>
    <div class="row">
      <?php foreach ($benefits as $benefit): ?>
        <div class="col-md-6 col-xs-12 g-line-height-1_3">
          <div class="row no-gutters g-my-10">
            <div class="col-auto">
	            <img src="<?=get_image(DIR_ICON.'check-circle.png')?>" alt="" style="<?=$this->agent->is_mobile() ? 'width:23px; margin-right: 13px' : 'width:30px; margin-right: 20px'?>">
            </div>
	          <div class="col" style="<?=$this->agent->is_mobile() ? '' : 'margin-top:7px'?>">
	          <?=$benefit->benefit_name?>
            </div>
          </div>
        </div>
      <?php endforeach; ?>
    </div>
  </div>
</section>
<?php endif;?>
