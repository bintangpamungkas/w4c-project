<!-- Sliders -->
<div class="js-carousel" data-infinite="true" data-autoplay="true" data-pagi-classes="u-carousel-indicators-v1 g-absolute-centered--x text-center" <?php if (!$this->agent->is_mobile()) : ?> data-arrows-classes="u-arrow-v1 g-absolute-centered--y g-width-40 g-height-40 u-icon-v3 u-icon-size--md g-bg-white-opacity-0_1 g-bg-white-opacity-0_2--hover g-color-white-opacity-0_6 g-rounded-50x g-font-size-40 g-rounded-50x u-icon-v3" data-arrow-left-classes="icon-arrow-left-circle g-left-40" data-arrow-right-classes="icon-arrow-right-circle g-right-40" <?php endif; ?>>
    <?php foreach ($researchs as $research) : ?>
        <div class="js-slide">
            <a href="<?= site_url('research/' . $research['slug']) ?>" style="text-decoration: none">
                <!-- Banners sliders -->
                <div class="row">
                    <div class="col-lg-12 g-mb-20">
                        <div class="item">
                            <?php if (!$this->agent->is_mobile()) : ?>
                                <article class="row align-items-stretch mx-0">
                                    <!-- Article Image -->
                                    <div class="col-4 my-10 g-width-100x--md g-bg-size-cover" data-bg-img-src="<?= $research['banner']['thumb_image'][$lang] ?>"></div>
                                    <!-- End Article Image -->

                                    <!--Article Content-->
                                    <div class="col-8 px-0 g-bg-size-cover" data-bg-img-src="<?= $research['banner']['large_image'] ?>" style="height: <?= $this->agent->is_mobile() ? '179px' : '294px'; ?>">
                                        <div class="w-100 g-width-100x--md <?= $this->agent->is_mobile() ? 'g-py-25 g-px-25' : 'g-py-45 g-px-25'; ?> ml-auto" style="background: rgba(21, 156, 189, 0.81); height: <?= $this->agent->is_mobile() ? '179px' : '294px'; ?>;">
                                            <div class="g-flex-middle-item">
                                                <h3 class="h3 g-color-white g-font-weight-700 <?= $this->agent->is_mobile() ? 'g-font-size-18' : 'g-font-size-36 g-my-25'; ?> text-uppercase">
                                                    <?= $research['banner']['title'][$lang]['desktop'] ?>
                                                </h3>

                                                <div class="d-sm-flex  <?= $this->agent->is_mobile() ? 'g-mt-25 g-font-size-12' : 'g-mt-55'; ?>">
                                                    <div class="align-self-center">
                                                        <p class="g-color-white-opacity-0_9 mb-0 g-width-80x--md">
                                                            <?= $research['banner']['content'][$lang]['desktop'] ?>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End Article Content -->
                                </article>
                                <!-- End Article -->
                            <?php else : ?>
                                <article class="row align-items-stretch mx-0">
                                    <!--Article Content-->
                                    <div class="col-12 px-0 g-bg-size-cover" data-bg-img-src="<?= $research['banner']['large_image'] ?>" style="height: <?= $this->agent->is_mobile() ? '179px' : '294px'; ?>">

                                        <img class="img-fluid" style="position: absolute; top: 13%;" width="149" height="56" src="<?= $research['banner']['thumb_image'] ?>" alt="">

                                        <div class="w-100 g-width-100x--md <?= $this->agent->is_mobile() ? 'g-py-25 g-pl-165 g-pr-15' : 'g-py-45 g-px-25'; ?> ml-auto" style="background: rgba(21, 156, 189, 0.81); height: <?= $this->agent->is_mobile() ? '179px' : '294px'; ?>;">
                                            <div class="g-flex-middle-item">
                                                <h3 class="h3 g-color-white g-font-weight-700 <?= $this->agent->is_mobile() ? 'g-font-size-18' : 'g-font-size-36 g-my-25'; ?> text-uppercase">
                                                    <?= $research['banner']['title'][$lang]['mobile'] ?>
                                                </h3>

                                                <div class="d-sm-flex  <?= $this->agent->is_mobile() ? 'g-mt-25 g-font-size-12' : 'g-mt-55'; ?>">
                                                    <div class="align-self-center">
                                                        <p class="g-color-white-opacity-0_9 mb-0 g-width-80x--md">
                                                            <?= $research['banner']['content'][$lang]['mobile'] ?>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End Article Content -->
                                </article>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
                <!-- End Banners -->
            </a>
        </div>
    <?php endforeach; ?>
</div>
<!-- End Sliders -->