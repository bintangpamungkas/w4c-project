
<!-- Blog Grid Blocks -->
<section class="g-bg-white dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
    <div class="divimage dzsparallaxer--target w-100 d-none" style="height: 130%; background-image: url(<?= base_url('assets/img/bg/img36.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
    <div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-25' : 'g-py-140' ?>">
        <div class="text-center g-mb-50">
            <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-24' : '' ?>"><?= strtoupper(lang('about_what_we_do')) ?></h2>
            <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
            <p class="text-muted d-none">Waste4Change is a social enterprise that provide waste management services from upstream to downstream.</p>
        </div>

        <?php
        $targets=[
            [
                '4c_title' => 'Individual',
                '4c_icon' => 'et-icon-profile-male',
                '4c_number' => 1,
                '4c_content' => 'We give consultation based on in depth research and training about responsible waste management',
                '4c_list' => [
                    [
                        '4c_list_title' => 'Feasibility Study',
                        '4c_list_content' => 'We perform in depth research about your existing waste management and summarize it in a report.',
                        '4c_list_recomendation' => ['Corporation'],
                    ],
                    [
                        '4c_list_title' => '3R Program',
                        '4c_list_content' => 'We create a 3R program in community or schools in terms of your corporate social responsibility and business sustainibility.',
                        '4c_list_recomendation' => ['Corporation'],
                    ],
                ],
            ],
            [
                '4c_title' => 'Corporate',
                '4c_icon' => 'icon-real-estate-066 u-line-icon-pro',
                '4c_number' => 2,
                '4c_content' => 'We educate Company, Residences, School, and Community about the importance of responsible waste management.',
                '4c_list' => [
                    [
                        '4c_list_title' => 'Event Waste Management',
                        '4c_list_content' => 'Collaborate your events with us and get responsible waste management during the event. No more dirty & messy after the event.',
                        '4c_list_recomendation' => ['Event Organizer'],
                    ],
                    [
                        '4c_list_title' => 'Edukasi Bijak Sampah (EDUBIS)',
                        '4c_list_content' => 'EDUBIS is a program designed by Waste4Change in order to educate Company, School, and Community about importance of Responsible Waste Management.',
                        '4c_list_recomendation' => ['Management', 'Staff'],
                    ],
                    [
                        '4c_list_title' => 'Akademi Bijak Sampah (AKABIS)',
                        '4c_list_content' => 'AKABIS is another program created to educate about responsible waste management with deeper and self experience approach.',
                        '4c_list_recomendation' => ['Company Champion Team', 'Environmental Agent Candidate', 'Government Employee'],
                    ],
                ],
            ],
        ]
        ?>

        <?php
        if(!$this->agent->is_mobile()):
            ?>
            <div class="g-bg-white g-rounded-7" style="box-shadow: 0 0 20px rgba(0, 0, 0, 0.1)">
                <!-- Nav tabs -->
                <ul class="nav nav-justified u-nav-v4-1 u-nav-primary" role="tablist" data-target="nav-4-1-primary-hor-justified" data-tabs-mobile-type="slide-up-down" data-btn-classes="btn btn-md btn-block u-btn-outline-primary">
                    <?php
                    foreach ($targets as $target):
                        ?>
                        <li class="nav-item">
                            <a class="nav-link g-pt-15 g-pb-10 g-font-size-18 <?= $target['4c_number']==1 ? 'active' : '' ?>" data-toggle="tab" href="#nav-4-1-accordion-default-hor-left-big-icons--<?= $target['4c_number'] ?>" role="tab" style="<?= $target['4c_number']==1 ? 'border-top-left-radius: 8px;border-width: 8px 0 1px 0;' : ($target['4c_number']==count($targets) ? 'border-top-right-radius: 8px;border-width: 8px 0 1px 0;' : '') ?>">
                                <i class="<?= $target['4c_icon'] ?> g-mr-10 g-font-size-22"></i><?= strtoupper($target['4c_title']) ?>
                            </a>
                        </li>
                        <?php
                    endforeach;
                    ?>
                </ul>
                <!-- End Nav tabs -->

                <!-- Tab panes -->
                <div id="nav-4-1-accordion-default-hor-left-big-icons" class="g-px-30 g-py-30 tab-content">
                    <?php
                    foreach ($targets as $target):
                        ?>
                        <div class="tab-pane custom-tab fade show<?= $target['4c_number']==1 ? ' active' : '' ?>" id="nav-4-1-accordion-default-hor-left-big-icons--<?= $target['4c_number'] ?>" role="tabpanel" aria-expanded="<?= $target['4c_number']==1 ? 'true' : 'false' ?>">
                            <?php
                            if($target['4c_number']==1){
                                $services = [
                                    [
                                        'testi_name' => 'Send Your Waste',
                                        'testi_company' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                                        'testi_photo' => '3.jpg',
                                        'testi_description' => 'Report dari Waste4Change sangat membantu kami untuk memperbaiki sistem komunikasi dan edukasi kami pada karyawan',
                                    ],
                                    [
                                        'testi_name' => 'Drop Box',
                                        'testi_company' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                                        'testi_photo' => '2.jpg',
                                        'testi_description' => 'Report dari Waste4Change sangat membantu kami untuk memperbaiki sistem komunikasi dan edukasi kami pada karyawan',
                                    ],
                                    [
                                        'testi_name' => 'Waste Management',
                                        'testi_company' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                                        'testi_photo' => '1.jpg',
                                        'testi_description' => 'Report dari Waste4Change sangat membantu kami untuk memperbaiki sistem komunikasi dan edukasi kami pada karyawan',
                                    ],
                                ];
                            }
                            else if($target['4c_number']==2){
                                $services = [
                                    [
                                        'testi_name' => 'Send Your Waste',
                                        'testi_company' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                                        'testi_photo' => '3.jpg',
                                        'testi_description' => 'Report dari Waste4Change sangat membantu kami untuk memperbaiki sistem komunikasi dan edukasi kami pada karyawan',
                                    ],
                                    [
                                        'testi_name' => 'Drop Box',
                                        'testi_company' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                                        'testi_photo' => '2.jpg',
                                        'testi_description' => 'Report dari Waste4Change sangat membantu kami untuk memperbaiki sistem komunikasi dan edukasi kami pada karyawan',
                                    ],
                                    [
                                        'testi_name' => 'Waste Management',
                                        'testi_company' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                                        'testi_photo' => '1.jpg',
                                        'testi_description' => 'Report dari Waste4Change sangat membantu kami untuk memperbaiki sistem komunikasi dan edukasi kami pada karyawan',
                                    ],
                                ];
                            }
                            ?>
                            <div class="row">
                                <div class="col-md-4"></div>
                                <div class="col-md-8 g-pt-20">


                                    <div class="shortcode-html">
                                        <div class="dzsparallaxer auto-init height-is-based-on-content use-loading g-bg-cover g-bg-black-opacity-0_7--after">
                                            <div class="divimage dzsparallaxer--target w-100" style="height: 140%; background-image: url(../../assets/img-temp/1500x1000/img1.jpg);"></div>
                                            <div class="container g-z-index-1 g-py-120">
                                                <div class="js-carousel" data-infinite="true" data-slides-show="3" data-slides-scroll="3" data-arrows-classes="u-arrow-v1 g-width-40 g-height-40 g-brd-1 g-brd-style-solid g-brd-white g-brd-primary--hover g-bg-white g-color-black g-bg-primary--hover g-color-white--hover g-absolute-centered--y g-bottom-0 rounded" data-arrow-left-classes="fa fa-angle-left g-left-0" data-arrow-right-classes="fa fa-angle-right g-right-0">
                                                    <div class="js-slide g-px-15">
                                                        <!-- Testimonials Advanced -->
                                                        <article class="g-bg-cyan-gradient-opacity-v1 g-pa-5">
                                                            <div class="g-pa-30">
                                                                <header class="g-mb-20">
                                                                    <h3 class="h4 g-color-white g-mb-0">Alex Peterson</h3>
                                                                    <em class="d-block g-color-white-opacity-0_7 g-font-style-normal g-font-size-12 text-uppercase">Google Inc.</em>
                                                                </header>

                                                                <blockquote class="lead g-color-white g-mb-25">Your customer support is the best I have experienced with any theme I have purchased. You have a theme that far exceeds all others.</blockquote>
                                                                <em class="d-block g-color-white-opacity-0_7 g-font-style-normal g-font-size-12 text-uppercase">Support</em>

                                                                <div class="js-rating align-self-center g-color-white" data-rating="5" data-spacing="2" data-backward-icons-classes="fa fa-star"></div>
                                                            </div>
                                                        </article>
                                                        <!-- End Testimonials Advanced -->
                                                    </div>

                                                    <div class="js-slide g-px-15">
                                                        <!-- Testimonials Advanced -->
                                                        <article class="g-bg-cyan-gradient-opacity-v1 g-pa-5">
                                                            <div class="g-pa-30">
                                                                <header class="g-mb-20">
                                                                    <h3 class="h4 g-color-white g-mb-0">Emma Watson</h3>
                                                                    <em class="d-block g-color-white-opacity-0_7 g-font-style-normal g-font-size-12 text-uppercase">Apple Inc.</em>
                                                                </header>

                                                                <blockquote class="lead g-color-white g-mb-25">Dear Htmlstream Inc., I just bought the Unify template some weeks ago. The template is really nice and offers quite a large set of options.</blockquote>
                                                                <em class="d-block g-color-white-opacity-0_7 g-font-style-normal g-font-size-12 text-uppercase">Design</em>

                                                                <div class="js-rating align-self-center g-color-white" data-rating="5" data-spacing="2" data-backward-icons-classes="fa fa-star"></div>
                                                            </div>
                                                        </article>
                                                        <!-- End Testimonials Advanced -->
                                                    </div>

                                                    <div class="js-slide g-px-15">
                                                        <!-- Testimonials Advanced -->
                                                        <article class="g-bg-cyan-gradient-opacity-v1 g-pa-5">
                                                            <div class="g-pa-30">
                                                                <header class="g-mb-20">
                                                                    <h3 class="h4 g-color-white g-mb-0">Leyla Mour</h3>
                                                                    <em class="d-block g-color-white-opacity-0_7 g-font-style-normal g-font-size-12 text-uppercase">Microsoft Inc.</em>
                                                                </header>

                                                                <blockquote class="lead g-color-white g-mb-25">Hi there purchased a couple of days ago and the site looks great, big thanks to the htmlstream guys, they gave me some great help.</blockquote>
                                                                <em class="d-block g-color-white-opacity-0_7 g-font-style-normal g-font-size-12 text-uppercase">Code</em>

                                                                <div class="js-rating align-self-center g-color-white" data-rating="5" data-spacing="2" data-backward-icons-classes="fa fa-star"></div>
                                                            </div>
                                                        </article>
                                                        <!-- End Testimonials Advanced -->
                                                    </div>

                                                    <div class="js-slide g-px-15">
                                                        <!-- Testimonials Advanced -->
                                                        <article class="g-bg-cyan-gradient-opacity-v1 g-pa-5">
                                                            <div class="g-pa-30">
                                                                <header class="g-mb-20">
                                                                    <h3 class="h4 g-color-white g-mb-0">Alex Peterson</h3>
                                                                    <em class="d-block g-color-white-opacity-0_7 g-font-style-normal g-font-size-12 text-uppercase">Google Inc.</em>
                                                                </header>

                                                                <blockquote class="lead g-color-white g-mb-25">Your customer support is the best I have experienced with any theme I have purchased. You have a theme that far exceeds all others.</blockquote>
                                                                <em class="d-block g-color-white-opacity-0_7 g-font-style-normal g-font-size-12 text-uppercase">Support</em>

                                                                <div class="js-rating align-self-center g-color-white" data-rating="5" data-spacing="2" data-backward-icons-classes="fa fa-star"></div>
                                                            </div>
                                                        </article>
                                                        <!-- End Testimonials Advanced -->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <?php
                    endforeach;
                    ?>
                </div>
                <!-- End Tab panes -->
            </div>
            <?php
        else:
            ?>

            <div id="accordion-07" class="u-accordion u-accordion-color-primary" role="tablist" aria-multiselectable="true" style="box-shadow: 0 0 20px rgba(0, 0, 0, 0.1)">
                <?php
                $number=1;
                $tab=1;
                foreach ($w4c as $target):
                    ?>

                    <div class="card rounded-0 g-brd-none">
                        <div id="accordion-07-heading-<?= $target['4c_number'] ?>" class="u-accordion__header g-pa-0" role="tab">
                            <h5 class="mb-0 text-uppercase g-font-size-default g-font-weight-700 g-pa-20a mb-0">
                                <a class="collapsed d-flex g-color-main g-text-underline--none--hover" href="#accordion-07-body-<?= $target['4c_number'] ?>" data-toggle="collapse" data-parent="#accordion-07" aria-expanded="false" aria-controls="accordion-07-body-<?= $target['4c_number'] ?>">
                              <span class="u-accordion__control-icon g-brd-right g-brd-gray-light-v4 g-color-info text-center g-pa-20">
                                <i class="fa fa-plus"></i>
                                <i class="fa fa-minus"></i>
                              </span>
                                    <span class="g-pa-20">
                                <?= $target['4c_title'] ?>
                              </span>
                                </a>
                            </h5>
                        </div>
                        <div id="accordion-07-body-<?= $target['4c_number'] ?>" class="collapse" role="tabpanel" aria-labelledby="accordion-07-heading-<?= $target['4c_number'] ?>" data-parent="#accordion-07">
                            <div class="u-accordion__body g-bg-gray-light-v5 g-px-20 g-py-20">
                                <?= $target['4c_content'] ?>
                                <ul class="list-unstyled g-mt-20">
                                    <?php
                                    foreach ($target['4c_list'] as $item):
                                        ?>
                                        <li class="d-flex justify-content-start g-brd-around g-brd-gray-light-v4 g-pa-20 g-mb-7">

                                            <div class="align-self-center g-px-10">
                                                <h5 class="h6 g-font-weight-600 g-color-black g-mb-3">
                                                    <span class="g-mr-5"><?= $item['4c_list_title'] ?></span>
                                                </h5>
                                                <p class="m-0"><?= $item['4c_list_content'] ?></p>
                                                <div class="g-mt-10">
                                                    <div class="m-0"><small class="g-mr-10">Recomended for</small>
                                                        <?php
                                                        foreach ($item['4c_list_recomendation'] as $recomendation):
                                                            ?>
                                                            <span class="u-label u-label--sm g-bg-yellow g-rounded-20 g-px-10"><?= $recomendation ?></span>
                                                            <?php
                                                        endforeach;
                                                        ?>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <?php
                                    endforeach;
                                    ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <?php
                endforeach;
                ?>
                <!-- End Card -->
            </div>
            <?php
        endif;
        ?>
    </div>
</section>
