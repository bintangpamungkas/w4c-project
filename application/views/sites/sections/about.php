
<section id="about" class="<?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-5' : 'g-pt-140 g-pb-80' ?>">
    <div class="container">
        <div class="g-pb-70" style="background-image: url(<?= base_url('assets/img/maps/map3.png') ?>);background-repeat: no-repeat">

            <div class="row">
                <div class="col-md-4">
                    <header class="text-uppercase g-mb-35">
                        <div class="g-mb-15">
                            <h6 class="g-color-info"><?= get_lang('about') ?></h6>
                            <h3 class="h3 g-font-weight-700 mb-0 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= get_lang('about_title') ?></h3>
                        </div>
                        <div class="g-width-70 g-brd-bottom g-brd-2 g-brd-blue"></div>
                    </header>

                    <div class="<?= $this->agent->is_mobile() ? '' : 'd-none' ?>">
                        <div class="g-bg-size-cover g-min-height-300 g-pos-rel rounded this_center_container" data-bg-img-src="<?= base_url('assets/img/bg/W4C_RPM_area_pemilahan_2.jpg') ?>" style="box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);background-position-x: -80px">
                            <a class="js-fancybox g-mr-10 g-mb-15 text-center" href="http://www.youtube.com/embed/4ad3mhRsdFw?autoplay=1" data-fancybox-speed="350">
                                <span class="this_center g-bg-red g-col u-icon-v3 g-mt-120 u-icon-size--lg u-block-hover--scale g-font-size-18 g-rounded-50x g-cursor-pointer" style="border: 3px solid #ffffff63;">
                                    <i class="g-pos-rel g-left-2 fa fa-play g-color-white"></i>
                                </span>
                            </a>
                            <script>
                                $(window).on('load', function () {
                                    var container=$('.this_center_container').width();
                                    $('.this_center').css('margin-left', (container/2)-35);
                                });
                            </script>
                        </div>

                        <div class="g-brd-around g-brd-3 g-brd-gray-light-v4 rounded g-py-40 g-pl-30 g-pr-30 g-top-minus-20 g-mb-30">
                            <i class="d-block g-color-blue g-font-size-40 g-line-height-0_7 g-pos-rel g-top-15 g-mb-25">"</i>
                            <blockquote class="g-color-black-opacity-0_6 g-font-size-22 g-line-height-1_8 g-mb-40">
                                <em><?= lang('about_quote') ?></em>
                            </blockquote>
                            <h4 class="g-color-black-opacity-0_4 g-font-weight-700 g-font-size-13 text-uppercase g-mb-0">
                                <span class="d-inline-block g-width-40 g-height-2 g-bg-black-opacity-0_4 g-pos-rel g-top-minus-3 mr-2"></span>
                                Waste4Change
                            </h4>
                        </div>
                    </div>

                    <p class="g-color-black-opacity-0_7 g-mb-25 <?= $this->agent->is_mobile() ? 'g-font-size-12 text-center' : '' ?>"><?= lang('about_description') ?></p>
                    <div class="<?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
                        <a href="<?= site_url('about') ?>" class="btn-change-color btn btn-info g-brd-white g-color-white g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9">
                            <?= strtoupper(lang('learn_more')) ?>
                            <span class="align-middle u-icon-v3 g-width-16 g-height-16 g-color-black g-bg-white g-font-size-11 rounded-circle ml-2">
                              <i class="fa fa-angle-right"></i>
                            </span>
                        </a>
                    </div>
                </div>
                <div class="<?= $this->agent->is_mobile() ? 'd-none' : '' ?> col-md-8">
                    <div class="row justify-content-center g-pt-50">
                        <div class="col-md-6 g-mt-50">
                            <div class="g-brd-around g-brd-3 g-brd-gray-light-v4 rounded g-py-50 g-pl-50 g-pr-80">
                                <i class="d-block g-color-blue g-font-size-40 g-line-height-0_7 g-pos-rel g-top-15 g-mb-25">"</i>
                                <blockquote class="g-color-black-opacity-0_6 g-font-size-22 g-line-height-1_8 g-mb-40"><em><?= lang('about_quote') ?></em>
                                </blockquote>
                                <h4 class="g-color-black-opacity-0_4 g-font-weight-700 g-font-size-13 text-uppercase g-mb-0">
                                    <span class="d-inline-block g-width-40 g-height-2 g-bg-black-opacity-0_4 g-pos-rel g-top-minus-3 mr-2"></span>
                                    Waste4Change
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-6 g-bg-size-cover g-min-height-300 g-pos-rel rounded g-top-minus-40 g-ml-minus-50 this_center_container2" data-bg-img-src="<?= base_url('assets/img/bg/W4C_RPM_area_pemilahan_2.jpg') ?>" style="box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);background-position-x: -150px">
                            <div class="g-pos-rel g-z-index-1 g-py-180 g-height-300">
                                <a class="js-fancybox g-mr-10 g-mb-15 animated fadeIn" href="http://www.youtube.com/embed/4ad3mhRsdFw?autoplay=1" data-fancybox-speed="350">
                                    <span class="u-icon-v3 u-icon-size--lg u-block-hover--scale g-bg-red this_center2 g-color-black g-color-primary--hover g-font-size-18 g-rounded-50x g-cursor-pointer" style="margin-left: 140px;border: 3px solid #ffffff63;">
                                        <i class="g-pos-rel g-left-2 fa fa-play g-color-white"></i>
                                    </span>
                                </a>
                                <script>
                                    $(window).on('load', function () {
                                        var container=$('.this_center_container2').width();
                                        $('.this_center2').css('margin-left', (container/2)-35);
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>
<!-- End Work With Us -->
