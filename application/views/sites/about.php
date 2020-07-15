<!-- End Promo Block -->
<div class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-75 g-pb-40' : 'g-py-100' ?>">
  <div class="container">
    <div class="row justify-content-center text-center g-mb-50">
      <div class="col-lg-10  g-line-height-1_2">
        <div class="g-font-size-<?= $this->agent->is_mobile() ? '25' : '35' ?> g-color-black g-font-weight-600">
          <?= lang('about_we_create_responsible_1') ?><br>
          <span class="g-brd-2 g-brd-primary g-color-info"><?= lang('about_we_create_responsible_2') ?></span><br>
          <?= lang('about_we_create_responsible_3') ?>
        </div>
        <div class="g-pt-50">
          <?= lang('about_description_small') ?>
        </div>
      </div>
    </div>
    <div class="g-mx-5">
      <div class="row">
        <?php
                $gallery = [
                    [
                        'image' => '1.jpg',
                    ],
                    [
                        'image' => '2.jpg',
                    ],
                    [
                        'image' => '3.jpg',
                    ],
                    [
                        'image' => '4.jpg',
                    ],
                    [
                        'image' => '5.jpg',
                    ],
                    [
                        'image' => '6.jpg',
                    ],
                    [
                        'image' => '7.jpg',
                    ],
                    [
                        'image' => '8.jpg',
                    ],
                    [
                        'image' => '9.jpg',
                    ],
                ];
                foreach ($gallery as $gallery) :
                ?>
        <div class="col-md-4 col-6 g-px-5 g-mb-10">
          <a class="js-fancybox" href="<?= base_url(DIR_IMG . 'bg/about/' . $gallery['image']) ?>"
            title="Lightbox Gallery" data-fancybox-gallery="lightbox-gallery" data-fancybox-speed="500"
            data-fancybox-slide-speed="1000">
            <div
              style="background: url(<?= base_url(DIR_IMG . 'bg/about/' . $gallery['image']) ?>);height: 200px;background-size: cover;background-position: center">
            </div>
          </a>
        </div>
        <?php
                endforeach;
                ?>
      </div>
    </div>
  </div>
</div>

<section class="g-bg-gray-light-v5 <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-25' : 'g-py-100' ?>">

  <div class="container g-pt-50">
    <!-- Image, Text Block -->
    <div
      class="row d-flex justify-content-between flex-wrap g-mt-minus-50--lg 1 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
      <div class="col-md-6 col-lg-7">
        <div class="g-mb-20">
          <h2 class="g-color-black g-font-weight-600 g-font-size-25 g-font-size-35--lg g-line-height-1_2 mb-4">
            <?= lang('about_strategy') ?>
          </h2>
          <i class="d-block g-color-blue g-font-size-40 g-line-height-0_7 g-pos-rel g-top-15 g-mb-25">"</i>
          <blockquote class="g-color-black-opacity-0_6 g-font-size-20 g-line-height-1_8 g-mb-40">
            <em><?= lang('about_strategy_content') ?></em>
          </blockquote>
        </div>
      </div>
      <div class="col-md-6 col-lg-5 ml-auto order-md-1 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
        <div class="g-mb-20">
          <h2 class="g-color-black g-font-weight-600 g-font-size-25 g-font-size-35--lg g-line-height-1_2 mb-4">
            <?= lang('about_vision') ?>
          </h2>
          <i class="d-block g-color-blue g-font-size-40 g-line-height-0_7 g-pos-rel g-top-15 g-mb-25">"</i>
          <blockquote class="g-color-black-opacity-0_6 g-font-size-20 g-line-height-1_8 g-mb-40">
            <em><?= lang('about_vision_content') ?></em>
          </blockquote>
        </div>
      </div>
    </div>
    <!-- End Image, Text Block -->
  </div>
</section>


<div class="container <?= $this->agent->is_mobile() ? 'g-pt-75 g-pb-30' : 'g-pt-140 g-pb-70' ?>">
  <div class="text-center g-mb-50">
    <h2 class="g-color-black g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>">
      <span class="g-color-info">Waste4Change</span> 4C's</h2>
    <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
    <p class="text-muted d-none"><?= lang('brand_partner_subtitle') ?></p>
  </div>
</div>
<div class="container g-pb-150">
  <div class="row">
    <?php
        $w4c_id = [
            [
                '4c_title' => 'Consult',
                '4c_number' => '1',
                '4c_content' => 'Kami memberikan jasa konsultasi berdasarkan penelitian yang mendalam dan pelatihan tentang pengelolaan sampah yang bertanggung jawab.',
                '4c_list' => [
                    [
                        '4c_list_title' => 'Feasibility Study',
                        '4c_list_content' => 'We perform in depth research about your existing waste management and summarize it in a report.',
                        '4c_list_recomendation' => ['Corporation'],
                        '4c_list_url' => W4C_URL . 'service/' . '#feasibility',
                    ],
                    [
                        '4c_list_title' => '3R Program',
                        '4c_list_content' => 'We create a 3R program in community or schools in terms of your corporate social responsibility and business sustainibility.',
                        '4c_list_recomendation' => ['Corporation'],
                        '4c_list_url' => W4C_URL . 'service/' . '#3r',
                    ],
                ],
            ],
            [
                '4c_title' => 'Campaign',
                '4c_number' => '2',
                '4c_content' => 'Kami mengedukasi perusahaan, perumahan, sekolah, dan komunitas mengenai pentingnya pengelolaan sampah yang bertanggung jawab.',
                '4c_list' => [
                    [
                        '4c_list_title' => 'Send Your Waste',
                        '4c_list_content' => 'Send Your Waste is Waste4Changes recycling program to serve people who want to recycle their waste but doesnt know where to put their recyclables.',
                        '4c_list_recomendation' => ['Individual'],
                        '4c_list_url' => SEND_YOUR_WASTE_URL,
                    ],
                    [
                        '4c_list_title' => 'Drop Box',
                        '4c_list_content' => 'Drop Box is a packaging waste collection service in which consumers can voluntarily submit their waste to the nearest dropping box',
                        '4c_list_recomendation' => ['Individual'],
                        '4c_list_url' => DROPBOX_URL,
                    ],
                    [
                        '4c_list_title' => 'Personal Waste Management',
                        '4c_list_content' => 'We facilitate and collect waste with responsible approach from individual user and make sure to reduce waste that goes into landfills',
                        '4c_list_recomendation' => ['Individual'],
                        '4c_list_url' => W4C_URL . 'service/' . '#personal',
                    ],
                    [
                        '4c_list_title' => 'Event Waste Management',
                        '4c_list_content' => 'Collaborate your events with us and get responsible waste management during the event. No more dirty & messy after the event.',
                        '4c_list_recomendation' => ['Event Organizer'],
                        '4c_list_url' => W4C_URL . 'service/' . '#event',
                    ],
                    [
                        '4c_list_title' => 'Edukasi Bijak Sampah (EDUBIS)',
                        '4c_list_content' => 'EDUBIS is a program designed by Waste4Change in order to educate Company, School, and Community about importance of Responsible Waste Management.',
                        '4c_list_recomendation' => ['Management', 'Staff'],
                        '4c_list_url' => W4C_URL . 'service/' . '#edubis',
                    ],
                    [
                        '4c_list_title' => 'Akademi Bijak Sampah (AKABIS)',
                        '4c_list_content' => 'AKABIS is another program created to educate about responsible waste management with deeper and self experience approach.',
                        '4c_list_recomendation' => ['Company Champion Team', 'Environmental Agent Candidate', 'Government Employee'],
                        '4c_list_url' => W4C_URL . 'service/' . '#akabis',
                    ],
                ],
            ],
            [
                '4c_title' => 'Collect',
                '4c_number' => '3',
                '4c_content' => 'Kami membantu Anda memiliki sistem pengelolaaan sampah yang betanggung jawab di area tempat tinggal Anda sehingga tidak ada lagi sampah yang tercampur serta mengurangi jumlah timbulan sampah yang berakhir di TPA .',
                '4c_list' => [
                    [
                        '4c_list_title' => 'Commercial Waste Management',
                        '4c_list_content' => 'We facilitate and collect waste with responsible approach from commercial area and make sure to reduce waste that goes into landfills.',
                        '4c_list_recomendation' => ['Corporation'],
                        '4c_list_url' => W4C_URL . 'service/' . '#commercial',
                    ],
                    [
                        '4c_list_title' => 'Residential Waste Management',
                        '4c_list_content' => 'We facilitate and collect waste with responsible approach from residential area and make sure to reduce waste that goes into landfills.',
                        '4c_list_recomendation' => ['Residential Developer'],
                        '4c_list_url' => W4C_URL . 'service/' . '#residential',
                    ],
                ],
            ],
            [
                '4c_title' => 'Create',
                '4c_number' => '4',
                '4c_content' => 'Kami bekerja sama dengan mitra-mitra terpercaya kami untuk mengubah sampah Anda menjadi material daur ulang.',
                '4c_list' => [
                    [
                        '4c_list_title' => 'Inorganic Recycle Management',
                        '4c_list_content' => 'We have Material Recovery Facility to process collected inorganic waste into a recycled materials.',
                        '4c_list_recomendation' => ['General'],
                        '4c_list_url' => W4C_URL . 'service/' . '#feasibility',
                    ],
                    [
                        '4c_list_title' => 'Organic Waste Composting',
                        '4c_list_content' => 'The collected organic waste will be used for composting ingredients and nourish our Farm4Life area.',
                        '4c_list_recomendation' => ['General'],
                        '4c_list_url' => W4C_URL . 'service/' . '#feasibility',
                    ],
                ],
            ],
        ];
        $w4c_en = [
            [
                '4c_title' => 'Consult',
                '4c_number' => '1',
                '4c_content' => 'We give consultation based on in depth research and training about responsible waste management',
                '4c_list' => [
                    [
                        '4c_list_title' => 'Feasibility Study',
                        '4c_list_content' => 'We perform in depth research about your existing waste management and summarize it in a report.',
                        '4c_list_recomendation' => ['Corporation'],
                        '4c_list_url' => W4C_URL . 'service/' . '#feasibility',
                    ],
                    [
                        '4c_list_title' => '3R Program',
                        '4c_list_content' => 'We create a 3R program in community or schools in terms of your corporate social responsibility and business sustainibility.',
                        '4c_list_recomendation' => ['Corporation'],
                        '4c_list_url' => W4C_URL . 'service/' . '#3r',
                    ],
                ],
            ],
            [
                '4c_title' => 'Campaign',
                '4c_number' => '2',
                '4c_content' => 'We educate Company, Residences, School, and Community about the importance of responsible waste management.',
                '4c_list' => [
                    [
                        '4c_list_title' => 'Send Your Waste',
                        '4c_list_content' => 'Send Your Waste is Waste4Changes recycling program to serve people who want to recycle their waste but doesnt know where to put their recyclables.',
                        '4c_list_recomendation' => ['Individual'],
                        '4c_list_url' => SEND_YOUR_WASTE_URL,
                    ],
                    [
                        '4c_list_title' => 'Drop Box',
                        '4c_list_content' => 'Drop Box is a packaging waste collection service in which consumers can voluntarily submit their waste to the nearest dropping box',
                        '4c_list_recomendation' => ['Individual'],
                        '4c_list_url' => DROPBOX_URL,
                    ],
                    [
                        '4c_list_title' => 'Personal Waste Management',
                        '4c_list_content' => 'We facilitate and collect waste with responsible approach from individual user and make sure to reduce waste that goes into landfills',
                        '4c_list_recomendation' => ['Individual'],
                        '4c_list_url' => W4C_URL . 'service/' . '#personal',
                    ],
                    [
                        '4c_list_title' => 'Event Waste Management',
                        '4c_list_content' => 'Collaborate your events with us and get responsible waste management during the event. No more dirty & messy after the event.',
                        '4c_list_recomendation' => ['Event Organizer'],
                        '4c_list_url' => W4C_URL . 'service/' . '#event',
                    ],
                    [
                        '4c_list_title' => 'Edukasi Bijak Sampah (EDUBIS)',
                        '4c_list_content' => 'EDUBIS is a program designed by Waste4Change in order to educate Company, School, and Community about importance of Responsible Waste Management.',
                        '4c_list_recomendation' => ['Management', 'Staff'],
                        '4c_list_url' => W4C_URL . 'service/' . '#edubis',
                    ],
                    [
                        '4c_list_title' => 'Akademi Bijak Sampah (AKABIS)',
                        '4c_list_content' => 'AKABIS is another program created to educate about responsible waste management with deeper and self experience approach.',
                        '4c_list_recomendation' => ['Company Champion Team', 'Environmental Agent Candidate', 'Government Employee'],
                        '4c_list_url' => W4C_URL . 'service/' . '#akabis',
                    ],
                ],
            ],
            [
                '4c_title' => 'Collect',
                '4c_number' => '3',
                '4c_content' => 'We help you to have responsible waste management in your area so that no more waste are mixed and minimised the number of waste that ends up in the landfill.',
                '4c_list' => [
                    [
                        '4c_list_title' => 'Commercial Waste Management',
                        '4c_list_content' => 'We facilitate and collect waste with responsible approach from commercial area and make sure to reduce waste that goes into landfills.',
                        '4c_list_recomendation' => ['Corporation'],
                        '4c_list_url' => W4C_URL . 'service/' . '#commercial',
                    ],
                    [
                        '4c_list_title' => 'Residential Waste Management',
                        '4c_list_content' => 'We facilitate and collect waste with responsible approach from residential area and make sure to reduce waste that goes into landfills.',
                        '4c_list_recomendation' => ['Residential Developer'],
                        '4c_list_url' => W4C_URL . 'service/' . '#residential',
                    ],
                ],
            ],
            [
                '4c_title' => 'Create',
                '4c_number' => '4',
                '4c_content' => 'We collaborate with our trusted partner to transform you waste into recycled materials.',
                '4c_list' => [
                    [
                        '4c_list_title' => 'Inorganic Recycle Management',
                        '4c_list_content' => 'We have Material Recovery Facility to process collected inorganic waste into a recycled materials.',
                        '4c_list_recomendation' => ['General'],
                        '4c_list_url' => W4C_URL . 'service/' . '#feasibility',
                    ],
                    [
                        '4c_list_title' => 'Organic Waste Composting',
                        '4c_list_content' => 'The collected organic waste will be used for composting ingredients and nourish our Farm4Life area.',
                        '4c_list_recomendation' => ['General'],
                        '4c_list_url' => W4C_URL . 'service/' . '#feasibility',
                    ],
                ],
            ],
        ];

        if ($lang == 'id') {
            $w4c = $w4c_id;
        } else {
            $w4c = $w4c_en;
        }
        $number = 1;
        foreach ($w4c as $core) :
        ?>
    <div class="col-lg-6 g-pb-35">
      <div class="media">
        <div class="d-flex mr-4">
          <span class="d-block g-color-info g-font-weight-600 g-font-size-30 g-line-height-1">0<?= $number++ ?>.</span>
        </div>
        <div class="media-body">
          <h4 class="g-color-black-opacity-0_5 g-color-info mb-0 text-uppercase"><?= $core['4c_title'] ?></h4>
          <p class="g-color-black-opacity-0_5 mb-0"><?= $core['4c_content'] ?></p>
        </div>
      </div>
    </div>

    <section class="g-pos-rel g-overflow-hidden <?= $core['4c_number'] % 2 == 0 ? 'g-bg-secondary' : '' ?> d-none">
      <div class="container g-pt-100 g-pb-50">
        <div class="row justify-content-between">
          <div class="col-md-12 g-mb-20">
            <!-- Heading -->
            <div class="u-heading-v6-2 g-mb-60">
              <h3 class="u-heading-v6__title g-color-black g-font-weight-600 g-mb-30"><?= $core['4c_title'] ?></h3>
              <p class=" g-pl-90"><?= $core['4c_content'] ?></p>
            </div>
            <!-- End Heading -->
          </div>

          <div class="col-md-12 g-ml-85">
            <div class="row">
              <?php foreach ($core['4c_list'] as $core_service) : ?>
              <div class="col-md-4">
                <div class="media g-mb-50">
                  <div class="d-flex mr-4">
                    <span
                      class="u-icon-v1 u-icon-size--lg g-color-info g-bg-blue-opacity-0_1 g-font-size-18 rounded-circle mb-4">
                      <i class="et-icon-recycle"></i>
                    </span>
                  </div>
                  <div class="media-body">
                    <h3 class="h5 g-color-black mb-20"><?= $core_service['4c_list_title'] ?></h3>
                    <p class="g-color-gray-dark-v4"><?= $core_service['4c_list_content'] ?></p>
                    <a class="g-font-weight-600 g-font-size-12 g-text-underline--none--hover text-uppercase g-color-info"
                      target="_blank" href="<?= $core_service['4c_list_url'] ?>"><?= strtoupper(lang('learn_more')) ?>
                      <i class="fa fa-chevron-right g-ml-4"></i> </a>
                  </div>
                </div>
              </div>
              <?php endforeach; ?>
            </div>
            <!-- Icon Blocks -->

            <!-- End Icon Blocks -->
          </div>
        </div>
      </div>
    </section>
    <?php endforeach; ?>


  </div>
</div>
<!-- CTA to carrer Page Section -->
<?php 
    $cta_copywriting = [
        'en' => [
            'title' => 'Start your <span class="g-font-weight-600">Impactful Journey and Grow</span> together with Waste4Change',
            'button'=> [
                'url' => site_url('carrer'),
                'title' => 'Go To Carrer Page'
            ]
        ],
        'id' => [
            'title' => 'Mulai Perjalanan yang <span class="g-font-weight-600">Penuh Dampak dan Berkembanglah</span> bersama Waste4Change',
            'button'=> [
                'url' => site_url('carrer'),
                'title' => 'Halaman Karir'
            ]
        ]

     ];
    $cta_copywriting=json_decode(json_encode($cta_copywriting));
?>
<section
  class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden"
  data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
  <div class="divimage dzsparallaxer--target w-100"
    style="height: 130%; background-image: url(<?= base_url(DIR_IMG . 'bg/2-conversion-homepage.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);">
  </div>
  <div style="background:linear-gradient(rgba(248,248,248,0.98), rgba(243,243,243,0.8))">
    <div class="container <?= $this->agent->is_mobile() ? 'text-center g-py-50' : 'g-py-70' ?>">
      <div class="row justify-content-center">
        <div class="col-md-9 col-10 g-mb-15 pt-5">
          <div class="g-color-black <?= $this->agent->is_mobile() ? 'g-font-size-20' : 'h2' ?>">
            <?= $cta_copywriting->$lang->title ?></div>
        </div>
        <div class="col-md-3 col-10 g-mb-15 pt-5">
          <a class="btn btn-block btn-info g-color-white g-font-size-13 g-rounded-50 g-py-10 "
            href="<?= $cta_copywriting->$lang->button->url ?>">
            <?= strtoupper($cta_copywriting->$lang->button->title) ?>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- End CTA to carrer Page Section -->
<?php
// $this->load->view('sites/sections/cta');
?>