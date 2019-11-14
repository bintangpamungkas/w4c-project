<?php
$service_targets=[
  [
    'number' => 1,
    'title' => lang('services_corporate_tab'),
    'icon' => 'icon-real-estate-066 u-line-icon-pro',
    'subtitle' => lang('services_corporate_title'),
    'content' => lang('services_corporate_subtitle'),
    'list' => $navigation_array_corporate,
  ],
  [
    'number' => 2,
    'title' => lang('services_individu_tab'),
    'icon' => 'icon-real-estate-003',
    'subtitle' => lang('services_individu_title'),
    'content' => lang('services_individu_subtitle'),
    'list' => $navigation_array_individu,
  ],
];
?>

<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
  <div id="our_services" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
  <div class="divimage dzsparallaxer--target w-100 d-none" style="height: 130%; background-image: url(<?= base_url('assets/img/bg/sleek_box.png') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
  <!--<div style="background:radial-gradient(circle farthest-side at 80% 60%, rgba(90,219,127,0.67), rgba(22,127,148,0.92))">-->
  <div class="g-bg-secondary">
    <div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-25' : 'g-py-70' ?>">
      <div class="g-mb-10">
        <div class="g-font-color-w4c-1 g-font-size-35 mb-2" color><?=lang('available_services_for_your_location')?></div>
        <div class="row">
          <div class="col-md-6">
            <div class="input-group">
              <input class="form-control g-pa-10" type="text" name="" value="" style="border:1px solid #0B90B9; border-radius:0px" placeholder="<?=lang('enter_location')?>">
              <span class="input-group-btn">
                <button class="btn btn-info g-py-10 g-px-30" type="button" name="button" style="border:1px solid #0B90B9;border-radius:0px"><?=strtoupper(lang('search'))?></button>
              </span>
            </div>
          </div>
        </div>
      </div>

      <script>
      $(document).on('click', '.my_tab', function () {
        var tab_target=$(this).data('tab');
        //alert('select : '+tab_target);
        $('.my_tab').removeClass('tab-active');
        $(this).addClass('tab-active');
        //$('.nav-item-tab').addClass('tab-shadow');
        //$(this).parent().removeClass('tab-shadow');
        $('.my_tab_content').addClass('d-none');
        $(tab_target).removeClass('d-none');
      })
      </script>

      <?php
      if ($this->agent->is_mobile()) {
        ?>
        <div class="g-bg-white g-rounded-10" style="box-shadow: 0 5px 20px 3px rgba(0, 0, 0, 0.05)">
          <!-- Nav tabs -->
          <div class="row justify-content-center g-ma-0">
            <?php
            // service_target list is in index
            foreach ($service_targets as $target):
              ?>
              <div class="col text-center g-px-0 g-font-weight-700 <?= $target['number']==1 ? '' : ' tab-shadow' ?>" style="margin-bottom: -2px;">
                <a class="my_tab g-cursor-pointer nav-link my_tab g-py-10 g-font-size-16 <?= $target['number']==1 ? 'tab-active' : '' ?>" data-tab="#tab-<?= $target['number'] ?>" style="<?= $target['number']==1 ? 'border-top-left-radius: 8px;border-width: 8px 0 1px 0;' : ($target['number']==count($service_targets) ? 'border-top-right-radius: 8px;border-width: 8px 0 1px 0;' : 'border-width: 8px 0 1px 0;') ?>min-height: '105px' ; color:#aaa">
                  <!-- <i class="<?= $tazrget['icon'] ?> g-mr-10 g-font-size-30 g-mb-17"></i> -->
                  <?= strtoupper($target['title']) ?>
                </a>
              </div>
              <?php
            endforeach;
            ?>
          </div>
          <!-- End Nav tabs -->
          <?php
          foreach ($service_targets as $target):
            ?>
            <div class="my_tab_content g-bg-white g-rounded-7" id="tab-<?= $target['number'] ?>">
              <?php
              if($target['number']==1){
                $services = $target['list'];
                ?>
                <div class="animated fadeIn row g-ma-0 g-rounded-7" style="background-size: cover;background-position: left;background-repeat: no-repeat">
                  <div class="col-md-3 col-12 g-pa-0">
                    <div class="g-pa-25">
                      <div class="g-font-size-14 g-font-weight-700 g-line-height-1_3"><?= strtoupper($target['subtitle']) ?></div>
                      <div class="g-width-70 g-brd-bottom g-brd-2 g-brd-blue g-my-15"></div>
                      <div class="g-color-black-opacity-0_3 g-font-size-11 g-line-height-1_3"><?= $target['content'] ?></div>
                    </div>
                  </div>
                  <div class="col-md-9 col-12 g-pa-0">
                    <div id="service-<?= $target['number'] ?>-carousel" class="owl-carousel row owl-theme" style="margin: 0!important;">
                      <?php
                      foreach($services as $service) :
                        if($service['visible']==true):
                          ?>
                          <div class="g-mb-20 g-bg-white g-rounded-10 <?= $this->agent->is_mobile() ? 'g-mt-10' : 'g-mt-50' ?> box-shadow-down">
                            <div style="height: 200px;background: url(<?= base_url('assets/img/bg/services/thumbnail/'.$service['image']) ?>);background-size: cover;border-top-left-radius: 10px !important;border-top-right-radius: 10px !important;"></div>
                            <div class="<?= $this->agent->is_mobile() ? 'g-px-20' : 'g-px-40' ?> g-mt-20">
                              <?php if($service['is_new']==true): ?>
                                <span class="g-color-white g-bg-primary g-rounded-5 g-font-size-10 g-px-8 g-py-3 g-ml-5 float-right"><?= lang('new') ?></span>
                              <?php endif; ?>
                              <div>
                                <h6 class="h6 g-color-black-opacity-0_5 g-font-weight-600 text-uppercase g-mb-5 g-font-size-10 text-uppercase d-none">
                                  <div class="d-inline-block g-width-18 g-height-2 g-pos-rel g-top-minus-2 g-bg-info mr-2"></div><?= $service['category'] ?>
                                </h6>
                                <h4 class="h6 g-color-black g-font-weight-600 <?= $service['title']=='Sinergi #AdesNiatMurni dan Gojek' ? '' : 'text-uppercase' ?> g-mb-5 g-font-size-16" style="min-height: 50px"><?= $service['title'] ?></h4>
                                <em class="d-block g-color-gray-dark-v4 g-font-style-normal g-font-size-12 g-mb-10"><?= $service['content'] ?></em>
                              </div>
                              <div class="g-mb-10 d-none">
                                <div class="m-0"><small class="g-mr-10">Recomended for</small>
                                  <?php
                                  foreach ($service['recomendation'] as $recomendation):
                                    ?>
                                    <span class="u-label u-label--sm g-bg-yellow g-rounded-20 g-px-10 g-mb-5"><?= $recomendation ?></span>
                                    <?php
                                  endforeach;
                                  ?>
                                </div>
                              </div>
                              <a class="g-color-info g-color-blue--hover g-font-size-12 g-mt-10" href="<?= $service['url'] ?>"><?= strtoupper(lang('learn_more')) ?></a>
                            </div>
                            <br>
                            <br>
                          </div>
                          <?php
                        endif;
                      endforeach;
                      ?>
                    </div>
                    <script>
                    $(window).ready(function () {
                      var element_id='#service-<?= $target['number'] ?>-carousel';
                      $(element_id).owlCarousel({
                        stagePadding: <?= $this->agent->is_mobile() ? '30' : '70' ?>,
                        loop:false,
                        margin:20,
                        dots:true,
                        nav:true,
                        autoplay:true,
                        autoplayTimeout:10000,
                        autoplayHoverPause:true,
                        responsive:{
                          0:{
                            items:1
                          },
                          600:{
                            items:2
                          },
                          1000:{
                            items:2
                          }
                        },
                        navText : ['<i class="fa fa-angle-left g-color-black nav-arrow-left <?= $this->agent->is_mobile() ? 'd-none' : '' ?>" aria-hidden="true" style="transform: scale(2)"></i>','<i class="<?= $this->agent->is_mobile() ? 'd-none' : '' ?> fa fa-angle-right g-color-black nav-arrow-right" aria-hidden="true" style="transform: scale(2)"></i>']
                      });

                      //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
                      $(element_id+' .owl-controls').attr('style', 'margin-top: 5px;margin-bottom: 20px');

                      $(element_id+' .owl-stage-outer').css({'padding-top':1, 'margin-left':15,'margin-right':15});
                      $(element_id+' .owl-stage').css('padding-left', 10);

                      var screen_display=<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                      // console.log(screen_display);
                      var margin_side=(screen_display-screen_display*(<?= $this->agent->is_mobile() ? '60' : '80' ?>)/100)/2;
                      // console.log('screen :/ '+screen_display+'nav : '+screen_display*<?= $this->agent->is_mobile() ? '8' : '9' ?>0/100+'batas : '+margin_side);
                      <?php
                      if($this->agent->is_mobile()){
                        echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 275px;width: 68%;right: '+margin_side+'px;')";
                      }else{
                        echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 110px;width: 84%;right: '+margin_side+'px;')";
                      }
                      ?>
                    });
                    </script>
                    <br>
                  </div>
                  <div class="col-md-3 g-pa-0">
                  </div>
                </div>
                <?php
              }else if($target['number']==2){
                $services = $target['list'];
                ?>
                <div class="animated fadeIn row g-ma-0 g-rounded-7" style="background-size: cover;background-position: left;background-repeat: no-repeat">
                  <div class="col-md-3 g-pa-0">
                    <div class="g-pa-25">
                      <div class="g-font-size-14 g-font-weight-700 g-line-height-1_3"><?= strtoupper($target['subtitle']) ?></div>
                      <div class="g-width-70 g-brd-bottom g-brd-2 g-brd-blue g-my-15"></div>
                      <div class="g-color-black-opacity-0_3 g-font-size-12 g-line-height-1_3"><?= $target['content'] ?></div>
                    </div>
                  </div>
                  <div class="col-md-9 g-pa-0 ">
                    <div id="service-<?= $target['number'] ?>-carousel" class="owl-carousel row owl-theme" style="margin: 0!important;">
                      <?php
                      foreach($services as $service) :
                        if($service['visible']==true):
                          ?>
                          <div class="g-mb-20 g-bg-white g-rounded-10 <?= $this->agent->is_mobile() ? 'g-mt-10' : 'g-mt-50' ?> box-shadow-down">
                            <div style="height: 200px;background: url(<?= base_url('assets/img/bg/services/thumbnail/'.$service['image']) ?>);background-size: cover;border-top-left-radius: 10px !important;border-top-right-radius: 10px !important;"></div>
                            <div class="<?= $this->agent->is_mobile() ? 'g-px-20' : 'g-px-40' ?> g-mt-20">
                              <?php if($service['is_new']==true): ?>
                                <span class="g-color-white g-bg-primary g-rounded-5 g-font-size-10 g-px-8 g-py-3 g-ml-5 float-right"><?= lang('new') ?></span>
                              <?php endif; ?>
                              <div>
                                <h6 class="h6 g-color-black-opacity-0_5 g-font-weight-600 text-uppercase g-mb-5 g-font-size-10 text-uppercase d-none">
                                  <div class="d-inline-block g-width-18 g-height-2 g-pos-rel g-top-minus-2 g-bg-info mr-2"></div><?= $service['category'] ?>
                                </h6>
                                <h4 class="h6 g-color-black g-font-weight-600 <?= $service['title']=='Sinergi #AdesNiatMurni dan Gojek' ? '' : 'text-uppercase' ?> g-mb-5 g-font-size-16" style="min-height: 50px"><?= $service['title'] ?></h4>
                                <em class="d-block g-color-gray-dark-v4 g-font-style-normal g-font-size-12 g-mb-10" style="min-height: 60px"><?= $service['content'] ?></em>
                              </div>
                              <div class="g-mb-10 d-none">
                                <div class="m-0"><small class="g-mr-10">Recomended for</small>
                                  <?php
                                  foreach ($service['recomendation'] as $recomendation):
                                    ?>
                                    <span class="u-label u-label--sm g-bg-yellow g-rounded-20 g-px-10 g-mb-5"><?= $recomendation ?></span>
                                    <?php
                                  endforeach;
                                  ?>
                                </div>
                              </div>
                              <a class="g-color-info g-color-blue--hover g-font-size-12 g-mt-10" href="<?= $service['url'] ?>"><?= strtoupper(lang('learn_more')) ?></a>
                            </div>
                            <br>
                            <br>
                          </div>
                          <?php
                        endif;
                      endforeach;
                      ?>
                    </div>

                    <script>
                    $(window).ready(function () {
                      var element_id='#service-<?= $target['number'] ?>-carousel';
                      $(element_id).owlCarousel({
                        stagePadding: <?= $this->agent->is_mobile() ? '30' : '70' ?>,
                        loop:false,
                        margin:20,
                        dots:true,
                        nav:true,
                        autoplay:true,
                        autoplayTimeout:10000,
                        autoplayHoverPause:true,
                        responsive:{
                          0:{
                            items:1
                          },
                          600:{
                            items:2
                          },
                          1000:{
                            items:2
                          }
                        },
                        navText : ['<i class="fa fa-angle-left g-color-black nav-arrow-left <?= $this->agent->is_mobile() ? 'd-none' : '' ?>" aria-hidden="true" style="transform: scale(2)"></i>','<i class="<?= $this->agent->is_mobile() ? 'd-none' : '' ?> fa fa-angle-right g-color-black nav-arrow-right" aria-hidden="true" style="transform: scale(2)"></i>']
                      });

                      //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
                      $(element_id+' .owl-controls').attr('style', 'margin-top: 5px;margin-bottom: 20px');

                      $(element_id+' .owl-stage-outer').css({'padding-top':1, 'margin-left':15, 'margin-right':15});
                      $(element_id+' .owl-stage').css('padding-left', 10);

                      var screen_display=<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                      // console.log(screen_display);
                      var margin_side=(screen_display-screen_display*(<?= $this->agent->is_mobile() ? '60' : '80' ?>)/100)/2;
                      // console.log('screen : '+screen_display+'nav : '+screen_display*<?= $this->agent->is_mobile() ? '8' : '9' ?>0/100+'batas : '+margin_side);
                      <?php
                      if($this->agent->is_mobile()){
                        echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 275px;width: 68%;right: '+margin_side+'px;')";
                      }else{
                        echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 110px;width: 84%;right: '+margin_side+'px;')";
                      }
                      ?>
                    });
                    </script>
                  </div>
                </div>
                <?php
              }
              ?>
            </div>
            <?php
          endforeach;
          ?>
        </div>
        <?php
      }else{
        foreach ($service_targets as $target):
          ?>
          <div class="my_tab_content g-bg-white g-rounded-7" id="tab-<?= $target['number'] ?>">
            <div class="row">
              <?php
              $i=1;
              foreach($target['list'] as $service){
                if($service['visible']==true && $i<=5){
                  ?>
                  <div class="col-4">
                    <div class="g-mb-5 g-bg-white <?= $this->agent->is_mobile() ? 'g-mt-10' : 'g-mt-25' ?> box-shadow-down">
                      <div style="height: 200px;background: url(<?= base_url('assets/img/bg/services/thumbnail/'.$service['image']) ?>);background-size: cover;"></div>
                      <div class="bg-white g-mx-20 g-px-30 g-py-20" style="margin-top: -40px; height:250px">
                        <?php if($service['is_new']==true): ?>
                          <span class="g-color-white g-bg-primary g-font-size-10 g-px-8 g-py-3 g-ml-5 float-right"><?= lang('new') ?></span>
                        <?php endif; ?>
                        <div>
                          <h6 class="h6 g-color-black-opacity-0_5 g-font-weight-600 g-mb-5 g-font-size-10 text-uppercase"> <?= $service['category'] ?> </h6>
                          <h4 class="h6 g-color-black g-font-weight-600 g-mb-5 g-font-size-20" style="min-height: 50px"><?= $service['title'] ?></h4>
                          <em class="d-block g-color-gray-dark-v4 g-font-style-normal g-font-size-12 g-mb-10"><?= $service['content'] ?></em>
                        </div>
                        <div class="g-mb-10 d-none">
                          <div class="m-0"><small class="g-mr-10">Recomended for</small>
                            <?php
                            foreach ($service['recomendation'] as $recomendation):
                              ?>
                              <span class="u-label u-label--sm g-bg-yellow g-px-10 g-mb-5"><?= $recomendation ?></span>
                              <?php
                            endforeach;
                            ?>
                          </div>
                        </div>
                        <a class="g-color-info g-color-blue--hover g-font-size-12 g-mt-10" href="<?= $service['url'] ?>"><?= strtoupper(lang('learn_more')) ?> <i class="fa fa-angle-right g-ml-10"></i> </a>
                      </div>
                      <br>
                      <br>
                    </div>
                  </div>
                  <?php
                };
                $i++;
              };
              ?>
              <div class="col-4">
                <div class="g-mb-5 g-bg-white <?= $this->agent->is_mobile() ? 'g-mt-10' : 'g-mt-25' ?> box-shadow-down">
                  <div class="text-center bg-white g-mx-20 g-px-30 g-py-20" style=" height:453px">
                    <div class="g-mt-100">
                      <div class="g-font-weight-700 g-font-size-20 mb-4">
                        <?=lang('services_not_found')?>
                      </div>
                      <a class="btn btn-info btn-xl btn-block g-brd-2 g-font-size-13 g-rounded-50 g-font-weight-700" href="#"><?=strtoupper(lang('services_all_services'))?></a>
                      <a class="btn btn-outline-success btn-xl btn-block g-brd-2 g-font-size-13 g-rounded-50 g-font-weight-700" href="#"><?=strtoupper(lang('services_talk_to_expert'))?></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="g-bg-white g-rounded-10 g-my-40" style="box-shadow: 0 5px 20px 3px rgba(0, 0, 0, 0.05)">
            <?php $services = $target['list']; ?>
            <div class="animated fadeIn row g-ma-0 g-rounded-7" style="background-size: cover;background-position: left;background-repeat: no-repeat">
              <?php if ($target['number']==1): ?>
                <div class="col-md-3 col-12 g-pa-0">
                  <div class="<?= $this->agent->is_mobile() ? 'g-pa-25' : 'g-pt-50 g-pl-35 g-pr-35' ?>">
                    <div class="<?= $this->agent->is_mobile() ? 'g-font-size-20' : 'g-font-size-30' ?> g-font-weight-700"><?= strtoupper($target['title']) ?></div>
                    <div class="g-width-70 g-brd-bottom g-brd-2 g-brd-blue g-my-15"></div>
                    <div class="g-font-size-20 g-font-weight-600 g-mt-50 g-mb-20 g-line-height-1_2"><?php echo strtoupper($target['subtitle']) ?></div>
                    <div class="g-color-black-opacity-0_3 <?= $this->agent->is_mobile() ? 'g-font-size-12' : '' ?>"><?= $target['content'] ?></div>
                  </div>
                </div>
                <div class="col-md-9 col-12 g-pa-0 g-pr-35">
                  <div id="service-<?= $target['number'] ?>-carousel" class="owl-carousel row owl-theme" style="margin: 0!important;">
                    <?php
                    foreach($services as $service){
                      if($service['visible']==true){
                        ?>
                        <div class="g-mb-20 g-bg-white g-rounded-10 <?= $this->agent->is_mobile() ? 'g-mt-10' : 'g-mt-50' ?> box-shadow-down">
                          <div style="height: 200px;background: url(<?= base_url('assets/img/bg/services/thumbnail/'.$service['image']) ?>);background-size: cover;border-top-left-radius: 10px !important;border-top-right-radius: 10px !important;"></div>
                          <div class="<?= $this->agent->is_mobile() ? 'g-px-20' : 'g-px-40' ?> g-mt-20">
                            <?php if($service['is_new']==true): ?>
                              <span class="g-color-white g-bg-primary g-rounded-5 g-font-size-10 g-px-8 g-py-3 g-ml-5 float-right"><?= lang('new') ?></span>
                            <?php endif; ?>
                            <div>
                              <h6 class="h6 g-color-black-opacity-0_5 g-font-weight-600 text-uppercase g-mb-5 g-font-size-10 text-uppercase d-none">
                                <div class="d-inline-block g-width-18 g-height-2 g-pos-rel g-top-minus-2 g-bg-info mr-2"></div><?= $service['category'] ?>
                              </h6>
                              <h4 class="h6 g-color-black g-font-weight-600 <?= $service['title']=='Sinergi #AdesNiatMurni dan Gojek' ? '' : 'text-uppercase' ?> g-mb-5 g-font-size-16" style="min-height: 50px"><?= $service['title'] ?></h4>
                              <em class="d-block g-color-gray-dark-v4 g-font-style-normal g-font-size-12 g-mb-10"><?= $service['content'] ?></em>
                            </div>
                            <div class="g-mb-10 d-none">
                              <div class="m-0"><small class="g-mr-10">Recomended for</small>
                                <?php
                                foreach ($service['recomendation'] as $recomendation):
                                  ?>
                                  <span class="u-label u-label--sm g-bg-yellow g-rounded-20 g-px-10 g-mb-5"><?= $recomendation ?></span>
                                  <?php
                                endforeach;
                                ?>
                              </div>
                            </div>
                            <a class="g-color-info g-color-blue--hover g-font-size-12 g-mt-10" href="<?= $service['url'] ?>"><?= strtoupper(lang('learn_more')) ?></a>
                          </div>
                          <br>
                          <br>
                        </div>
                        <?php
                      };
                    };
                    ?>
                  </div>
                  <script>
                  $(window).ready(function () {
                    var element_id='#service-<?= $target['number'] ?>-carousel';
                    $(element_id).owlCarousel({
                      stagePadding: <?= $this->agent->is_mobile() ? '30' : '70' ?>,
                      loop:false,
                      margin:20,
                      dots:true,
                      nav:true,
                      autoplay:true,
                      autoplayTimeout:10000,
                      autoplayHoverPause:true,
                      responsive:{
                        0:{
                          items:1
                        },
                        600:{
                          items:2
                        },
                        1000:{
                          items:2
                        }
                      },
                      navText : ['<i class="fa fa-angle-left g-color-black nav-arrow-left <?= $this->agent->is_mobile() ? 'd-none' : '' ?>" aria-hidden="true" style="transform: scale(2)"></i>','<i class="<?= $this->agent->is_mobile() ? 'd-none' : '' ?> fa fa-angle-right g-color-black nav-arrow-right" aria-hidden="true" style="transform: scale(2)"></i>']
                    });

                    //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
                    $(element_id+' .owl-controls').attr('style', 'margin-top: 5px;margin-bottom: 20px');

                    $(element_id+' .owl-stage-outer').css({'padding-top':1});
                    $(element_id+' .owl-stage').css('padding-left', 10);

                    var screen_display=<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                    // console.log(screen_display);
                    var margin_side=(screen_display-screen_display*(<?= $this->agent->is_mobile() ? '60' : '95' ?>)/100)/2;
                    // console.log('screen : '+screen_display+'nav : '+screen_display*<?= $this->agent->is_mobile() ? '8' : '9' ?>0/100+'batas : '+margin_side);
                    <?php
                    echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 83px;margin-top: 110px;width: 98%;right: '+margin_side+'px;')";
                    ?>
                  });
                  </script>
                  <br>
                </div>
              <?php else: ?>
                <div class="col-md-9 col-12 g-pa-0 g-pl-35">
                  <div id="service-<?= $target['number'] ?>-carousel" class="owl-carousel row owl-theme" style="margin: 0!important;">
                    <?php
                    foreach($services as $service) :
                      if($service['visible']==true):
                        ?>
                        <div class="g-mb-20 g-bg-white g-rounded-10 <?= $this->agent->is_mobile() ? 'g-mt-10' : 'g-mt-50' ?> box-shadow-down">
                          <div style="height: 200px;background: url(<?= base_url('assets/img/bg/services/thumbnail/'.$service['image']) ?>);background-size: cover;border-top-left-radius: 10px !important;border-top-right-radius: 10px !important;"></div>
                          <div class="<?= $this->agent->is_mobile() ? 'g-px-20' : 'g-px-40' ?> g-mt-20">
                            <?php if($service['is_new']==true): ?>
                              <span class="g-color-white g-bg-primary g-rounded-5 g-font-size-10 g-px-8 g-py-3 g-ml-5 float-right"><?= lang('new') ?></span>
                            <?php endif; ?>
                            <div>
                              <h6 class="h6 g-color-black-opacity-0_5 g-font-weight-600 text-uppercase g-mb-5 g-font-size-10 text-uppercase d-none">
                                <div class="d-inline-block g-width-18 g-height-2 g-pos-rel g-top-minus-2 g-bg-info mr-2"></div><?= $service['category'] ?>
                              </h6>
                              <h4 class="h6 g-color-black g-font-weight-600 <?= $service['title']=='Sinergi #AdesNiatMurni dan Gojek' ? '' : 'text-uppercase' ?> g-mb-5 g-font-size-16" style="min-height: 50px"><?= $service['title'] ?></h4>
                              <em class="d-block g-color-gray-dark-v4 g-font-style-normal g-font-size-12 g-mb-10"><?= $service['content'] ?></em>
                            </div>
                            <div class="g-mb-10 d-none">
                              <div class="m-0"><small class="g-mr-10">Recomended for</small>
                                <?php
                                foreach ($service['recomendation'] as $recomendation):
                                  ?>
                                  <span class="u-label u-label--sm g-bg-yellow g-rounded-20 g-px-10 g-mb-5"><?= $recomendation ?></span>
                                  <?php
                                endforeach;
                                ?>
                              </div>
                            </div>
                            <a class="g-color-info g-color-blue--hover g-font-size-12 g-mt-10" href="<?= $service['url'] ?>"><?= strtoupper(lang('learn_more')) ?></a>
                          </div>
                          <br>
                          <br>
                        </div>
                        <?php
                      endif;
                    endforeach;
                    ?>
                  </div>
                  <script>
                  $(window).ready(function () {
                    var element_id='#service-<?= $target['number'] ?>-carousel';
                    $(element_id).owlCarousel({
                      stagePadding: <?= $this->agent->is_mobile() ? '30' : '70' ?>,
                      loop:false,
                      margin:20,
                      dots:true,
                      nav:true,
                      autoplay:false,
                      autoplayTimeout:10000,
                      autoplayHoverPause:true,
                      responsive:{
                        0:{
                          items:1
                        },
                        600:{
                          items:2
                        },
                        1000:{
                          items:2
                        }
                      },
                      navText : ['<i class="fa fa-angle-left g-color-black nav-arrow-left <?= $this->agent->is_mobile() ? 'd-none' : '' ?>" aria-hidden="true" style="transform: scale(2)"></i>','<i class="<?= $this->agent->is_mobile() ? 'd-none' : '' ?> fa fa-angle-right g-color-black nav-arrow-right" aria-hidden="true" style="transform: scale(2)"></i>']
                    });

                    //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
                    $(element_id+' .owl-controls').attr('style', 'margin-top: 5px;margin-bottom: 20px');

                    $(element_id+' .owl-stage-outer').css({'padding-top':1});
                    $(element_id+' .owl-stage').css('padding-left', 10);

                    var screen_display=<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                    // console.log(screen_display);
                    var margin_side=(screen_display-screen_display*(<?= $this->agent->is_mobile() ? '60' : '95' ?>)/100)/2;
                    // console.log('screen : '+screen_display+'nav : '+screen_display*<?= $this->agent->is_mobile() ? '8' : '9' ?>0/100+'batas : '+margin_side);
                    <?php
                    echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 83px;margin-top: 110px;width: 98%;right:'+margin_side+'px;')";
                    ?>
                  });
                  </script>
                  <br>
                </div>
                <div class="col-md-3 col-12 g-pa-0">
                  <div class="<?= $this->agent->is_mobile() ? 'g-pa-25' : 'g-pt-50 g-pl-35 g-pr-35' ?>">
                    <div class="<?= $this->agent->is_mobile() ? 'g-font-size-20' : 'g-font-size-30' ?> g-font-weight-700"><?= strtoupper($target['title']) ?></div>
                    <div class="g-width-70 g-brd-bottom g-brd-2 g-brd-blue g-my-15"></div>
                    <div class="g-font-size-20 g-font-weight-600 g-mt-50 g-mb-20 g-line-height-1_2"><?php echo strtoupper($target['subtitle']) ?></div>
                    <div class="g-color-black-opacity-0_3 <?= $this->agent->is_mobile() ? 'g-font-size-12' : '' ?>"><?= $target['content'] ?></div>
                  </div>
                </div>
              <?php endif; ?>
              <div class="col-md-3 g-pa-0">
              </div>
            </div>
          </div>
          <?php
        endforeach;
      }
      ?>
    </div>
  </div>
</section>

<script>
$(window).ready(function () {
  $('.my_tab_content').addClass('d-none');
  $('.my_tab_content').first().removeClass('d-none');
});
</script>
