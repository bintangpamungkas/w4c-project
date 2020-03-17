
<section id="join" class="g-pb-50 g-pt-120--lg g-pb-120--lg g-bg-gray-light-v5 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
    <div class="container">

        <div class="text-center g-mb-50 <?= $this->agent->is_mobile() ? 'd-none' : 'd-none' ?>">
            <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= lang('join_title') ?></h2>
            <p class="text-muted"><?= lang('join_subtitle') ?></p>
        </div>

        <!-- Image, Text Block -->
        <div class="row d-flex align-items-lg-center flex-wrap g-mb-0--lg">
            <div class="col-md-6 col-lg-8 <?= $this->agent->is_mobile() ? 'd-none' : '' ?>">
                <img class="img-fluid" src="<?= base_url(DIR_IMG.'bg/send-waste2x.jpg') ?>" alt="Image Description">
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="g-mt-minus-30 g-mt-0--md g-ml-minus-100--lg" style="<?= $this->agent->is_mobile() ? 'margin-top: 20px!important;' : 'margin-top: -60px!important;' ?>">
                    <div class="g-mb-20 g-pt-55">
                        <h2 class="g-color-black g-font-weight-600 g-font-size-25 g-font-size-35--lg g-line-height-1_2 mb-4"><small class="g-color-black-opacity-0_3 <?= $this->agent->is_mobile() ? 'g-font-size-18' : 'g-font-size-22' ?>"><?= lang('join_user_small_title') ?></small><br><?= lang('join_user_title') ?>
                        </h2>
                        <p class="g-font-size-16">
                            <?= lang('join_user_subtitle') ?>
                        </p>
                    </div>


                    <div class="row pt-3 g-ml-minus-5 g-mr-minus-5">
                        <div class="col-12 col-md-6 mb-3 g-px-6">

                            <div class="g-bg-white u-block-hover g-rounded-6 g-brd-around g-brd-gray-light-v4 rounded g-transition-0_3 g-px-20 g-py-20" style="-webkit-box-shadow: 0 5px 25px 1px rgba(0,0,0,0.1);box-shadow: 0 5px 25px 1px rgba(0,0,0,0.1);">
                                <div style="display: inline-flex">
                                    <div class="mr-4" style="min-height: 50px">
                                        <i class="et-icon-gift g-font-size-30 g-color-blue"></i>
                                    </div>
                                    <div class="g-mb-20 g-mt-8">
                                        <h6 class="h6 g-font-weight-600 mb-2 g-color-black">
                                            <small>Send Your Waste</small>
                                        </h6>
                                    </div>
                                </div>
                            </div>
                            <?php
                            $brand=isset($brand_id) ? $brand_id : '';
                            ?>
                            <a class="g-brd-2 g-brd-white-opacity-0_3 btn btn-info g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9" href="<?= (SEND_YOUR_WASTE_URL.'send?brand='.$brand) ?>" style="position: absolute;margin-top: -20px;left: 25px">
                                <?= strtoupper(lang('join_brand_btn_only')) ?>
                                <span class="align-middle u-icon-v3 g-width-16 g-height-16 g-color-black g-bg-white g-font-size-11 rounded-circle ml-3">
                                    <i class="fa fa-angle-right"></i>
                                </span>
                            </a>
                        </div>
                        <div class="col-12 col-md-6 mb-3 g-px-6 <?= $this->agent->is_mobile() ? 'g-mt-35' : '' ?>">

                            <div class="g-bg-white u-block-hover g-rounded-6 g-brd-around g-brd-gray-light-v4 rounded g-transition-0_3 g-px-20 g-py-20" style="-webkit-box-shadow: 0 5px 25px 1px rgba(0,0,0,0.1);box-shadow: 0 5px 25px 1px rgba(0,0,0,0.1);">
                                <div style="display: inline-flex">
                                    <div class="mr-4" style="min-height: 50px">
                                        <i class="icon-electronics-084 u-line-icon-pro g-font-size-30 g-color-blue"></i>
                                    </div>
                                    <div class="g-mb-20 g-mt-8">
                                        <h6 class="h6 g-font-weight-600 mb-2 g-color-black">
                                            <small>Drop Box</small>
                                        </h6>
                                    </div>
                                </div>
                            </div>
                            <a class="g-brd-2 g-brd-white-opacity-0_3 btn btn-info g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9" href="<?= (DROPBOX_URL.'send?brand='.$brand) ?>" style="position: absolute;margin-top: -20px;left: 25px">
                                <?= strtoupper(lang('join_brand_btn_only')) ?>
                                <span class="align-middle u-icon-v3 g-width-16 g-height-16 g-color-black g-bg-white g-font-size-11 rounded-circle ml-3">
                                    <i class="fa fa-angle-right"></i>
                                </span>
                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- End Image, Text Block -->
    </div>

</section>
<!-- End About -->
