<section class="<?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-0' : 'g-pt-100 g-pb-100' ?>">

    <div id="facility" style="height: 10px;position: absolute;width: 80%;margin-top: -200px"></div>

    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="g-mr-50">
                    <div class="mb-2 d-none">
                        <div class="d-inline-block g-width-30 g-height-2 g-pos-rel g-top-minus-4 g-bg-info mr-2"></div>
                        <span class="g-color-gray-dark-v3 g-font-weight-600 g-font-size-12 text-uppercase"><?= lang('facility') ?></span>
                    </div>

                    <div class="mb-5">
                        <h2 class="h1 g-color-black g-font-weight-600 g-mb-25 text-capitalize g-line-height-1">
                            <?= lang('facility_title') ?>
                            <div class="g-width-70 g-brd-bottom g-brd-2 g-brd-blue g-mt-25"></div>
                        </h2>
                        <p>
                            <?= lang('facility_subtitle') ?>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="row">
                    <?php
                    $facility=[
                        'id' => [
                            [
                                'title' => 'Pengelolaan sampah di seluruh kawasan acara',
                                'icon' => 'fa fa-check',
                                'color' => 'info',
                            ],
                            [
                                'title' => 'Tempat sampah terpilah di titik-titik keramaian',
                                'icon' => 'fa fa-check',
                                'color' => 'info',
                            ],
                            [
                                'title' => 'Pengangkutan terpilah untuk seluruh sampah terkumpul selama acara',
                                'icon' => 'fa fa-check',
                                'color' => 'info',
                            ],
                            [
                                'title' => ' Booth edukasi pengelolaan sampah (berdasarkan permintaan)',
                                'icon' => 'fa fa-check',
                                'color' => 'info',
                            ],
                            [
                                'title' => 'Edukator bijak kelola sampah yang memberikan edukasi isu sampah dan pemilahannya',
                                'icon' => 'fa fa-check',
                                'color' => 'info',
                            ],
                        ],
                        'en' => [
                            [
                                'title' => 'Waste management in all areas of the event ',
                                'icon' => 'fa fa-check',
                                'color' => 'info',
                            ],
                            [
                                'title' => 'Segregated waste bin in all strategic spots/place ',
                                'icon' => 'fa fa-check',
                                'color' => 'info',
                            ],
                            [
                                'title' => 'Waste Management Educator who will educate visitors about wast problems and segregation ',
                                'icon' => 'fa fa-check',
                                'color' => 'info',
                            ],
                            [
                                'title' => 'Waste Management Education Booth (on demand)',
                                'icon' => 'fa fa-check',
                                'color' => 'info',
                            ],
                            [
                                'title' => 'Waste Management Educator who will educate visitors about wast problems and segregation ',
                                'icon' => 'fa fa-check',
                                'color' => 'info',
                            ],
                        ],
                    ];
                    $facility=$this->session->userdata('language')=='en' ? $facility['en'] : $facility['id'];
                    $number=1;
                    foreach ($facility as $data):
                        ?>
                        <div class="col-md-<?= count($facility)==$number++ ? '12' : '6' ?> g-pb-35">

                            <div class="media g-mb-15">
                                <div class="d-flex mr-4">
                                  <span class="u-icon-v2 u-icon-size--sm g-color-<?= $data['color'] ?> g-brd-<?= $data['color'] ?> g-bg-transparent rounded-circle">
                                    <i class="<?= $data['icon'] ?>"></i>
                                  </span>
                                </div>
                                <div class="media-body">
                                    <div class="g-color-black-opacity-0_8 g-line-height-1_6"><?= $data['title'] ?></div>
                                    <p class="g-color-gray-dark-v4 d-none"></p>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>

        <!-- End Icon Blocks -->
    </div>

</section>