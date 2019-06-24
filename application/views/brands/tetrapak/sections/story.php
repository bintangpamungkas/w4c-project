
<div class="g-bg-white <?= $this->agent->is_mobile() ? '' : 'g-pb-80' ?>">
    <div id="story" style="height: 200px;position: absolute;width: 80%;margin-top: -180px"></div>

    <div class="container">
        <!-- Info Image -->
        <?php
        $en=[
                'description' => 'We commit to bring business continuity towards Circular Economy in collaboration with industry partners to ensure solutions for collecting and recycling used beverage carton packaging are available for every part of Tetra Pak packaging, and substantially increase the use of renewable raw materials and their potential in using plastic or paper recycled after being validated as a safe and legal material accepted for food grade.',
                'content_1_title' => 'Increasing Recycling',
                'content_1_content' => 'Recycling helps keep valuable materials in the economy. By collaboration with patrners we want to increase recycle rate of our product and keep our commitment on <strong>Circular Economy</strong>.',
                'content_2_title' => 'Responsible Sourcing of Materials',
                'content_2_content' => 'Designing product by using materials from responsible source, all our paperboard is sourced from Forest Stewardship Council&reg; (FSC&reg;) certified forests and other controlled sources',
            ];

            $id=[
                'description' => ucwords($brand_name).' berkomitmen untuk membawa keberlanjutan usaha menuju Circular Economy melalui kerjasama dengan mitra industri untuk memastikan solusi pengumpulan dan daur ulang kemasan karton bekas minuman tersedia untuk setiap bagian dari kemasan Tetra Pak, dan secara substansial meningkatkan penggunaan bahan baku terbarukan serta potensinya dalam menggunakan plastik atau kertas daur ulang setelah tervalidasi sebagai bahan aman dan legal diterima untuk food grade',
                'content_1_title' => 'Meningkatkan Daur Ulang',
                'content_1_content' => 'Daur ulang membantu menjaga bahan berharga dalam perekonomian. Dengan berkolaborasi bersama mitra, kami ingin meningkatkan tingkat daur ulang produk kami dan menjaga komitmen kami terhadap circular economy.',
                'content_2_title' => 'Sumber Material yang Bertanggung Jawab',
                'content_2_content' => 'Merancang produk dengan menggunakan bahan dari sumber daya terbarukan yang bertanggung jawab. Semua kertas karton Tetra Pak bersumber dari hutan tersertifikasi Forest Stewardship Council&reg; (FSC&reg;) dan sumber terkontrol lainnya',
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
                [
                    'story_bg' => base_url('assets/img/bg/brands/tetrapak/Hasil_Key_Chain.jpg'),
                ],
                [
                    'story_bg' => base_url('assets/img/bg/brands/tetrapak/Hasil_Note_Book.jpg'),
                ],
                [
                    'story_bg' => base_url('assets/img/bg/brands/tetrapak/Hasil_Rumah_Baca_1.jpg'),
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
                    <a target="_blank" class="btn btn-info g-color-white g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9 g-mb-30" href="http://tetrapak.com/id/about/tetra-pak-indo"> <?php echo lang('learn_more') ?> <i class="fa fa-chevron-circle-right ml-3"></i></a>
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

    </div>

</div>
