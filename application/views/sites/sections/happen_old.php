
<!-- Icon Blocks -->
<section id="what-happen" class="g-bg-gray-light-v5">
    <div class="container g-pt-100 g-pb-130">

        <!-- Icon Blocks -->
        <div class="row no-gutters">
            <div class="col-sm-6 col-lg-3">
                <div class="g-mt-20 <?= $this->agent->is_mobile() ? '' : 'g-pr-40' ?>">
                    <div class="g-mb-30 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
                        <h2 class="h2 g-color-black g-font-weight-600 g-line-height-1_2 mb-4">HASIL DARI
                            <br>
                            DAUR ULANG
                        </h2>
                        <p class="g-font-weight-300 g-font-size-16">The time has come to bring those ideas and plans to life. This is where we really begin to visualize your napkin sketches and make them into beautiful pixels.</p>
                    </div>
                </div>
            </div>

            <div class="col-lg-9">
                <div id="we-provide" class="js-carousel" data-infinite="true" data-slides-show="3" data-slides-scroll="3" data-center-mode="true" data-center-padding="1px" data-pagi-classes="u-carousel-indicators-v1 g-absolute-centered--x g-bottom-minus-30">
                    <?php
                    $x = 1;
                    $number = 1;

                    while($x <= 4) :
                        ?>
                        <div class="js-slide g-color-white--hover">
                            <!-- Icon Blocks -->
                            <div class="u-shadow-v21--hover g-brd-around g-brd-blue g-brd-right-none g-brd-transparent--hover g-bg-blue--hover g-transition-0_3 g-cursor-pointer g-px-30 g-pt-30 g-pb-50 g-ml-minus-1">
                                <div class="mb-4">
                                    <span class="d-block g-font-weight-700 text-right mb-3">0<?= $number++ ?></span>
                                    <span class="u-icon-v3 u-shadow-v1-7 g-bg-white g-color-blue rounded-circle mb-4">
                                        <i class="icon-education-087 u-line-icon-pro"></i>
                                    </span>
                                    <h3 class="h5 g-font-weight-600 mb-3">Creative</h3>
                                    <p>Lorem ipsum, adalah teks standar untuk mendemostrasikan elemen grafis seperti font, tipografi, dan tata letak</p>
                                </div>
                            </div>
                            <!-- End Icon Blocks -->
                        </div>
                        <?php
                        $x++;
                    endwhile;
                    ?>
                </div>
            </div>
        </div>
        <!-- End Icon Blocks -->
    </div>
</section>
<!-- End Icon Blocks -->
