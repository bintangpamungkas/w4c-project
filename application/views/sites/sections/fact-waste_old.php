
<!-- Blog Grid Blocks -->
<section id="fact" class="g-bg-gray-light-v5 dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
    <div class="divimage dzsparallaxer--target w-100 d-none" style="height: 130%; background-image: url(<?= base_url('assets/img/bg/img36.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
    <div class="container g-pt-140">
        <div class="text-center g-mb-50">
            <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= strtoupper(lang('fact_title')) ?></h2>
            <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
            <p class="text-muted"><?= (lang('fact_description')) ?></p>
        </div>

        <div style="<?= $this->agent->is_mobile() ? '' : 'padding-right: 0' ?>">

            <?php
            $id=[
                [
                    'fact_content' => 'Indonesia berada di <span class="g-font-weight-700 g-font-size-2 g-color-white g-font-size-30">peringkat ke-2</span> dari 192 negara setelah Tiongkok sebagai penyumbang sampah plastik terbanyak ke lautan',
                    'fact_source' => 'Jenna Jembeck, 2015',
                ],
                [
                    'fact_content' => 'Jakarta menghasilkan lebih dari <br><span class="g-font-weight-700 g-font-size-2 g-color-info5">7.200 <small>ton sampah/hari.</small></span><br> Setiap 2 hari, Jakarta bisa membuat <span class="g-font-weight-700 g-font-size-25">1 candi borobudur</span> di TPA Bantar Gebang',
                    'fact_source' => 'Dinas Kebersihan DKI Jakarta',
                ],
                [
                    'fact_content' => 'Perkantoran adalah salah satu sumber yang menghasilkan <span class="g-font-weight-700 g-font-size-25 g-color-white">27.35%</span> sampah yang berada di TPA. Jumlah ini adalah yang terbesar kedua setelah sampah rumah tangga',
                    'fact_source' => 'Dinas Kebersihan DKI Jakarta',
                ],
                [
                    'fact_content' => 'Indeks Perilaku Ketidapedulian Lingkungan Hidup (IPKLH) di Indonesia untuk pengelolaan sampah mencapai nilai yang tinggi, sebesar<span class="g-font-weight-700 g-font-size-30 g-color-info">72% </span> pada <span class="g-font-weight-700 g-font-size-30 g-color-info">2017</span>',
                    'fact_source' => 'BPS-RI, 2018',
                ],
            ];
            $en=[
                [
                    'fact_content' => 'Indonesia on the <span class="g-font-weight-700 g-font-size-2 g-color-white g-font-size-30">2<sup><small>nd</small></sup> rank</span> from 192 countries after Tiongkok as the largest contributor of plastic waste to the seas',
                    'fact_source' => 'Jenna Jembeck, 2015',
                ],
                [
                    'fact_content' => 'Jakarta can generate<br><span class="g-font-weight-700 g-font-size-25 g-color-info">7.200 <small>ton waste/day</small></span><br> From every 2 days of waste,  Jakarta can create <span class="g-font-weight-700 g-font-size-25">1 borobudur</span> temple in Bantar Gebang Landfill!',
                    'fact_source' => 'DKI Jakarta Sanitary Office',
                ],
                [
                    'fact_content' => 'Offices are one of the source that generate <span class="g-font-weight-700 g-font-size-25 g-color-white">27.35%</span> of waste that goes to landfills. This amount is the second biggest after residential waste.',
                    'fact_source' => 'DKI Jakarta Sanitary Office',
                ],
                [
                    'fact_content' => 'The Environmental Disability Care Index in Indonesia for waste management has reached a high value of <span class="g-font-weight-700 g-font-size-30 g-color-info">72% </span> in <span class="g-font-weight-700 g-font-size-30 g-color-info">2017</span>',
                    'fact_source' => 'Statistics Indonesia, 2018',
                ],
            ];
            $fact=$this->session->userdata('language')=='en' ? $en : $id;
            ?>

            <div id="fact-carousel" class="owl-theme" style="margin: 0 0 30px 0!important;">
                <article class="d-flex flex-wrap text-center g-color-white g-font-size-16">
                    <div class="order-<?= $this->agent->is_mobile() ? '2' : '1' ?> w-100">
                        <img class="w-100" src="<?= base_url('assets/img/bg/sampah_laut.jpg') ?>" alt="Image Description">
                    </div>
                    <div class="order-<?= $this->agent->is_mobile() ? '1' : '2' ?> w-100 u-ns-bg-v1-<?= $this->agent->is_mobile() ? 'bottom' : 'top' ?> g-bg-primary g-z-index-1 g-py-50 g-px-50 g-min-height-360" style="background: #0babce!important;">
                        <h3 class="h5 g-mb-20 g-font-weight-700 text-uppercase d-none">FACT #2</h3>
                        <p class="mb-0">
                            <?= $fact[0]['fact_content'] ?>
                        </p>
                        <p class="g-mt-20 g-color-aqua">
                            <small>- <?= $fact[0]['fact_source'] ?> -</small>
                        </p>
                    </div>
                </article>
                <article class="d-flex flex-wrap text-center g-font-size-16">
                    <div class="order-2 w-100">
                        <img class="w-100" src="<?= base_url('assets/img/bg/fact2.jpg') ?>" alt="Image Description">
                    </div>
                    <div class="order-1 w-100 u-ns-bg-v1-bottom g-bg-white g-z-index-1 g-py-50 g-px-50 g-min-height-360">
                        <h3 class="h5 g-color-info g-font-weight-700 text-uppercase g-mb-20 d-none">FACT #1</h3>
                        <p class="mb-0">
                            <?= $fact[1]['fact_content'] ?>
                        </p>
                        <p class="g-mt-20 text-muted">
                            <small>- <?= $fact[1]['fact_source'] ?> -</small>
                        </p>
                    </div>
                </article>
                <article class="d-flex flex-wrap text-center g-color-white g-font-size-16">
                    <div class="order-<?= $this->agent->is_mobile() ? '2' : '1' ?> w-100">
                        <img class="w-100" src="<?= base_url('assets/img/bg/fact3.jpg') ?>" alt="Image Description">
                    </div>
                    <div class="order-<?= $this->agent->is_mobile() ? '1' : '2' ?> w-100 u-ns-bg-v1-<?= $this->agent->is_mobile() ? 'bottom' : 'top' ?> g-bg-primary g-z-index-1 g-py-50 g-px-50 g-min-height-360" style="background: #0babce!important;">
                        <h3 class="h5 g-mb-20 g-font-weight-700 text-uppercase d-none">FACT #2</h3>
                        <p class="mb-0">
                            <?= $fact[2]['fact_content'] ?>
                        </p>
                        <p class="g-mt-20 g-color-aqua">
                            <small>- <?= $fact[2]['fact_source'] ?> -</small>
                        </p>
                    </div>
                </article>
                <article class="d-flex flex-wrap text-center g-font-size-16">
                    <div class="order-2 w-100">
                        <img class="w-100" src="<?= base_url('assets/img/bg/fact4.jpg') ?>" alt="Image Description">
                    </div>
                    <div class="order-1 w-100 u-ns-bg-v1-bottom g-bg-white g-z-index-1 g-py-50 g-px-50 g-min-height-360">
                        <h3 class="h5 g-color-info g-font-weight-700 text-uppercase g-mb-20 d-none">FACT #3</h3>
                        <p class="mb-0">
                            <?= $fact[3]['fact_content'] ?>
                        </p>
                        <p class="g-mt-20 text-muted">
                            <small>- <?= $fact[3]['fact_source'] ?> -</small>
                        </p>
                    </div>
                </article>
            </div>

            <script>
                $(window).load(function () {
                    var element_id='#fact-carousel';
                    $(element_id).owlCarousel({
                        loop:true,
                        margin:0,
                        dots:true,
                        nav:true,
                        autoplay:true,
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
                                items:3
                            }
                        },
                        navText : ['<i class="fa fa-angle-left g-color-black nav-arrow-left" aria-hidden="true" style="transform: scale(2)"></i>','<i class="fa fa-angle-right g-color-black nav-arrow-right" aria-hidden="true" style="transform: scale(2)"></i>']
                    });

                    //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
                    $(element_id+' .owl-controls').attr('style', 'margin-top: 30px;');

                    var screen_display=<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                    console.log(screen_display);
                    var margin_side=(screen_display-screen_display*(<?= $this->agent->is_mobile() ? '62' : '98.5' ?>)/100)/2;
                    console.log('screen : '+screen_display+'nav : '+screen_display*<?= $this->agent->is_mobile() ? '8' : '9' ?>0/100+'batas : '+margin_side);
                    <?php
                    if($this->agent->is_mobile()){
                        echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: -10px;width: 70%;right: '+margin_side+'px;')";
                    }else{
                        echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 140px;width: 101.5%;right: '+margin_side+'px;')";
                    }
                    ?>
                });

            </script>

        </div>
    </div>
</section>
<!-- End Blog Grid Blocks -->
