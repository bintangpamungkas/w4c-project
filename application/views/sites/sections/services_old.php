
<section id="our_services" class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
    <div class="divimage dzsparallaxer--target w-100" style="height: 130%; background-image: url(<?= base_url('assets/img/bg/about_us_video_cover.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
    <div style="background:radial-gradient(circle farthest-side at 80% 60%, rgba(248,248,248,0.67), rgba(248,248,248,0.92));">
        <div class="container g-pt-140 g-pb-50">
        <div class="row">
            <div class="col-md-12 text-center g-mb-50">
                <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-24' : '' ?>"><?= strtoupper(lang('services_title')) ?></h2>
                <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
                <p class="text-muted d-none"><?= lang('brand_partner_subtitle') ?></p>
            </div>

            <div class="col-md-12">
                <?php if(!$this->agent->is_mobile()): ?>
                    <script>
                        $(document).on('mouseover', '.item-program', function () {
                            var this_id='#'+$(this).attr('id');
                            //console.log(this_id);
                            $('.btn-section-program').addClass('d-none').addClass('animated');
                            $(this_id+' .btn-section-program').removeClass('d-none').removeClass('animated');
                        });
                        $(document).on('mouseout', '.item-program', function () {
                            //var this_id='#'+$(this).attr('id');
                            //console.log(this_id);
                            //$(this_id+' .btn-section-program').addClass('d-none');
                            $('.btn-section-program').addClass('d-none');
                        });
                    </script>
                <?php endif; ?>
                <div class="row g-mb-50">
                    <div class="col-md-4 item-program g-mb-100" id="program-1">
                        <!-- Icon Blocks -->
                        <div class="shadow-hover-paper-1 g-rounded-5 g-bg-white g-brd-around g-brd-transparent--hover g-bg-white--hover g-transition-0_3 g-cursor-pointer g-px-30 g-pt-30 g-pb-50" style="box-shadow: 0 5px 10px 0 rgba(0,0,0,0.05)">
                            <span class="d-inline-block u-icon-v4 u-icon-v4-rounded-50x u-icon-size--xl g-color-white g-color-white--hover g-mb-20" style="position:absolute;margin-top: -85px;border: solid 1px #1eabb8;">
                                <span class="u-icon-v4-inner" style="background: linear-gradient(to bottom, rgb(23, 162, 184) 5%, rgba(69, 236, 174, 0.9) 100%);">
                                    <i class="et-icon-recycle u-line-icon-pro"></i>
                                </span>
                            </span>
                            <h3 class="h5 g-color-black g-font-weight-600 mb-3 g-mt-50" style="min-height: 50px">Send Your Waste</h3>
                            <p class="g-color-gray-dark-v4" style="<?= $this->agent->is_mobile() ? '' : 'min-height: 160px' ?>"><?= lang('services_send_your_waste') ?></p>
                            <a target="_blank" class="btn btn-info g-color-white g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9" href="<?= SEND_YOUR_WASTE_URL ?>" style="position: absolute;margin-top: 30px;right: 35px;">
                                <?= strtoupper(lang('learn_more')) ?> <i class="fa fa-chevron-circle-right ml-2"></i>
                            </a>
                        </div>
                        <!-- End Icon Blocks -->
                    </div>

                    <div class="col-md-4 item-program g-mb-100" id="program-2">
                        <!-- Icon Blocks -->
                        <div class="shadow-hover-paper-1 g-rounded-5 g-bg-white g-brd-around g-brd-transparent--hover g-bg-white--hover g-transition-0_3 g-cursor-pointer g-px-30 g-pt-30 g-pb-50  g-ml-minus-1" style="box-shadow: 0 5px 10px 0 rgba(0,0,0,0.05)">
                            <span class="d-inline-block u-icon-v4 u-icon-v4-rounded-50x u-icon-size--xl g-color-white g-color-white--hover g-mb-20" style="position:absolute;margin-top: -85px;border: solid 1px #1eabb8;">
                                <span class="u-icon-v4-inner" style="background: linear-gradient(to bottom, rgb(23, 162, 184) 5%, rgba(69, 236, 174, 0.9) 100%);">
                                    <i class="et-icon-recycle u-line-icon-pro"></i>
                                </span>
                            </span>
                            <h3 class="h5 g-color-black g-font-weight-600 mb-3 g-mt-50" style="min-height: 50px">Dropping Box</h3>
                            <p class="g-color-gray-dark-v4" style="<?= $this->agent->is_mobile() ? '' : 'min-height: 160px' ?>"><?= lang('services_dropbox') ?></p>
                            <a target="_blank" class="btn btn-info g-color-white g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9" href="<?= DROPBOX_URL ?>" style="position: absolute;margin-top: 30px;right: 35px;">
                                <?= strtoupper(lang('learn_more')) ?> <i class="fa fa-chevron-circle-right ml-2"></i>
                            </a>
                        </div>
                        <!-- End Icon Blocks -->
                    </div>

                    <div class="col-md-4 item-program g-mb-100" id="program-3">
                        <!-- Icon Blocks -->
                        <div class="shadow-hover-paper-1 g-rounded-5 g-bg-white g-brd-around g-brd-transparent--hover g-bg-white--hover g-transition-0_3 g-cursor-pointer g-px-30 g-pt-30 g-pb-50  g-ml-minus-1" style="box-shadow: 0 5px 10px 0 rgba(0,0,0,0.05)">
                            <span class="d-inline-block u-icon-v4 u-icon-v4-rounded-50x u-icon-size--xl g-color-white g-color-white--hover g-mb-20" style="position:absolute;margin-top: -85px;border: solid 1px #1eabb8;">
                                <span class="u-icon-v4-inner" style="background: linear-gradient(to bottom, rgb(23, 162, 184) 5%, rgba(69, 236, 174, 0.9) 100%);">
                                    <i class="et-icon-recycle u-line-icon-pro"></i>
                                </span>
                            </span>
                            <h3 class="h5 g-color-black g-font-weight-600 mb-3 g-mt-50" style="min-height: 50px">Responsible<br>Waste Management</h3>
                            <p class="g-color-gray-dark-v4" style="<?= $this->agent->is_mobile() ? '' : 'min-height: 160px' ?>"><?= lang('services_waste_management') ?></p>
                            <a class="btn btn-info g-color-white g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9" href="<?= site_url('service/join?service=3') ?>" style="position: absolute;margin-top: 30px;right: 35px;">
                                <?= strtoupper(lang('learn_more')) ?> <i class="fa fa-chevron-circle-right ml-2"></i>
                            </a>
                        </div>
                        <!-- End Icon Blocks -->
                    </div>

                </div>
            </div>
        </div>
    </div>
    </div>
</section>

