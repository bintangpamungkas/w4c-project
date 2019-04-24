
<div class="g-bg-white <?= $this->agent->is_mobile() ? '' : 'g-pb-80' ?>">
    <div id="story" style="height: 200px;position: absolute;width: 80%;margin-top: -180px"></div>

    <div class="container">
        <!-- Info Image -->
        <?php
        if($brand_id=='cocacola'){

            $en=[
                'description' => ucwords($brand_name).' have a vision to achieve a true <strong>Circular Economy</strong> where everything we use is designed to be reused and recycled, and very little is thrown away.',
                'content_1_title' => 'Design for Reuse',
                'content_1_content' => 'At Coca-Cola, we design our bottles and cans to have a value beyond their original use.',
                'content_2_title' => 'Collect and Recycle',
                'content_2_content' => 'We ensure our bottles and cans are being collected, recycled and work with partners to increase recycling rates.',
            ];

            $id=[
                'description' => ucwords($brand_name).' memiliki visi untuk mewujudkan <strong>Circular Economy</strong> sejati di mana semua yang kita gunakan dirancang untuk digunakan kembali dan didaur ulang, dan sangat sedikit yang dibuang.',
                'content_1_title' => 'Desain untuk Reuse',
                'content_1_content' => 'Di Coca-Cola, kami merancang botol & kaleng untuk memiliki nilai di luar kegunaan aslinya.',
                'content_2_title' => 'Pengumpulan dan Daur Ulang',
                'content_2_content' => 'Kami memfasilitasi agar tiap botol dan kaleng kami dapat terkumpul, dan terdaur ulang dengan berkolaborasi untuk meningkatkan tingkat daur ulang.',
            ];

            $story=$this->session->userdata('language')=='en' ? $en : $id;

            $story_content=[
                [
                    'title' => 'Why A World Without Waste Is Possible',
                    'subtitle' => '',
                    'url' => 'https://www.coca-colacompany.com/stories/why-a-world-without-waste-is-possible',
                    'story_bg' => base_url('assets/img/bg/brands/cocacola/media/WorldWithoutWaste3.rendition.940.456.jpg'),
                ],
                [
                    'title' => 'Mengurangi Penggunaan Plastik dengan Teknologi ASSP',
                    'subtitle' => '',
                    'url' => 'https://www.cocacola.co.id/cerita/coca-cola-indonesia-memperkenalkan-teknologi-assp-yang-mengurang-penggunaan-plastik-lebih-dari-40-persen',
                    'story_bg' => base_url('assets/img/bg/brands/cocacola/media/Coca-Cola-ASSP-2.rendition.598.336.jpg'),
                ],
                [
                    'title' => 'Ellen Mac Arthur Foundation Our Oceans Pledge',
                    'subtitle' => '',
                    'url' => 'https://www.coca-colacompany.com/press-center/company-statements/ellen-macarthur-foundation-our-oceans-pledge',
                    'story_bg' => base_url('assets/img/bg/brands/cocacola/media/JB4A0988.rendition.598.336.jpg'),
                ],
            ];

            ?>
            <div class="<?= $this->agent->is_mobile() ? 'g-mt-100' : '' ?>">
                <header id="story_title_desktop" class="text-uppercase g-mb-35">
                    <div class="g-font-size-16 g-font-weight-700 g-color-info">
                        <?= strtoupper($brand_name) ?>
                    </div>
                    <div class="g-mb-15">
                        <h2 class="h2 g-font-weight-700 mb-0 <?= $this->agent->is_mobile() ? 'g-font-size-24' : '' ?>">
                            Investing in Planet; Investing in Packaging
                        </h2>
                    </div>
                    <div class="g-width-70 g-brd-bottom g-brd-2 g-brd-blue"></div>
                </header>

                <p id="story_description_desktop" class="g-color-black-opacity-0_7 g-mb-25">
                    <?= $story['description'] ?>
                </p>

            </div>

            <div class="row">
                <?php foreach ($story_content as $content): ?>
                <div class="col-lg-4 col-md-6 g-mb-30">
                    <!-- Article -->
                    <article class="u-block-hover g-color-white">
                        <!-- Article Image -->
                        <div class="g-bg-cover g-bg-black-opacity-0_3--after">
                            <img class="w-100" src="<?= $content['story_bg'] ?>" alt="Image Description">
                        </div>
                        <!-- End Article Image -->

                        <div class="u-block-hover__additional--fade g-bg-black-opacity-0_7 rounded g-ma-10"></div>

                        <!-- Article Content -->
                        <div class="u-block-hover__additional g-flex-middle g-pa-20">
                            <div class="g-flex-middle-item--top d-none">
                                <span class="u-ribbon-v1 g-color-white g-bg-primary-opacity-0_8 g-font-weight-700 g-font-size-11 rounded g-top-20 g-left-20">$780.00</span>
                            </div>
                            <div class="g-flex-middle-item--bottom">
                                <h3 class="h5 g-mb-2"><?= $content['title'] ?></h3>
                                <small><?= $content['subtitle'] ?></small>
                            </div>
                        </div>
                        <!-- End Article Content -->

                        <a target="_blank" href="<?= $content['url'] ?>" class="u-link-v2"></a>
                    </article>
                    <!-- End Article -->
                </div>
                <?php endforeach; ?>
            </div>
            <?php

        }else if($brand_id=='tetrapak'){

            $en=[
                'description' => 'We commit to bring sustainibility towards <strong>Circular Economy</strong> by working with industry partners to ensure recycling solutions are in place for all components of beverage cartons, substantially increasing the use of plastics made from renewable feedstocks and using recycled plastics once they are validated​ as safe and legally acceptable for food contact material.',
                'content_1_title' => 'Increasing Recycling',
                'content_1_content' => 'Recycling helps keep valuable materials in the economy. By collaboration with patrners we want to increase recycle rate of our product and keep our commitment on <strong>Circular Economy</strong>.',
                'content_2_title' => 'Responsible Sourcing of Materials',
                'content_2_content' => 'Designing product by using materials from responsible source, all our paperboard is sourced from Forest Stewardship Council<sup><small>R</small></sup> (FSC<sup><small>R</small></sup>) certified forests and other controlled sources',
            ];

            $id=[
                'description' => ucwords($brand_name).' berkomitmen untuk membawa keberlanjutan usaha menuju Circular Economy melalui kerjasama dengan mitra industri untuk memastikan solusi pengumpulan dan daur ulang kemasan karton bekas minuman tersedia untuk setiap bagian dari kemasan Tetra Pak, dan secara substansial meningkatkan penggunaan bahan baku terbarukan serta potensinya dalam menggunakan plastik atau kertas daur ulang setelah tervalidasi sebagai bahan aman dan legal diterima untuk food grade',
                'content_1_title' => 'Meningkatkan Daur Ulang',
                'content_1_content' => 'Daur ulang membantu menjaga bahan berharga dalam perekonomian. Dengan berkolaborasi bersama mitra, kami ingin meningkatkan tingkat daur ulang produk kami dan menjaga komitmen kami terhadap circular economy.',
                'content_2_title' => 'Sumber Material yang Bertanggung Jawab',
                'content_2_content' => 'Merancang produk dengan menggunakan bahan dari sumber daya terbarukan yang bertanggung jawab. Semua kertas karton Tetra Pak bersumber dari hutan tersertifikasi Forest Stewardship Council (FSC) dan sumber terkontrol lainnya',
            ];

            $story=$this->session->userdata('language')=='en' ? $en : $id;

            $story_image=[
                [
                    'story_bg' => base_url('assets/img/bg/brands/tetrapak/tetrapak_recycling.jpg'),
                ],
                [
                    'story_bg' => base_url('assets/img/bg/brands/tetrapak/tetra-prisma-aseptic-package-fsc-label.jpg'),
                ],
                [
                    'story_bg' => base_url('assets/img/bg/brands/tetrapak/Event_FSC_Friday.jpg'),
                ],
                [
                    'story_bg' => base_url('assets/img/bg/brands/tetrapak/Event_FSC_Friday_Dropbox.jpg'),
                ],
                [
                    'story_bg' => base_url('assets/img/bg/brands/tetrapak/Event_Hello_Nature_2017_1.jpg'),
                ],
                [
                    'story_bg' => base_url('assets/img/bg/brands/tetrapak/Event_Visit_Aisle.jpg'),
                ],
            ];
            ?>
            <div class="row no-gutters">

                <div class="<?= $this->agent->is_mobile() ? 'g-mt-100' : '' ?> text-center">
                    <header id="story_title_desktop" class="text-uppercase g-mb-35">
                        <div class="g-font-size-16 g-font-weight-700 g-color-info">
                            <?= strtoupper($brand_name) ?>
                        </div>
                        <div class="g-mb-15">
                            <h2 class="h2 g-font-weight-700 mb-0 <?= $this->agent->is_mobile() ? 'g-font-size-24' : '' ?>">RECYCLING STORY</h2>
                        </div>
<!--                         <div class="g-width-70 g-brd-bottom g-brd-2 g-brd-blue center"></div>
 -->                    </header>

                    <p id="story_description_desktop" class="g-color-black-opacity-0_7 g-mb-25">
                        <?= $story['description'] ?>
                    </p>
                    <a target="_blank" class="btn btn-info g-color-white g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9 g-mb-30" href="http://www.tetrapak.com/id/sustainability/daur-ulang-kemasan"> PELAJARI LEBIH LANJUT </a>
                </div>

                <div class="col-lg-6 g-min-height-200 g-bg-size-cover g-bg-pos-center">

                    <div class="clearfix">
                        <div id="story-carousel" class="row owl-theme" style="margin: 0 0 0 0!important;">
                            <?php

                            $number = 1;

                            foreach($story_image as $x) :
                                ?>
                                <article class="g-height-<?= $this->agent->is_mobile() ? '200' : '350' ?> text-center g-flex-middle g-bg-cover g-bg-size-cover g-bg-bluegray-opacity-0_3--after g-color-white g-py-100 g-px-40" data-bg-img-src="<?= $x['story_bg'] ?>" style="background-image: url(<?= $x['story_bg'] ?>);">
                                    <div class="g-flex-middle-item g-pos-rel g-z-index-2 <?= $this->agent->is_mobile() ? 'd-none' : '' ?>">
                                        <em class="d-block g-font-style-normal">Recycling Program of</em>
                                        <h3 class="g-font-weight-700 text-uppercase g-font-size-35 g-mb-30"><?= $brand_name ?></h3>
                                    </div>
                                </article>
                                <?php
                            endforeach;
                            ?>
                        </div>

                        <script>
                            $(window).load(function () {
                                var element_id='#story-carousel';
                                $(element_id).owlCarousel({
                                    loop:true,
                                    margin:30,
                                    dots:false,
                                    nav:true,
                                    animateOut: 'fadeOut',
                                    animateIn: 'fadeIn',
                                    autoplay:true,
                                    autoplayTimeout:1500,
                                    autoplayHoverPause:true,
                                    responsive:{
                                        0:{
                                            items:1
                                        },
                                        600:{
                                            items:1
                                        },
                                        1000:{
                                            items:1
                                        }
                                    },
                                    navText : ['<i class="fa fa-angle-left g-color-black nav-arrow-left-box" aria-hidden="true" style="transform: scale(2)"></i>','<i class="fa fa-angle-right g-color-black nav-arrow-right-box" aria-hidden="true" style="transform: scale(2)"></i>']
                                });

                                //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
                                $(element_id+' .owl-controls').attr('style', 'margin-top: 0;');

                                var screen_display=<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                                console.log(screen_display);
                                var margin_side=(screen_display-screen_display*(<?= $this->agent->is_mobile() ? '85' : '100' ?>)/100)/2;
                                console.log('screen : '+screen_display+'nav : '+screen_display*<?= $this->agent->is_mobile() ? '8' : '9' ?>0/100+'batas : '+margin_side);
                                <?php
                                if($this->agent->is_mobile()){
                                    echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 125px;width: 90px;right: '+margin_side+'px;')";
                                }else{
                                    echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 300px;width: 90px;right: '+margin_side+'px;')";
                                }
                                ?>
                            });

                        </script>
                    </div>

                </div>



                <div class="col-lg-6">
                    <div class="g-py-50 g-px-40 g-bg-info" style="min-height: 350px">
                        <div class="g-mb-35">
                            <div class="g-font-size-20 g-font-weight-700 g-line-height-1 g-mb-15"><?= $story['content_1_title'] ?></div>
                            <div class="g-font-size-13"><?= $story['content_1_content'] ?></div>
                        </div>
                        <div class="g-mb-7">
                            <div class="g-font-size-20 g-font-weight-700 g-line-height-1 g-mb-15"><?= $story['content_2_title'] ?></div>
                            <div class="g-font-size-13"><?= $story['content_2_content'] ?></div>
                        </div>
                    </div>
                </div>

            </div>
            <?php
        }
        ?>

    </div>

</div>
