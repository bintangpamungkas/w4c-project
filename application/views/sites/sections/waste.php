
<!-- Projects -->
<section id="waste" class="container g-pt-50 g-pb-25 g-pt-140--lg g-pb-100--lg">
    <div class="text-center g-mb-50">
        <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= ($brand_id) ? ($brand_id=='tetrapak' ? lang('brand_accepted_waste_title_tetrapak') : lang('brand_accepted_waste_title')) : lang('brand_accepted_waste_title') ?></h2>
        <p class="lead <?= $this->agent->is_mobile() ? 'g-font-size-16' : '' ?>"><?= lang('brand_accepted_waste_subtitle') ?></p>
    </div>

    <div class="row">
        <div class="col-md-9">
            <div id="waste-carousel" class="col-md-12 owl-theme" style="margin: 0 0 30px 0!important;">
                <?php
                $cocacola = [
                    [
                        'title' => 'Kemasan 390 ml',
                        'img' => 'coke_bottle_plastic.jpg',
                        'subtitle' => 'Botol Plastik',
                    ],
                    [
                        'title' => 'Kemasan 330 ml',
                        'img' => 'coke_can.jpg',
                        'subtitle' => 'Kaleng',
                    ],
                    [
                        'title' => 'Kemasan 330 ml',
                        'img' => 'coke_bottle_glass.jpg',
                        'subtitle' => 'Botol Kaca',
                    ],
                    [
                        'title' => 'Kemasan Box',
                        'img' => 'coke_box.jpg',
                        'subtitle' => 'Kardus',
                    ],
                    [
                        'title' => 'Kemasan 200 ml',
                        'img' => 'coke_bottle_glass.jpg',
                        'subtitle' => 'Botol Kaca',
                    ],
                    [
                        'title' => 'Kemasan 1.5 lt',
                        'img' => 'coke_larga.jpg',
                        'subtitle' => 'Botol Plastik',
                    ],
                    [
                        'title' => 'Zero 330 ml',
                        'img' => 'Kaleng_Zero_330ml_Tinggi.jpg',
                        'subtitle' => 'Kaleng',
                    ],
                ];
                $tetrapak = [
                    [
                        'title' => 'Tetra Pak #1',
                        'img' => 'Kemasan_Tetra_Pak_1_Tetra_Wedge_125_200ml.png',
                        'subtitle' => '',
                    ],
                    [
                        'title' => 'Tetra Pak #1',
                        'img' => 'Kemasan_Tetra_Pak_2_Tetra_Top_200_250_330_400_500ml.png',
                        'subtitle' => '',
                    ],
                    [
                        'title' => 'Tetra Pak #1',
                        'img' => 'Kemasan_Tetra_Pak_3_Tetra_Rex_237_250_300_315_375_473_500_600_750_946_1000ml.png',
                        'subtitle' => '',
                    ],
                    [
                        'title' => 'Tetra Pak #1',
                        'img' => 'Kemasan_Tetra_Pak_4_Tetra_Recart_200ml.png',
                        'subtitle' => '',
                    ],
                    [
                        'title' => 'Tetra Pak #1',
                        'img' => 'Kemasan_Tetra_Pak_5_Tetra_Prisma_Aseptic_200_250_500ml.png',
                        'subtitle' => '',
                    ],
                    [
                        'title' => 'Tetra Pak #1',
                        'img' => 'Kemasan_Tetra_Pak_6_Tetra_Gemina_500_750_1000_1500ml.png',
                        'subtitle' => '',
                    ],
                    [
                        'title' => 'Tetra Pak #1',
                        'img' => 'Kemasan_Tetra_Pak_7_Tetra_Fino_70_100_150_200_220_250_500_1000ml.png',
                        'subtitle' => '',
                    ],
                    [
                        'title' => 'Tetra Pak #1',
                        'img' => 'Kemasan_Tetra_Pak_8_Tetra_Classic_200ml.png',
                        'subtitle' => '',
                    ],
                    [
                        'title' => 'Tetra Pak #1',
                        'img' => 'Kemasan_Tetra_Pak_9_Tetra_Brik_200_250_500_1000ml.png',
                        'subtitle' => '',
                    ],
                ];
                if($brand_id=='tetrapak'){
                    $xa=$tetrapak;
                }else{
                    $xa=$cocacola;
                }
                $number = 1;

                foreach($xa as $x) :
                    ?>
                    <div class="g-px-10 g-mb-20">
                        <!-- Projects -->
                        <div class="u-block-hover g-brd-around g-brd-gray-light-v4 g-color-black g-bg-white--hover text-center g-rounded-7 g-transition-0_3 g-px-30 g-py-50">
                            <img class="img-fluid u-block-hover__main--zoom-v1 mb-5" src="<?= base_url('assets/img/waste/'.$brand_id.'/'.$x['img']) ?>" alt="Image Description">
                            <span class="g-font-weight-600 g-font-size-12 text-uppercase"><?= $brand_id=='tetrapak' ? str_replace('_', ' ', substr($x['img'], 0, -4)) : $x['subtitle'] ?></span>
                            <div class="g-font-size-18 g-font-weight-600 mb-0 d-none"><?= strtoupper($x['title']) ?></div>
                            <a class="u-link-v2"></a>
                        </div>
                        <!-- End Projects -->
                    </div>

                    <?php
                endforeach;
                ?>
            </div>
            <script>
                $(window).load(function () {
                    var element_id='#waste-carousel';
                    $(element_id).owlCarousel({
                        loop:true,
                        margin:0,
                        dots:<?= !$this->agent->is_mobile() && count($xa)<3 ? 'false' : 'true' ?>,
                        nav:true,
                        autoplay:true,
                        autoplayTimeout:10000,
                        autoplayHoverPause:true,
                        responsive:{
                            0:{
                                items:1
                            },
                            600:{
                                items:3
                            },
                            1000:{
                                items:3
                            }
                        },
                        navText : ['<i class="fa fa-angle-left g-color-black nav-arrow-left" aria-hidden="true" style="transform: scale(2)"></i>','<i class="fa fa-angle-right g-color-black nav-arrow-right" aria-hidden="true" style="transform: scale(2)"></i>']
                    });

                    //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
                    $(element_id+' .owl-controls').attr('style', 'margin-top: 20px;');

                    var screen_display=<?= $this->agent->is_mobile() ? "screen.width" : "$('#waste').width()" ?>;
                    console.log(screen_display);
                    var margin_side=(screen_display-screen_display*(<?= $this->agent->is_mobile() ? '90.5' : '98' ?>)/100)/2;
                    <?php
                    if($this->agent->is_mobile()){
                        echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 125px;width: 90%;right: '+margin_side+'px;')";
                    }else{
                        echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 150px;width: 98%;right: '+margin_side+'px;')";
                    }
                    ?>
                });

            </script>
        </div>
        <div class="col-md-3" style="<?= $this->agent->is_mobile() ? '' : 'padding-left: 0' ?>">
            <div class="g-px-10 g-mb-20">
                <!-- Projects -->
                <div class="u-block-hover g-color-black g-bg-white--hover text-center g-rounded-7 g-transition-0_3 g-px-30 g-py-50" style="min-height: 410px;background:radial-gradient(circle farthest-side at 120% 80%, rgba(90,219,127,0.67), rgba(27,177,203,0.92))">
                    <i class="et-icon-recycle g-font-size-120 g-color-white-opacity-0_3 g-mb-15"></i>
                    <div class="g-font-size-16 g-font-weight-300 g-color-white"><?= lang('brand_accepted_waste_wanna') ?></div>
                    <div class="g-font-size-25 g-font-weight-700 g-color-white g-line-height-1"><?= lang('brand_accepted_waste_other') ?></div>
                    <div class="g-mt-20">
                        <a target="_blank" href="<?= SEND_YOUR_WASTE_URL.('#waste') ?>" class="btn u-btn-outline-white g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-20 g-py-9 text-uppercase">
                            <?= lang('brand_partner_btn_other_waste') ?>
                        </a>
                    </div>
                </div>
                <!-- End Projects -->
            </div>
        </div>
    </div>

    <div class="text-center g-mb-50 pt-25 d-none">
        <h5 class="g-font-weight-600"><?= lang('brand_partner_subtitle_footer_head') ?></h5>
        <p class="text-muted"><?= lang('brand_partner_subtitle_footer') ?></p>
        <br>
        <a target="_blank" class="btn btn-info g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9 text-uppercase" href="<?= W4C_URL.'#waste' ?>">
            <?= lang('brand_partner_btn_other_waste') ?>
        </a>
    </div>
</section>
<!-- End Projects -->
