
<!-- Blog Grid Blocks -->
<section id="fact" class="g-bg-gray-light-v5 dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
    <div class="divimage dzsparallaxer--target w-100 d-none" style="height: 130%; background-image: url(<?= base_url('assets/img/bg/img36.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
    <div class="container g-pt-140">
        <div class="text-center g-mb-50">
            <h2 class="g-font-asap g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= strtoupper(lang('fact_title')) ?></h2>
            <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
            <p class="text-muted"><?= (lang('fact_description')) ?></p>
        </div>

        <div style="<?= $this->agent->is_mobile() ? '' : 'padding-right: 0' ?>">

            <?php
            $id=[
                [
                    'fact_content' => 'Indonesia berada di <span class="g-font-weight-700 g-color-info ">peringkat ke-2</span> dari 192 negara setelah Tiongkok sebagai penyumbang sampah plastik terbanyak ke lautan',
                    'fact_source' => 'Jenna Jembeck, 2015',
                    'image' => '1.jpg',
                    'number' => 1,
                ],
                [
                    'fact_content' => 'Setiap hari terdapat <br><span class="g-font-weight-700 g-color-info">+- 7.200 <small>ton sampah/hari.</small></span><br> sampah dari Jakarta yang dikirim ke TPST Bantargebang',
                    'fact_source' => 'DLH DKI Jakarta',
                    'image' => '2.jpg',
                    'number' => 2,
                ],
                [
                    'fact_content' => 'Perkantoran adalah penghasil sampah terbesar ke-2 dengan sekitar <span class="g-font-weight-700 g-color-info">27%</span> sampah yang berakhir ke TPST Bantargebang',
                    'fact_source' => 'DLH DKI Jakarta',
                    'image' => '3.jpg',
                    'number' => 3,
                ],
                [
                    'fact_content' => 'Indeks Perilaku Ketidakpedulian Lingkungan Hidup (IPKLH) di Indonesia untuk pengelolaan sampah cukup tinggi, yaitu mencapai <span class="g-font-weight-700 g-color-info">72% </span> pada <span class="g-font-weight-700  g-color-info">2017</span>',
                    'fact_source' => 'BPS 2017',
                    'image' => '4.jpg',
                    'number' => 4,
                ],
            ];
            $en=[
                [
                    'fact_content' => 'Out of 192 countries, Indonesia is the <span class="g-font-weight-700 g-color-info ">second</span> biggest contributor of plastic pollution in the ocean after Tiongkok',
                    'fact_source' => 'Jenna Jembeck, 2015',
                    'image' => '1.jpg',
                    'number' => 1,
                ],
                [
                    'fact_content' => 'There are approximately <span class="g-font-weight-700 g-color-info">7.200 <small>ton waste/day</small></span><br> that are disposed from Jakarta to Bantargebang landfill every day',
                    'fact_source' => 'Jakarta Sanitary Office',
                    'image' => '2.jpg',
                    'number' => 2,
                ],
                [
                    'fact_content' => 'Office complex is the second biggest waste generator, contributing to <span class="g-font-weight-700 g-color-info">27%</span> of waste that are sent to Bantargebang landfill',
                    'fact_source' => 'Jakarta Sanitary Office',
                    'image' => '3.jpg',
                    'number' => 3,
                ],
                [
                    'fact_content' => 'The Environmental Indifference Behaviour Index Report of Indonesia 2018 shows that the indifference in waste management aspect is quite high, reaching <span class="g-font-weight-700 g-color-info">72% </span> in <span class="g-font-weight-700 g-color-info">2017</span>',
                    'fact_source' => 'Statistics Indonesia 2017',
                    'image' => '4.jpg',
                    'number' => 4,
                ],
            ];
            $fact=$this->session->userdata('language')=='en' ? $en : $id;
            ?>

            <div id="fact-carousel" class="owl-theme">
                <?php
                foreach ($fact as $fact):
                ?>
                    <article class="row align-items-stretch g-transition-0_3 g-mx-15 g-mb-50">
                        <div class="col-sm-8 g-bg-white">
                            <div class="g-pa-15 g-min-height-200">
                                <h1 class="g-mb-3">0<?= $fact['number'] ?>.</h1>
                                <p class="g-color-gray-dark-v4 g-line-height-1_8 mb-4"><?= $fact['fact_content'] ?></p>

                            </div>
                        </div>
                        <div class="col-sm-4 g-bg-size-cover g-bg-pos-center g-min-height-200" data-bg-img-src="<?= base_url('assets/img/bg/fact/'.$fact['image']) ?>"></div>
                    </article>
                <?php
                endforeach;
                ?>
            </div>

            <script>
                $(window).ready(function () {
                    var element_id='#fact-carousel';
                    $(element_id).owlCarousel({
                        loop:true,
                        margin:0,
                        dots:true,
                        nav:true,
                        autoplay:false,
                        autoplayTimeout:1500,
                        autoplayHoverPause:true,
                        animateOut: 'fadeOut',
                        animateIn: 'fadeIn',
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
                        navText : ['<i class="fa fa-angle-left g-color-black nav-arrow-left" aria-hidden="true" style="transform: scale(2)"></i>','<i class="fa fa-angle-right g-color-black nav-arrow-right" aria-hidden="true" style="transform: scale(2)"></i>']
                    });

                    //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
                    $(element_id+' .owl-controls').attr('style', 'margin-top: 0;');

                    var screen_display=<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                    console.log(screen_display);
                    var margin_side=(screen_display-screen_display*(<?= $this->agent->is_mobile() ? '62' : '93.5' ?>)/100)/2;
                    console.log('screen : '+screen_display+'nav : '+screen_display*<?= $this->agent->is_mobile() ? '8' : '9' ?>0/100+'batas : '+margin_side);
                    <?php
                    if($this->agent->is_mobile()){
                        echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: -10px;width: 70%;right: '+margin_side+'px;')";
                    }else{
                        echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 90px;width: 97%;right: '+margin_side+'px;')";
                    }
                    ?>
                });

            </script>

        </div>
        <br>
        <br>
        <br>
    </div>
</section>
<!-- End Blog Grid Blocks -->
