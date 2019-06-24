<section class="<?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-0' : 'g-pt-100 g-pb-100' ?>">

    <div id="feature" style="height: 10px;position: absolute;width: 80%;margin-top: -200px"></div>

    <div class="container">
        <div class="text-center g-mb-50">
            <h2 class="g-color-black g-font-weight-600 "><?= strtoupper(lang('pricing')) ?></h2>
            <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
        </div>
        <div class="row no-gutters align-items-center justify-content-center">

            <h3 class="col-md-12 text-center g-mb-30">
                PROMO <strike class="text-muted">Rp. 175.000</strike> <strong class="g-color-info">Rp. 125.000 </strong>/ Bulan
            </h3>

            <div class="col-md-4 g-mb-30">
                <!-- Article -->
                <article class="text-center g-brd-around g-color-gray g-brd-gray-light-v5 g-pa-10">
                    <div class="g-bg-gray-light-v5 g-pa-30">
                        <!-- Article Title -->
                        <h4 class="text-uppercase g-color-gray-dark-v3 g-font-weight-500 g-mb-10">Paket 1</h4>
                        <!-- End Article Title -->
                        <em class="g-font-style-normal">6 Bulan</em>

                        <hr class="g-brd-gray-light-v4 g-my-10">

                        <div class="g-color-info g-my-20">
                            <strong class="d-block g-font-size-30 g-line-height-1_2">750.000</strong> Ekonomis
                        </div>

                        <a class="btn btn-md rounded-0 btn-info" href="#"><?= lang('order_now') ?></a>
                    </div>
                </article>
                <!-- End Article -->
            </div>

            <div class="col-md-4 g-mb-30">
                <!-- Article -->
                <article class="text-center g-brd-around g-color-gray g-brd-gray-light-v5 g-pa-10">
                    <div class="g-bg-gray-light-v5 g-pa-30">
                        <!-- Article Title -->
                        <h4 class="text-uppercase g-color-gray-dark-v3 g-font-weight-500 g-mb-10">Paket 2</h4>
                        <!-- End Article Title -->
                        <em class="g-font-style-normal">12 Bulan</em>

                        <hr class="g-brd-gray-light-v4 g-my-10">

                        <div class="g-color-info g-my-20">
                            <strong class="d-block g-font-size-30 g-line-height-1_2">1.275.000</strong> Diskon 15% !!
                        </div>

                        <a class="btn btn-md rounded-0 btn-info" href="#"><?= lang('order_now') ?></a>
                    </div>
                </article>
                <!-- End Article -->
            </div>

        </div>

    </div>
</section>
