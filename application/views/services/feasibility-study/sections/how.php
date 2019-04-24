
<!-- Mockup Block -->
<section class="g-bg-secondary <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-py-140' ?>">

    <div id="how" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>

    <div class="container">
        <div class="text-center g-mb-50">
            <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= lang('hiw_title') ?></h2>
            <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
        </div>

        <?php
        if($this->agent->is_mobile()){
            ?>
            <div>
                <article class="g-transition-0_3">
                    <div class="g-color-black g-bg-white--hover g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 30px 0 0 0!important;">
                        <div class="row g-mb-10">
                            <div class="col-5">
                                <img class="img-fluid g-ml-10" src="<?= base_url('assets/img/icons/hiw/blue/hiw_1.png') ?>" alt="Image Description" style="max-height: 100px">
                            </div>
                            <div class="col-7 g-pt-10">
                                <h2 class="h5 g-color-black g-font-weight-600 mb-4" style="margin-bottom: 5px!important;">
                                    <?= lang('hiw_1') ?>
                                </h2>
                                <p class="text-muted g-font-size-12">
                                    <?= lang('hiw_1_description') ?>
                                </p>
                            </div>
                        </div>
                    </div>
                </article>
                <div style="background-color: #e2e2e2;height: 50px;width: 2px;margin-left: 20%;"></div>
                <article class="g-transition-0_3">
                    <div class="g-color-black g-bg-white--hover g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 0!important;">
                        <div class="row g-mb-10">
                            <div class="col-5">
                                <img class="img-fluid g-ml-10" src="<?= base_url('assets/img/icons/hiw/blue/hiw_2.png') ?>" alt="Image Description" style="max-height: 100px">
                            </div>
                            <div class="col-7 g-pt-10">
                                <h2 class="h5 g-color-black g-font-weight-600 mb-4" style="margin-bottom: 5px!important;">
                                    <?= lang('hiw_2') ?>
                                </h2>
                                <p class="text-muted g-font-size-12">
                                    <?= lang('hiw_2_description') ?>
                                </p>
                            </div>
                        </div>
                    </div>
                </article>
                <div style="background-color: #e2e2e2;height: 50px;width: 2px;margin-left: 20%;"></div>
                <article class="g-transition-0_3">
                    <div class="g-color-black g-bg-white--hover g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 0!important;">
                        <div class="row g-mb-10">
                            <div class="col-5">
                                <img class="img-fluid g-ml-10" src="<?= base_url('assets/img/icons/hiw/blue/hiw_3.png') ?>" alt="Image Description" style="max-height: 100px">
                            </div>
                            <div class="col-7 g-pt-10">
                                <h2 class="h5 g-color-black g-font-weight-600 mb-4" style="margin-bottom: 5px!important;">
                                    <?= lang('hiw_3') ?>
                                </h2>
                                <p class="text-muted g-font-size-12">
                                    <?= lang('hiw_3_description') ?>
                                </p>
                            </div>
                        </div>
                    </div>
                </article>
                <div style="background-color: #e2e2e2;height: 50px;width: 2px;margin-left: 20%;"></div>
                <article class="g-transition-0_3">
                    <div class="g-color-black g-bg-white--hover g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 0!important;">
                        <div class="row g-mb-10">
                            <div class="col-5">
                                <img class="img-fluid g-ml-10" src="<?= base_url('assets/img/icons/hiw/blue/hiw_4.png') ?>" alt="Image Description" style="max-height: 100px">
                            </div>
                            <div class="col-7 g-pt-10">
                                <h2 class="h5 g-color-black g-font-weight-600 mb-4" style="margin-bottom: 5px!important;">
                                    <?= lang('hiw_4') ?>
                                </h2>
                                <p class="text-muted g-font-size-12">
                                    <?= lang('hiw_4_description') ?>
                                </p>
                            </div>
                        </div>
                    </div>
                </article>
                <div style="background-color: #e2e2e2;height: 50px;width: 2px;margin-left: 20%;"></div>
                <article class="g-transition-0_3">
                    <div class="g-color-black g-bg-white--hover g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 0!important;">
                        <div class="row g-mb-10">
                            <div class="col-5">
                                <img class="img-fluid g-ml-10" src="<?= base_url('assets/img/icons/hiw/blue/hiw_5.png') ?>" alt="Image Description" style="max-height: 100px">
                            </div>
                            <div class="col-7 g-pt-10">
                                <h2 class="h5 g-color-black g-font-weight-600 mb-4" style="margin-bottom: 5px!important;">
                                    <?= lang('hiw_5') ?>
                                </h2>
                                <p class="text-muted g-font-size-12">
                                    <?= lang('hiw_5_description') ?>
                                </p>
                            </div>
                        </div>
                    </div>
                </article>
            </div>
            <?php
        }else{
            ?>
            <div>

                <div class="row justify-content-center">

                    <div class="col-md-3">
                        <article class="g-transition-0_3">
                            <div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 30px 0 0 0!important;">
                                <img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= base_url('assets/img/icons/hiw/blue/hiw_1.png') ?>" alt="Image Description" style="width: 60%">
                                <div class="g-pa-15">

                                    <h2 class="h5 g-color-black g-font-weight-600 mb-4" style="margin-bottom: 5px!important;">
                                        <?= lang('hiw_1') ?>
                                    </h2>
                                    <p class="text-muted">
                                        <?= lang('hiw_1_description') ?>
                                    </p>
                                </div>
                            </div>
                        </article>
                    </div>

                    <div class="col-md-3 <?= $this->agent->is_mobile() ? 'mb-5' :'' ?>">
                        <article class="g-transition-0_3">
                            <div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 30px 0 0 0!important;">
                                <img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= base_url('assets/img/icons/hiw/blue/hiw_2.png') ?>" alt="Image Description" style="width: 60%">
                                <div class="g-pa-15">

                                    <h2 class="h5 g-color-black g-font-weight-600 mb-4" style="margin-bottom: 5px!important;">
                                        <?= lang('hiw_2') ?>
                                    </h2>
                                    <p class="text-muted">
                                        <?= lang('hiw_2_description') ?>
                                    </p>
                                </div>
                            </div>
                        </article>
                    </div>

                    <div class="col-md-3 <?= $this->agent->is_mobile() ? 'mb-5' :'' ?>">
                        <article class="g-transition-0_3">
                            <div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 30px 0 0 0!important;">
                                <img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= base_url('assets/img/icons/hiw/blue/hiw_3.png') ?>" alt="Image Description" style="width: 60%">
                                <div class="g-pa-15">

                                    <h2 class="h5 g-color-black g-font-weight-600 mb-4" style="margin-bottom: 5px!important;">
                                        <?= lang('hiw_3') ?>
                                    </h2>
                                    <p class="text-muted">
                                        <?= lang('hiw_3_description') ?>
                                    </p>
                                </div>
                            </div>
                        </article>
                    </div>

                </div>
                <div class="row justify-content-center">

                    <div class="col-md-3 mb-5">
                        <article class="g-transition-0_3">
                            <div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 30px 0 0 0!important;">
                                <img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= base_url('assets/img/icons/hiw/blue/hiw_4.png') ?>" alt="Image Description" style="width: 60%">
                                <div class="g-pa-15">

                                    <h2 class="h5 g-color-black g-font-weight-600 mb-4" style="margin-bottom: 5px!important;">
                                        <?= lang('hiw_4') ?>
                                    </h2>
                                    <p class="text-muted">
                                        <?= lang('hiw_4_description') ?>
                                    </p>
                                </div>
                            </div>
                        </article>
                    </div>

                    <div class="col-md-3 mb-5">
                        <article class="g-transition-0_3">
                            <div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 30px 0 0 0!important;">
                                <img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= base_url('assets/img/icons/hiw/blue/hiw_5.png') ?>" alt="Image Description" style="width: 60%">
                                <div class="g-pa-15">

                                    <h2 class="h5 g-color-black g-font-weight-600 mb-4" style="margin-bottom: 5px!important;">
                                        <?= lang('hiw_5') ?>
                                    </h2>
                                    <p class="text-muted">
                                        <?= lang('hiw_5_description') ?>
                                    </p>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>

            </div>
            <?php
        }
        ?>
    </div>
</section>
<!-- End Mockup Block -->
