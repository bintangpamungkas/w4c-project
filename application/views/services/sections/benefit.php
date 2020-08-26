<?php if (!empty($benefits)):?>
<section class="g-bg-secondary">
  <div id="<?=$section_slug?>" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
  <div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'g-py-70' ?>">
    <div class="text-center g-mb-50">
        <h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?=$section_name?></h2>
        <hr class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue">
    </div>
    <div class="row">
      <?php foreach ($benefits as $i=>$benefit): 
        // if($service->service_id==33 && $i<5): 
        ?>
        <div class="col-md-6 col-xs-12 g-line-height-1_3">
          <div class="row no-gutters g-my-10">
            <div class="col-auto">
	            <img src="<?=get_image(DIR_ICON.'check-circle.png')?>" alt="check icon" style="<?=$this->agent->is_mobile() ? 'width:23px; margin-right: 13px' : 'width:30px; margin-right: 20px'?>">
            </div>
            <div class="col" style="<?=$this->agent->is_mobile() ? '' : 'margin-top:7px'?>">
              <?= $benefit->benefit_name?>
            </div>
          </div>
        </div>
        <?php 
      // endif; 
      endforeach; 
      ?>
    </div>
  </div>
</section>
<?php endif; ?>