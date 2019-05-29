<section class="g-bg-gray-light-v5 dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
    <div class="divimage dzsparallaxer--target w-100 d-none" style="height: 130%; background-image: url(<?= base_url('assets/img/bg/img36.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
    <div class="container <?= $this->agent->is_mobile() ? 'g-pt-75 g-pb-30' : 'g-pt-140 g-pb-70' ?>">
        <div class="text-center g-mb-50">
            <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= strtoupper(lang('blog_title')) ?></h2>
            <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
            <p class="text-muted d-none"><?= lang('brand_partner_subtitle') ?></p>
        </div>

        <?php
        $blog=[
            [
                'blog_title' => 'Program Improvement of Solid Waste Management to Support Regional and Metropolitan Cities',
                'blog_category' => 'WASTE MANAGEMENT',
                'blog_content' => 'The Improvement of Solid Waste Management to Support Regional and Metropolitan Cities Program, or abbreviated as ISWMP, is a program to improve national waste management....',
                'blog_author' => 'Amanda Bahraini',
                'blog_url' => 'https://waste4change.com/program-improvement-of-solid-waste-management-to-support-regional-and-metropolitan-cities/',
                'blog_date' => '8 May',
                'blog_image' => 'https://waste4change.com/wp-content/uploads/citarum.jpg',
            ],
            [
                'blog_title' => 'Waste4Change Supports 3R (Reduce-Reuse-Recycle) Green Concept!',
                'blog_category' => 'WASTE MANAGEMENT',
                'blog_content' => 'Understand the 3R Concept (Reduce-Reuse-Recycle) Basically, the 3R (Reduce-Reuse-Recycle) Concept is a sequence of steps on how to manage waste properly. The top priority is....',
                'blog_author' => 'Amanda Bahraini',
                'blog_url' => 'https://waste4change.com/waste4change-supports-3r-reduce-reuse-recycle-green-concept/',
                'blog_date' => '8 May',
                'blog_image' => 'https://waste4change.com/wp-content/uploads/Waste-Management-Hierarchy-1-580x390.jpg',
            ],
            [
                'blog_title' => 'Pre, During, and After Event Waste Management by Waste4Change',
                'blog_category' => 'WASTE MANAGEMENT',
                'blog_content' => 'Facts About Waste Produced on Holy Day and Big Event In many cities in Indonesia, waste still becomes the main problem that is quite difficult....',
                'blog_author' => 'Amanda Bahraini',
                'blog_url' => 'https://waste4change.com/event-waste-management-by-waste4change/',
                'blog_date' => '8 May',
                'blog_image' => 'https://waste4change.com/wp-content/uploads/298229_620-580x355.jpg',
            ],
        ];
        if(!$this->agent->is_mobile()): ?>
        <div class="row">
            <?php

            foreach ($blog as $x):
                ?>
                <div class="col-lg-4 g-mb-30">
                    <article class="g-bg-white g-rounded-15" style="box-shadow: 0 10px 6px -6px rgba(0, 0, 0, 0.1)">
                        <figure class="g-pos-rel">
                            <div class="img-fluid w-100 g-min-height-200" style="background: url(<?= $x['blog_image'] ?>);background-size: cover"></div>
                            <figcaption class="text-uppercase text-center g-line-height-1_2 g-bg-black-opacity-0_7 g-color-white g-pos-abs g-top-20 g-px-15 g-py-10 d-none">
                                <strong class="d-block"><?= $x['blog_date'] ?></strong>
                            </figcaption>
                        </figure>

                        <div class="g-pa-30">
                            <div style="min-height: 80px" class="d-none">
                                <div class="mb-1">
                                    <small>
                                        <span class="g-color-gray-dark-v4">By</span>
                                        <a class="g-color-info" href="#!"><?= $x['blog_author'] ?></a>
                                    </small>
                                </div>
                                <div class="mb-2">
                                    <small>
                                        <span class="g-color-gray-dark-v4">In</span>
                                        <a class="g-color-info" href="#!"><?= $x['blog_category'] ?></a>
                                    </small>
                                </div>
                            </div>
                            <h3 class="h5 g-mb-15" style="min-height: 80px">
                                <a class="u-link-v5 g-color-gray-dark-v2 g-color-info--hover g-font-weight-700" href="<?= $x['blog_title'] ?>" style="word-wrap: break-word"><?= $x['blog_title'] ?></a>
                            </h3>

                            <div class="g-font-size-13"><?= $x['blog_content'] ?></div>
                            <div style="position: absolute;right: 25px;margin-top: 20px">
                                <a target="_blank" href="<?= $x['blog_url'] ?>" class="btn btn-md btn-info btn-outline-info g-bg-white g-bg-info--hover g-rounded-50 g-mr-10 g-mb-15">Read More</a>
                            </div>

                            <hr class="g-brd-gray-light-v4 g-my-40">

                        </div>
                    </article>
                </div>
            <?php endforeach; ?>
        </div>

        <?php else: ?>

        <div class="clearfix">
            <div id="blog-carousel" class="row owl-theme" style="margin: 0 0 30px 0!important;">
                <?php

                $number = 1;

                foreach($blog as $x) :
                    ?>
                    <article class="g-bg-white g-rounded-15" style="box-shadow: 0 10px 6px -6px rgba(0, 0, 0, 0.1)">
                        <figure class="g-pos-rel">
                            <div class="img-fluid w-100 g-min-height-200" style="background: url(<?= $x['blog_image'] ?>);background-size: cover"></div>
                            <figcaption class="text-uppercase text-center g-line-height-1_2 g-bg-blue-opacity-0_7 g-color-white g-pos-abs g-top-20 g-px-15 g-py-10">
                                <strong class="d-block"><?= $x['blog_date'] ?></strong>
                            </figcaption>
                        </figure>

                        <div class="g-pa-30">
                            <div style="min-height: 80px" class="d-none">
                                <div class="mb-1">
                                    <small>
                                        <span class="g-color-gray-dark-v4">By</span>
                                        <a class="g-color-info" href="#!"><?= $x['blog_author'] ?></a>
                                    </small>
                                </div>
                                <div class="mb-2">
                                    <small>
                                        <span class="g-color-gray-dark-v4">In</span>
                                        <a class="g-color-info" href="#!"><?= $x['blog_category'] ?></a>
                                    </small>
                                </div>
                            </div>
                            <h3 class="h5 g-mb-15" style="min-height: 80px">
                                <a class="u-link-v5 g-color-gray-dark-v2 g-color-info--hover g-font-weight-700" href="<?= $x['blog_title'] ?>" style="word-wrap: break-word"><?= $x['blog_title'] ?></a>
                            </h3>

                            <div class="g-font-size-13"><?= $x['blog_content'] ?></div>
                            <div style="position: absolute;right: 25px;margin-top: 20px">
                                <a target="_blank" href="<?= $x['blog_url'] ?>" class="btn btn-md btn-info btn-outline-info g-bg-white g-bg-info--hover g-rounded-50 g-mr-10 g-mb-15">Read More</a>
                            </div>
                            <hr class="g-brd-gray-light-v4 g-my-40">

                        </div>
                    </article>
                    <?php
                endforeach;
                ?>
            </div>

            <script>
                $(window).load(function () {
                    var element_id='#blog-carousel';
                    $(element_id).owlCarousel({
                        loop:true,
                        margin:30,
                        dots:<?= !$this->agent->is_mobile() && count($xb)<3 ? 'false' : 'true' ?>,
                        nav:true,
                        autoplay:true,
                        autoplayTimeout:1500,
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
                    $(element_id+' .owl-controls').attr('style', 'margin-top: 30px;');

                    var screen_display=<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                    console.log(screen_display);
                    var margin_side=(screen_display-screen_display*(<?= $this->agent->is_mobile() ? '60' : '96' ?>)/100)/2;
                    console.log('screen : '+screen_display+'nav : '+screen_display*<?= $this->agent->is_mobile() ? '8' : '9' ?>0/100+'batas : '+margin_side);
                    <?php
                    if($this->agent->is_mobile()){
                        echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 186px;width: 68%;right: '+margin_side+'px;')";
                    }else{
                        echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 200px;width: 99%;right: '+margin_side+'px;')";
                    }
                    ?>
                });

            </script>
        </div>

        <?php endif; ?>

        <div class="text-center g-mb-50 <?= $this->agent->is_mobile() ? 'g-pt-5' : 'g-pt-40' ?>">
            <div class="row justify-content-center">
                <div class="col-md-5 text-muted">
                    <p class="<?= $this->agent->is_mobile() ? 'g-font-size-12' : '' ?>">
                        <?= (lang('blog_cta_description')) ?>
                    </p>
                    <br>
                    <a target="_blank" class="btn btn-info g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9 text-uppercase" href="http://waste4change.com/blog">
                        <?= strtoupper(lang('blog_cta_link')) ?>
                        <span class="align-middle u-icon-v3 g-width-16 g-height-16 g-color-black g-bg-white g-font-size-11 rounded-circle ml-2">
                          <i class="fa fa-share g-color-info"></i>
                        </span>
                    </a>
                </div>
            </div>
        </div>

    </div>
</section>
