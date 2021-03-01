<section class="g-bg-secondary g-py-20">
    <div id="<?= $section_slug ?>" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>
        <div class="container <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-py-70' ?>">
            <div class="text-center g-mb-50">
                <h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?= $section_slug ?></h2>
                <hr class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue">
                <p class="g-color-white-opacity-0_8 d-none"><?= get_lang('brand_partner_subtitle') ?></p>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-11 col-12">
                    <div id="our-armada-carousel" class="owl-theme row no-gutters justify-content-center" style="margin: 0 0 30px 0!important;padding:0px">
                        <?php
                        $armada_section = [
                        'en' => [
                            'armada' => [
                                '1' => [
                                    'image' => 'Pick-Up.jpg',
                                    'title' => 'Pick Up',
                                    'description' => 'Capacity: 1.5 Ton',
                                ],
                                '2' => [
                                    'image' => 'Light-Truck.jpg',
                                    'title' => 'Light Truck',
                                    'description' => 'Capacity: 2.5 Ton',
                                ],
                                '3' => [
                                    'image' => 'Dump-Truck.jpg',
                                    'title' => 'Dump Truck',
                                    'description' => 'Capacity: 16 Ton',
                                ],
                                '4' => [
                                    'image' => 'Baktor.jpg',
                                    'title' => 'Motorcycle',
                                    'description' => 'Capacity: 700 kg',
                                ],
                                '5' => [
                                    'image' => 'Arm-roll.jpg',
                                    'title' => 'Arm Roll',
                                    'description' => 'Capacity: 5 Ton',
                                ],
                            ]
                        ],
                        'id' => [
                            'armada' => [
                                '1' => [
                                    'image' => 'Pick-Up.jpg',
                                    'title' => 'Pick Up',
                                    'description' => 'Kapasitas: 1.5 Ton',
                                ],
                                '2' => [
                                    'image' => 'Light-Truck.jpg',
                                    'title' => 'Light Truck',
                                    'description' => 'Kapasitas: 2.5 Ton',
                                ],
                                '3' => [
                                    'image' => 'Dump-Truck.jpg',
                                    'title' => 'Dump Truck',
                                    'description' => 'Kapasitas: 16 Ton',
                                ],
                                '4' => [
                                    'image' => 'Baktor.jpg',
                                    'title' => 'Bak Motor',
                                    'description' => 'Kapasitas: 700 kg',
                                ],
                                '5' => [
                                    'image' => 'Arm-roll.jpg',
                                    'title' => 'Arm Roll',
                                    'description' => 'Kapasitas: 5 Ton',
                                ],
                            ]
                        ],
                    ];
                        $copy = json_decode(json_encode($armada_section[$lang]));
                        foreach ($copy->armada as $x) : ?>
                            <div class="card text-center <?= $this->agent->is_mobile() ? 'mx-auto' : '' ?> p-3 mb-5 bg-white rounded" style="height:364px;box-shadow: 0px 0px 12px rgba(0, 0, 0, 0.11);width:320px">
                                <div class="card-body">
                                    <div class="g-color-black text-center g-transition-0_3 g-px-20 g-py-20" style="padding: 15px 0 0 0!important;background: #FFFFF;margin-bottom:16px;width:102%;height:330px">
                                        <img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= base_url(DIR_ICON . 'armada/' . $x->image ) ?>" alt="Image Description">
                                        <div class="g-pa-15">
                                            <h2 class="h5 g-font-weight-600 mb-4" style="font-size:17px;margin-bottom: 5px!important;color:#00000">
                                                <?= $x->title ?>
                                            </h2>
                                            <h2 class="h5 g-font-weight-600 mb-4 g-font-size-15" style="margin-bottom: 5px!important;color:#656565">
                                                <?= $x->description ?> <!-- description of waste bin option -->
                                            </h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                        <script>
                $(window).ready(function () {
                    var element_id = '#our-armada-carousel';
                    $(element_id).owlCarousel({
                        loop: true,
                        margin: 10,
                        dots: true,
                        nav: true,
                        autoplay: true,
                        autoplayTimeout: 2000,
                        autoplayHoverPause: true,
                        responsive: {
                            0: {
                                items: 1
                            },
                            600: {
                                items: 1
                            },
                            1000: {
                                items: 3
                            }
                        },
                        navText: ['<i class="<?=$this->agent->is_mobile() ? 'fa fa-angle-left g-color-gray-light-v1 nav-arrow-left' : 'fa fa-angle-left g-color-gray-light-v1 nav-arrow-left' ?>" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile() ? '2' : '2'?>)"></i>', '<i class="<?=$this->agent->is_mobile() ? 'fa fa-angle-right g-color-gray-light-v1 nav-arrow-right' : 'fa fa-angle-right g-color-gray-light-v1 nav-arrow-right' ?>" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile() ? '2' : '2'?>)"></i>']
                    });

                    //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
                    $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
                    var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                    // console.log(screen_display);
                    var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '9.5' ?>) / 100) / 2;
                    //console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
                                    <?php
                                    if ($this->agent->is_mobile()) {
                                        echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 430px;width: 74%;right: '+margin_side+'px;')";
                                    } else {
                                        echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 430px;width: 12.9%;right: '+margin_side+'px;')";
                                    }
                                    ?>
                });

                        </script>

            </div>
        </div>
    </div>
</section>