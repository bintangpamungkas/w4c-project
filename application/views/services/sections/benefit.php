<?php if (!empty($benefits)):?>
<section class="g-bg-secondary">
  <div id="<?=$section_slug?>" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
  <div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'g-py-70' ?>">
    <div class="text-center g-mb-50">
        <h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?=$section_name?></h2>
        <hr class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue">
    </div>
    <div class="row">
      <?php if($service->service_slug == 'digital-epr'): ?>
      <?php
          $benefit_description = [
            'id' => [ 
              'benefit' => [
                'reduce-trash' => [
                  'Mengurangi jumlah sampah yang berakhir di TPA'
                ],
                'prevent-product' => [
                  'Mencegah produk berlabel merek Anda agar tidak disalahgunakan, atau dipalsukan'
                ],
                'recycling' => [
                  'Membantu meningkatkan tingkat daur ulang'
                ],
                'wider-reach' => [
                  'Jangkauan yang lebih luas <img src='. get_image(DIR_ICON . "jangkauan-luas.png").' style="width:15px;height:15px">'
                ],
                'report-flow' => [
                  'Laporan tentang  alur sampah <img src='. get_image(DIR_ICON . "jangkauan-luas.png").' style="width:15px;height:15px">'
                ],
                'serve-people' => [
                  'Melayani kebutuhan pelanggan merek Anda di lebih banyak tempat di Indonesia <img src='. get_image(DIR_ICON . "jangkauan-luas.png").' style="width:15px;height:15px">'
                ],
              ]
            ],
            'en' => [ 
              'benefit' => [
                'reduce-trash' => [
                  'Reducing the amount of waste that ends up in the landfill'
                ],
                'prevent-product' => [
                  'Prevent your brand-labelled products for being misused, imitated or forged'
                ],
                'recycling' => [
                  'Help to increase recycling rate'
                ],
                'wider-reach' => [
                  'Wider reach <img src='. get_image(DIR_ICON . "jangkauan-luas.png").' style="width:15px;height:15px">'
                ],
                'report-flow' => [
                  'Waste journey report <img src='. get_image(DIR_ICON . "jangkauan-luas.png").' style="width:15px;height:15px">'
                ],
                'serve-people' => [
                  'Meet the needs of your brand customers in more locations in Indonesia <img src='. get_image(DIR_ICON . "jangkauan-luas.png").' style="width:15px;height:15px">'
                ],
              ]
            ]
          ];

          $benefits_epr = json_decode(json_encode($benefit_description[$lang]));
      ?>
        <?php foreach ($benefits_epr->benefit as $i=>$benefit): 
          // if($service->service_id==33 && $i<5): 
          ?>
          <div class="col-md-4 col-xs-12 g-line-height-1_3">
            <div class="row no-gutters g-my-10">
              <div class="col-auto">
                <img src="<?=get_image(DIR_ICON.'check-circle.png')?>" alt="check icon" style="<?=$this->agent->is_mobile() ? 'width:23px; margin-right: 13px' : 'width:30px; margin-right: 20px'?>">
              </div>
              <div class="col" style="<?=$this->agent->is_mobile() ? '' : 'margin-top:7px'?>">
                <?= $benefit[0]?>
              </div>
            </div>
          </div>
          <?php 
        // endif; 
        endforeach; 
        ?>
      <?php else: ?>
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
      <?php endif; ?>
    </div>
  </div>
</section>
  <?php if($service->service_slug == 'digital-epr') : ?>
    <div class="col-md-12 text-center" style="background-color: #F7F7F7;height:73px;margin-top:-10px">
      <p style="padding-top :25px;font-size:<?= $this->agent->is_mobile() ? '11px' : '14px' ?>"><img src="<?= get_image(DIR_ICON. 'jangkauan-luas.png') ?>" style="width:15px;height:15px;margin-right:5px;margin-bottom:3px" alt=""> <?= get_lang('supported') ?></p>
    </div>
  <?php endif; ?>
<?php endif; ?>