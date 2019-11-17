<?php
// $service_targets=[
//   [
//     'title' => lang('services_corporate_tab'),
//     'icon' => 'icon-real-estate-066 u-line-icon-pro',
//     'number' => 1,
//     'subtitle' => lang('services_corporate_title'),
//     'content' => lang('services_corporate_subtitle'),
//     'list' => $navigation_array_corporate,
//   ],
//   [
//     'title' => lang('services_individu_tab'),
//     'icon' => 'icon-real-estate-003',
//     'number' => 2,
//     'subtitle' => lang('services_individu_title'),
//     'content' => lang('services_individu_subtitle'),
//     'list' => $navigation_array_individu,
//   ],
// ];
?>
<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
  <div class="divimage dzsparallaxer--target w-100" style="height: 130%; background-image: url(<?= base_url(DIR_BG.'bg_header.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
  <div style="background:radial-gradient(circle farthest-side at 80% 60%, rgba(66,195,120,0.67), rgba(14,105,148,0.92))">
    <div class="container g-pt-195 g-pb-70">
      <br>
      <div class="g-font-size-<?= $this->agent->is_mobile() ? '25' : '35' ?> g-color-white g-font-weight-600 mb-0 g-line-height-1_2">
        <div class="g-font-size-20 g-letter-spacing-5  text-uppercase g-mb-20"> <?=lang('services_all_services')?> </div>
        <div class=""> <?=lang('services_all_choose_the_right_solution')?> </div>
      </div>
    </div>
  </div>
</section>

<section class="g-bg-secondary g-pt-50">
  <div class="container">
    <div class="row">
      <!-- Search location Mobile -->
      <?php if ($this->agent->is_mobile()): ?>
        <div class="col-md-5 col-xs-12">
          <h4 class="g-font-weight-700 g-font-color-w4c-blue-v1 mb-3"><?=lang('available_services_for_your_location')?></h4>
          <div class="input-group pull-right mb-5">
            <input class="form-control g-pa-10" type="text" name="" value="" style="border:1px solid #0B90B9; border-radius:0px" placeholder="<?=lang('enter_location')?>">
            <span class="input-group-btn">
              <button class="btn btn-info g-py-10 g-px-15 g-letter-spacing-2" type="button" name="button" style="border:1px solid #0B90B9;border-radius:0px"> <i class="icon-magnifier"></i> </button>
            </span>
          </div>
        </div>
      <?php endif; ?>
      <!-- End Search location Mobile -->
      <div class="col-md-7 col-xs-12">
        <!-- Services target navivation -->
        <div class="row justify-content-center g-ma-0">
          <div class="col<?= $this->agent->is_mobile() ? '' : '' ?> text-center g-px-0 tab-shadow">
            <a class="my_tab_2 g-cursor-pointer nav-link text-uppercase g-font-weight-700 g-font-size-<?= $this->agent->is_mobile() ? '14 g-py-10  g-px-5' : '18 g-py-0 g-px-30' ?> tab-active " data-tab="#tab-0" style="<?= $this->agent->is_mobile() ? 'min-height: 40px' : 'min-height: 50px' ?> ; color:#aaa">
              <i class=" g-mr-10  g-mb-17 g-line-height-1 g-font-size-<?= $this->agent->is_mobile() ? '16' : '30' ?>"></i>
              <?=lang('all')?>
            </a>
          </div>
          <?php
          $i=1;
          foreach ($service_targets as $target):
            ?>
            <div class="col<?= $this->agent->is_mobile() ? '' : '' ?> text-center g-px-0">
              <a class="my_tab_2 g-cursor-pointer nav-link text-uppercase g-font-weight-700 g-font-size-<?= $this->agent->is_mobile() ? '14 g-py-10 g-px-5 ' : '18 g-py-0  g-px-20' ?> " data-tab="#tab-<?=$i?>" style="<?= $this->agent->is_mobile() ? 'min-height: 40px' : 'min-height: 50px' ?> ; color:#aaa">
                <i class="g-mr-10 g-mb-17 g-line-height-1 g-font-size-<?= $this->agent->is_mobile() ? '16' : '30' ?>"></i>
                <?= $target->service_target_name ?>
              </a>
            </div>
            <?php
            $i++;
          endforeach;
          ?>
        </div>
        <!-- END Services target navivation -->
      </div>
      <!-- Search location -->
      <?php if (!$this->agent->is_mobile()): ?>
        <div class="col-md-5 col-xs-12">
          <div class="input-group pull-right">
            <input class="form-control g-pa-10" type="text" name="" value="" style="border:1px solid #0B90B9; border-radius:0px" placeholder="<?=lang('enter_location')?>">
            <span class="input-group-btn">
              <button class="btn btn-info g-py-10 g-px-30 g-letter-spacing-2" type="button" name="button" style="border:1px solid #0B90B9;border-radius:0px"><?=strtoupper(lang('search'))?></button>
            </span>
          </div>
        </div>
      <?php endif; ?>
      <!-- End Search location -->
    </div>
  </div>

  <?php
  $recomendation=[
    [
      'name'=>lang('office_block'),
      'color'=>'#68a244'
    ],
    [
      'name'=>lang('restaurant'),
      'color'=>'#a24444'
    ],
    [
      'name'=>lang('hotel'),
      'color'=>'#4489a2'
    ],
    [
      'name'=>lang('residential'),
      'color'=>'#4489a2'
    ],
    [
      'name'=>lang('personal'),
      'color'=>'#68a244'
    ],
    [
      'name'=>lang('distributor'),
      'color'=>'#a24444'
    ],
    [
      'name'=>lang('brand'),
      'color'=>'#a24495'
    ],
    [
      'name'=>lang('event'),
      'color'=>'#a24495'
    ],
    [
      'name'=>lang('product'),
      'color'=>'#a24495'
    ],
    [
      'name'=>lang('government'),
      'color'=>'#68a244'
    ],
    [
      'name'=>lang('consultant'),
      'color'=>'#a29244'
    ],
    [
      'name'=>lang('company'),
      'color'=>'#a24444'
    ],
    [
      'name'=>lang('company_csr'),
      'color'=>'#a29244'
    ],
    [
      'name'=>lang('foundation'),
      'color'=>'#68a244'
    ],
    [
      'name'=>lang('school'),
      'color'=>'#4489a2'
    ],
    [
      'name'=>lang('company'),
      'color'=>'#a24444'
    ],
    [
      'name'=>lang('bussinessman'),
      'color'=>'#a29244'
    ],

    [
      'name'=>lang('researcher'),
      'color'=>'#a29244'
    ],
  ];
  $servicess=[
    [
      'is_available' => false,
      '4c_list_title' => 'Feasibility Study',
      '4c_list_category' => 'Consult',
      '4c_list_content' => lang('services_feasibility_study'),
      '4c_list_url' => W4C_URL.('join'),
      '4c_list_number' => '1',
      '4c_list_id' => 'feasibility',
      '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
      '4c_list_recomendation' => [
        [
          'name'=>lang('office_block'),
          'color'=>'#68a244'
        ],
        [
          'name'=>lang('restaurant'),
          'color'=>'#a24444'
        ],
        [
          'name'=>lang('hotel'),
          'color'=>'#4489a2'
        ],
        [
          'name'=>lang('residential'),
          'color'=>'#4489a2'
        ],
      ],
    ],
    [
      'is_available' => true,
      '4c_list_title' => '3R Program',
      '4c_list_category' => 'Consult',
      '4c_list_content' => lang('services_3r'),
      '4c_list_url' => W4C_URL.('join'),
      '4c_list_number' => '2',
      '4c_list_id' => '3r',
      '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
      '4c_list_recomendation' => [
        [
          'name'=>lang('office_block'),
          'color'=>'#68a244'
        ],
        [
          'name'=>lang('restaurant'),
          'color'=>'#a24444'
        ],
        [
          'name'=>lang('hotel'),
          'color'=>'#4489a2'
        ],
        [
          'name'=>lang('residential'),
          'color'=>'#4489a2'
        ],
      ],
    ],
    [
      '4c_list_title' => 'Event Waste Management',
      '4c_list_category' => 'Campaign',
      '4c_list_content' => lang('services_event_waste_management'),
      '4c_list_recomendation' => [
        [
          'name'=>lang('office_block'),
          'color'=>'#68a244'
        ],
        [
          'name'=>lang('restaurant'),
          'color'=>'#a24444'
        ],
        [
          'name'=>lang('hotel'),
          'color'=>'#4489a2'
        ],
        [
          'name'=>lang('residential'),
          'color'=>'#4489a2'
        ],
      ],
      '4c_list_url' => W4C_URL.('join'),
      '4c_list_number' => '3',
      '4c_list_id' => 'event',
      '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
      'is_available' => true,
    ],
    [
      '4c_list_title' => 'Edukasi Bijak Sampah (EDUBIS)',
      '4c_list_category' => 'Campaign',
      '4c_list_content' => lang('services_edubis'),
      '4c_list_recomendation' => [
        [
          'name'=>lang('office_block'),
          'color'=>'#68a244'
        ],
        [
          'name'=>lang('restaurant'),
          'color'=>'#a24444'
        ],
        [
          'name'=>lang('hotel'),
          'color'=>'#4489a2'
        ],
        [
          'name'=>lang('residential'),
          'color'=>'#4489a2'
        ],
      ],
      '4c_list_url' => W4C_URL.('join'),
      '4c_list_number' => '4',
      '4c_list_id' => 'edubis',
      '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
      'is_available' => false,
    ],
    [
      '4c_list_title' => 'Akademi Bijak Sampah (AKABIS)',
      '4c_list_category' => 'Campaign',
      '4c_list_content' => lang('services_akabis'),
      '4c_list_recomendation' => [
        [
          'name'=>lang('office_block'),
          'color'=>'#68a244'
        ],
        [
          'name'=>lang('restaurant'),
          'color'=>'#a24444'
        ],
        [
          'name'=>lang('hotel'),
          'color'=>'#4489a2'
        ],
        [
          'name'=>lang('residential'),
          'color'=>'#4489a2'
        ],
      ],
      '4c_list_url' => W4C_URL.('join'),
      '4c_list_number' => '5',
      '4c_list_id' => 'akabis',
      '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
      'is_available' => false,
    ],
    [
      '4c_list_title' => 'Commercial Waste Management',
      '4c_list_category' => 'Collect',
      '4c_list_content' => lang('services_commercial_waste_management'),
      '4c_list_recomendation' => [
        [
          'name'=>lang('office_block'),
          'color'=>'#68a244'
        ],
        [
          'name'=>lang('restaurant'),
          'color'=>'#a24444'
        ],
        [
          'name'=>lang('hotel'),
          'color'=>'#4489a2'
        ],
        [
          'name'=>lang('residential'),
          'color'=>'#4489a2'
        ],
      ],
      '4c_list_url' => W4C_URL.('join'),
      '4c_list_number' => '6',
      '4c_list_id' => 'commercial',
      '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
      'is_available' => true,
    ],
    [
      '4c_list_title' => 'Residential Waste Management',
      '4c_list_category' => 'Collect',
      '4c_list_content' => lang('services_residential_waste_management'),
      '4c_list_recomendation' => [
        [
          'name'=>lang('office_block'),
          'color'=>'#68a244'
        ],
        [
          'name'=>lang('restaurant'),
          'color'=>'#a24444'
        ],
        [
          'name'=>lang('hotel'),
          'color'=>'#4489a2'
        ],
        [
          'name'=>lang('residential'),
          'color'=>'#4489a2'
        ],
      ],
      '4c_list_url' => W4C_URL.('join'),
      '4c_list_number' => '7',
      '4c_list_id' => 'residential',
      '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
      'is_available' => true,
    ],
    [
      '4c_list_title' => 'Inorganic Recycle Management',
      '4c_list_category' => 'Create',
      '4c_list_content' => lang('services_inorganic_recycle_management'),
      '4c_list_recomendation' =>[
        [
          'name'=>lang('office_block'),
          'color'=>'#68a244'
        ],
        [
          'name'=>lang('restaurant'),
          'color'=>'#a24444'
        ],
        [
          'name'=>lang('hotel'),
          'color'=>'#4489a2'
        ],
        [
          'name'=>lang('residential'),
          'color'=>'#4489a2'
        ],
      ],
      '4c_list_url' => W4C_URL.('join'),
      '4c_list_number' => '8',
      '4c_list_id' => 'inorganic',
      '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
      'is_available' => false,
    ],
    [
      '4c_list_title' => 'Organic Waste Composting',
      '4c_list_category' => 'Create',
      '4c_list_content' => lang('services_organic_composting'),
      '4c_list_recomendation' =>[
        [
          'name'=>lang('office_block'),
          'color'=>'#68a244'
        ],
        [
          'name'=>lang('restaurant'),
          'color'=>'#a24444'
        ],
        [
          'name'=>lang('hotel'),
          'color'=>'#4489a2'
        ],
        [
          'name'=>lang('residential'),
          'color'=>'#4489a2'
        ],
      ],
      '4c_list_url' => W4C_URL.('join'),
      '4c_list_number' => '9',
      '4c_list_id' => 'organic',
      '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
      'is_available' => true,
    ],
    [
      '4c_list_title' => 'Send Your Waste',
      '4c_list_category' => 'Campaign',
      '4c_list_content' => lang('services_send_your_waste_corp'),
      '4c_list_recomendation' => [
        [
          'name'=>lang('office_block'),
          'color'=>'#68a244'
        ],
        [
          'name'=>lang('restaurant'),
          'color'=>'#a24444'
        ],
        [
          'name'=>lang('hotel'),
          'color'=>'#4489a2'
        ],
        [
          'name'=>lang('residential'),
          'color'=>'#4489a2'
        ],
      ],
      '4c_list_url' => SEND_YOUR_WASTE_URL,
      '4c_list_number' => '10',
      '4c_list_id' => 'syw',
      '4c_list_image' => 'Marijuana-USPS.jpg',
      'is_available' => false,
    ],
    [
      '4c_list_title' => 'Drop Box',
      '4c_list_category' => 'Campaign',
      '4c_list_content' => lang('services_dropbox_corp'),
      '4c_list_recomendation' => [
        [
          'name'=>lang('office_block'),
          'color'=>'#68a244'
        ],
        [
          'name'=>lang('restaurant'),
          'color'=>'#a24444'
        ],
        [
          'name'=>lang('hotel'),
          'color'=>'#4489a2'
        ],
        [
          'name'=>lang('residential'),
          'color'=>'#4489a2'
        ],
      ],
      '4c_list_url' => DROPBOX_URL,
      '4c_list_number' => '11',
      '4c_list_id' => 'db',
      '4c_list_image' => 'dropbox_image.jpg',
      'is_available' => false,
    ],
    [
      '4c_list_title' => 'Personal Waste Management',
      '4c_list_category' => 'Campaign',
      '4c_list_content' => lang('services_personal_waste_management'),
      '4c_list_recomendation' => [
        [
          'name'=>lang('office_block'),
          'color'=>'#68a244'
        ],
        [
          'name'=>lang('restaurant'),
          'color'=>'#a24444'
        ],
        [
          'name'=>lang('hotel'),
          'color'=>'#4489a2'
        ],
        [
          'name'=>lang('residential'),
          'color'=>'#4489a2'
        ],
      ],
      '4c_list_url' => W4C_URL.('join'),
      '4c_list_number' => '12',
      '4c_list_id' => 'personal',
      '4c_list_image' => 'dropbox_image.jpg',
      'is_available' => true,
    ],
    [
      '4c_list_title' => 'Cleaning Service Education',
      '4c_list_category' => 'Collect',
      '4c_list_content' => lang('services_cleaning_service_education'),
      '4c_list_recomendation' => [
        [
          'name'=>lang('office_block'),
          'color'=>'#68a244'
        ],
        [
          'name'=>lang('restaurant'),
          'color'=>'#a24444'
        ],
        [
          'name'=>lang('hotel'),
          'color'=>'#4489a2'
        ],
        [
          'name'=>lang('residential'),
          'color'=>'#4489a2'
        ],
      ],
      '4c_list_url' => W4C_URL.('join'),
      '4c_list_number' => '13',
      '4c_list_id' => 'cleaning',
      '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
      'is_available' => true,
    ],
  ];
  ?>
  <div class="g-bg-secondary">
    <div class="container">
      <?php
      $i=0;
      foreach ($services as $service) {
        if ($this->agent->is_mobile()) { //mobile view
          ?>
          <div class="bg-white g-my-20 box-shadow-down">
            <div style="height: 200px;background: url(<?=get_image(DIR_SERVICE.$service->service_slug.'/'.$service->service_thumbnail,base_url('assets/img/error/1x2.png'))?>);background-size: cover;"></div>

            <!-- <img class="img-fluid w-100" src="<?=get_image(DIR_SERVICE.$service->service_slug.'/'.$service->service_thumbnail,base_url('assets/img/error/1x2.png'))?>" alt="<?=$service->service_name.' image'?>"> -->
            <div class="bg-white g-mx-20 g-pa-20" style=" margin-top: -40px;">
              <span class="g-color-black-opacity-0_5 g-font-weight-600 g-font-size-12 text-uppercase"><?= $service->service_category_name ?></span>
              <h2 class="<?= $this->agent->is_mobile() ? 'h4' : 'h1' ?> g-color-black g-font-weight-600 g-mb-25 g-line-height-1_2">
                <?= $service->service_name ?>
              </h2>
              <p class="g-color-black-opacity-0_5"><?= $service->service_description ?></p>
              <a class="g-font-color-w4c-blue-v1 g-font-weight-700 mb-3 text-uppercase" href="<?=$service->service_join_url?>"><?=lang('learn_more')?> <i class="float-right fa fa-angle-right g-font-size-20 g-font-weight-700 g-color-white g-bg-w4c-blue-v1 g-rounded-100 g-pl-15 g-pr-20 g-py-7" style="width: 20px; margin-top: -10px;"></i> </a>
              <hr class="mb-1">
              <div class="g-mt-10" >
                <div class="g-font-size-10 g-mb-5"><?=lang('recomendation_fors')?></div>
                <?php
                foreach ($service->recomendation as $recomendation):
                  ?>
                  <span class="u-label u-label--sm g-rounded-20 g-px-20 g-py-7 g-mb-5 g-mr-10 g-my-5" style="color:<?=$recomendation->color?>; background-color:<?=$recomendation->color,'20'?>;border:1px solid <?=$recomendation->color?>"><?= $recomendation->name ?></span>
                  <?php
                endforeach;
                ?>
              </div>
            </div>
          </div>
          <?php
        }else { //desktop view
          ?>
          <div class="bg-white g-my-20 box-shadow-down">
            <div class="g-pa-25">
              <div class="row">
                <?php if ($i%2==1){ ?>
                  <div class="col-6">
                    <img class="img-fluid w-100" src="<?=get_image(DIR_SERVICE.$service->service_slug.'/'.$service->service_thumbnail,base_url('assets/img/error/1x2.png'))?>" alt="<?=$service->service_name.' image'?>" style="-webkit-mask-image: -webkit-gradient(linear, left top, right top, from(rgba(0,0,0,1)), to(rgba(0,0,0,0)));mask-image: linear-gradient(to left, rgba(0,0,0,1), rgba(0,0,0,0));">
                  </div>
                  <div class="col-6">
                    <span class="g-color-gray-dark-v3 g-font-weight-600 g-font-size-12 text-uppercase"><?= $service->service_category_name ?></span>
                    <div class="mb-5">
                      <h2 class="<?= $this->agent->is_mobile() ? 'h4' : 'h1' ?> g-color-black g-font-weight-600 g-mb-25 g-line-height-1_2">
                        <?= $service->service_name ?>
                      </h2>
                      <p><?= $service->service_description ?></p>
                      <a class="g-font-color-w4c-blue-v1 g-font-weight-700 mb-3 text-uppercase" href="<?=$service->service_join_url?>"><?=lang('learn_more')?> <i class="fa fa-angle-right g-ml-10 g-font-size-20"></i> </a>
                      <div class="g-mt-10" style="position: absolute;bottom: 0px; ">
                        <div class="g-font-size-10 g-mb-5"><?=lang('recomendation_fors')?></div>
                        <?php
                        foreach ($service->recomendation as $recomendation):
                          ?>
                          <span class="u-label u-label--sm g-rounded-20 g-px-20 g-py-7 g-mb-5 g-mr-10 g-my-5" style="color:<?=$recomendation->color?>; background-color:<?=$recomendation->color,'20'?>"><?= $recomendation->name ?></span>
                          <?php
                        endforeach;
                        ?>
                      </div>
                    </div>
                  </div>
                  <?php
                }else { // if ($i%2==1)
                  ?>
                  <div class="col-6">
                    <span class="g-color-gray-dark-v3 g-font-weight-600 g-font-size-12 text-uppercase"><?= $service->service_category_name ?></span>
                    <div class="mb-5">
                      <h1 class="<?= $this->agent->is_mobile() ? 'h4' : 'h1' ?> g-color-black g-font-weight-600 g-mb-25 g-line-height-1_2">
                        <?= $service->service_name ?>
                      </h1>
                      <p><?= $service->service_description ?></p>
                      <a class="g-font-color-w4c-blue-v1 g-font-weight-700 mb-3 text-uppercase" href="<?=$service->service_join_url?>"><?=lang('learn_more')?> <i class="fa fa-angle-right g-ml-10 g-font-size-20"></i> </a>
                      <div class="g-mt-10" style="position: absolute;bottom: 0px; ">
                        <div class="g-font-size-10 g-mb-5"><?=lang('recomendation_fors')?></div>
                        <?php
                        foreach ($service->recomendation as $recomendation):
                          ?>
                          <span class="u-label u-label--sm g-rounded-20 g-px-20 g-py-7 g-mb-5 g-mr-10 g-my-5" style="color:<?=$recomendation->color?>; background-color:<?=$recomendation->color,'20'?>"><?= $recomendation->name ?></span>
                          <?php
                        endforeach;
                        ?>
                      </div>
                    </div>
                  </div>
                  <div class="col-6">
                    <img class="img-fluid w-100" src="<?=get_image(DIR_SERVICE.$service->service_slug.'/'.$service->service_thumbnail,base_url('assets/img/error/1x2.png'))?>" alt="<?=$service->service_name.' image'?>" style="-webkit-mask-image: -webkit-gradient(linear, right top, left top, from(rgba(0,0,0,1)), to(rgba(0,0,0,0)));mask-image: linear-gradient(to right, rgba(0,0,0,1), rgba(0,0,0,0));">
                  </div>
                  <?php
                } //end if ($i%2==1)
                ?>
              </div>
            </div>
          </div>
          <?php
        } // End desktop view
        $i++;
      } // End foreach ($services as $service)
      ?>
    </div>
    <div class="g-bg-gray-light-v4 g-py-40">
      <div class="container">
        <div class="row no-gutters">
          <div class="col-xs-12 col-md-auto">
            <h3 class=" <?=$this->agent->is_mobile()? 'h5 mb-4' : 'h3' ?> g-font-weight-700"><?=lang('services_not_found')?></h3>
          </div>
          <div class="col-xs-12 col-md <?=$this->agent->is_mobile()? 'text-center' : 'text-right' ?>">
            <a class="btn btn-info  g-brd-2 g-font-size-12 g-rounded-50 text-uppercase g-letter-spacing-2 g-px-20" href="#"><?=lang('services_talk_to_expert')?></a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- END List Product -->
<script>
$(document).on('click', '.my_tab_2', function () {
  var tab_target=$(this).data('tab');
  $('.my_tab_2').removeClass('tab-active');
  $(this).addClass('tab-active');
  $('.my_tab_content').addClass('d-none');
  $(tab_target).removeClass('d-none');
})
</script>
