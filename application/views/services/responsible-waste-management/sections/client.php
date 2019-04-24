    <section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>

    <div id="client" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>

    <div class="divimage dzsparallaxer--target w-100" style="height: 130%; background-image: url(<?= base_url('assets/img/bg/sleek_bg_image_black.png') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
    <div style="background:radial-gradient(circle farthest-side at 80% 60%, rgba(244,244,244,0.91), rgba(244,244,244,0.92))">
        <div class="container <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-pt-140 g-pb-70' ?>">
            <div class="text-center g-mb-50">
                <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= strtoupper(lang('client_only_title')) ?></h2>
                <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
                <p class="g-color-white-opacity-0_8 d-none"><?= lang('brand_partner_subtitle') ?></p>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-11 col-12">

                    <div id="media-carousel" class="col-md-12 owl-theme" style="margin: 0 0 30px 0!important;">
                        <?php
                        $clients=[
                            [
                                'name' => 'Javara',
                                'number' => 1,
                                'image' => '1.jpg',
                            ],
                            [
                                'name' => 'Vida Bekasi',
                                'number' => 2,
                                'image' => '2.jpg',
                            ],
                            [
                                'name' => 'Binus School Bekasi',
                                'number' => 3,
                                'image' => '3.jpg',
                            ],
                            [
                                'name' => 'Wisma Barito',
                                'number' => 4,
                                'image' => '4.jpg',
                            ],
                        ];
                        foreach($clients as $client) :
                            ?>
                            <div class="text-center">
                                <div class="g-bg-white rounded g-pa-10 <?= $this->agent->is_mobile() ? 'g-mx-3 g-mb-5' : 'g-px-30 g-mx-10 g-mb-10' ?>">
                                    <img class="img-fluid mx-auto" src="<?= base_url('assets/img/service/'.$service_id.'/client/'.$client['image']) ?>" alt="Image Description">
                                </div>
                                <small><?= $client['name'] ?></small>
                            </div>
                            <?php
                        endforeach;
                        ?>
                    </div>

                    <script>
                        $(window).load(function () {
                            var element_id='#media-carousel';
                            $(element_id).owlCarousel({
                                loop:true,
                                margin:0,
                                dots:true,
                                nav:true,
                                autoplay:true,
                                autoplayTimeout:1500,
                                autoplayHoverPause:true,
                                responsive:{
                                    0:{
                                        items:2
                                    },
                                    600:{
                                        items:4
                                    },
                                    1000:{
                                        items:4
                                    }
                                },
                                navText : ['<i class="fa fa-angle-left g-color-black" aria-hidden="true" style="transform: scale(4)"></i>','<i class="fa fa-angle-right g-color-black" aria-hidden="true" style="transform: scale(4)"></i>']
                            });

                            //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
                            $(element_id+' .owl-controls').attr('style', 'margin-top: 30px;');

                            var screen_display=<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                            console.log(screen_display);
                            var margin_side=(screen_display-screen_display*(<?= $this->agent->is_mobile() ? '69' : '98.5' ?>)/100)/2;
                            console.log('screen : '+screen_display+'nav : '+screen_display*<?= $this->agent->is_mobile() ? '8' : '9' ?>0/100+'batas : '+margin_side);
                            <?php
                            if($this->agent->is_mobile()){
                                echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 170px;width: 74%;right: '+margin_side+'px;')";
                            }else{
                                echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 60px;width: 101.5%;right: '+margin_side+'px;')";
                            }
                            ?>
                        });

                    </script>

                    <style>
                        .owl-prev {
                            width: 15px;
                            height: 100px;
                            position: absolute;
                            top: 40%;
                            margin-left: -20px;
                            display: block !important;
                            border:0px solid black;
                        }

                        .owl-next {
                            width: 15px;
                            height: 100px;
                            position: absolute;
                            top: 40%;
                            right: -25px;
                            display: block !important;
                            border:0px solid black;
                        }
                        .owl-prev i, .owl-next i {transform : scale(1,6); color: #ccc;}
                    </style>

                </div>
            </div>
        </div>
    </div>
</section>