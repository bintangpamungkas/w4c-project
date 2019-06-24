
<section id="program" style="background-color: #f8f8f8">
    <div class="divimage dzsparallaxer--target w-100 d-none" style="height: 110%; transform: translate3d(0px, -48.5814px, 0px);"></div>
    <div class="container g-pt-50 g-pb-0 g-pt-140--lg g-pb-70--lg">
        <div class="row">
            <div class="col-md-3">
                <div class="<?= $this->agent->is_mobile() ? '' : 'g-pr-40' ?>">
                    <br>
                    <div class="g-mb-30 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
                        <h2 class="g-color-black g-font-weight-600 g-line-height-1_2 mb-4 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?> text-uppercase">
                            <?= lang('program_brand_title') ?>
                        </h2>
                        <?= $this->agent->is_mobile() ? '<hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">' : '<div class="g-width-70 g-brd-bottom g-brd-2 g-brd-blue mb-4"></div>' ?>
                        <p class="g-font-weight-300 text-muted <?= $this->agent->is_mobile() ? 'g-font-size-14' : 'g-font-size-16' ?>">
                            <?= ucwords($brand_name) ?>
                            <?php
                            $subtitle_id='melakukan aksi nyata dalam upaya pengelolaan kemasan karton bekas minuman secara bertanggung jawab dan berkelanjutan melalui program pengumpulan bersama Waste4Change dan memastikan daur ulang bersama mitra pendaur';
                                $subtitle_en='take a real action to manage all components of beverage cartons in responsible and sustainable way through the Waste4Change collection program and ensure the recyling with our patners';
                                if($this->session->userdata('language')=='en'){
                                    $subtitle=$subtitle_en;
                                }else{
                                    $subtitle=$subtitle_id;
                                }
                            ?>
                            <?= $subtitle ?>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
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
                <div class="row <?= $this->agent->is_mobile() ? '' : 'g-mb-50 g-bg-white' ?>" style="<?= $this->agent->is_mobile() ? '' : 'box-shadow: 0 5px 10px 0 rgba(0,0,0,0.05)' ?>">
                    <div class="col-md-6 <?= $this->agent->is_mobile() ? 'mb-5' : 'g-pl-0' ?> item-program" id="program-1">
                        <!-- Icon Blocks -->
                        <div class="shadow-hover-paper-1 g-bg-white g-brd-around g-brd-transparent--hover g-bg-white--hover g-transition-0_3 g-cursor-pointer g-px-30 g-pt-30 g-pb-50" style="<?= $this->agent->is_mobile() ? 'box-shadow: 0 5px 10px 0 rgba(0,0,0,0.05)' : '' ?>">
                            <span class="u-icon-v3 u-shadow-v24 g-bg-white g-color-blue rounded-circle mb-4" style="border: 1px solid #0babce;">
                                <i class="et-icon-recycle"></i>
                            </span>
                            <h3 class="h5 g-color-black g-font-weight-600 mb-3">Send Your Waste</h3>
                            <p class="g-color-gray-dark-v4" style="min-height: 120px"><?= lang('services_send_your_waste') ?></p>
                            <a class="d-none btn btn-info g-color-white g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9" href="<?= (SEND_YOUR_WASTE_URL.'send?brand='.$brand_id) ?>" style="position: absolute;margin-top: 30px;right: 35px;">
                                <?= lang('brand_partner_join') ?> <i class="fa fa-chevron-circle-right ml-2"></i>
                            </a>
                            <a class="g-color-info g-color-blue--hover g-font-size-12 g-mt-10" target="_blank" href="<?= (SEND_YOUR_WASTE_URL) ?>"><?= strtoupper(lang('learn_more')) ?> <i class="fa fa-chevron-right g-ml-10"></i> </a>
                        </div>
                        <!-- End Icon Blocks -->
                    </div>

                    <div class="col-md-6 <?= $this->agent->is_mobile() ? 'mb-5' : 'g-px-0' ?> item-program" id="program-2">
                        <!-- Icon Blocks -->
                        <div class="shadow-hover-paper-1 g-bg-white g-brd-around g-brd-transparent--hover g-bg-white--hover g-transition-0_3 g-cursor-pointer g-px-30 g-pt-30 g-pb-50  g-ml-minus-1" style="<?= $this->agent->is_mobile() ? 'box-shadow: 0 5px 10px 0 rgba(0,0,0,0.05)' : '' ?>">
                            <span class="u-icon-v3 u-shadow-v24 g-bg-white g-color-blue rounded-circle mb-4" style="border: 1px solid #0babce;">
                                <i class="et-icon-recycle"></i>
                            </span>
                            <h3 class="h5 g-color-black g-font-weight-600 mb-3">Dropping Box</h3>
                            <p class="g-color-gray-dark-v4" style="min-height: 120px"><?= lang('services_dropbox_tetrapak') ?></p>
                            <a class="g-color-info g-color-blue--hover g-font-size-12 g-mt-10" target="_blank" href="<?= (DROPBOX_URL) ?>"><?= strtoupper(lang('learn_more')) ?> <i class="fa fa-chevron-right g-ml-10"></i> </a>
                        </div>
                        <!-- End Icon Blocks -->
                    </div>

                    <div class="col-md-4 d-none <?= $this->agent->is_mobile() ? 'mb-5' : 'g-pr-0' ?> item-program" id="program-3">
                        <!-- Icon Blocks -->
                        <div class="shadow-hover-paper-1 g-bg-white g-brd-around g-brd-transparent--hover g-bg-white--hover g-transition-0_3 g-cursor-pointer g-px-30 g-pt-30 g-pb-50  g-ml-minus-1" style="<?= $this->agent->is_mobile() ? 'box-shadow: 0 5px 10px 0 rgba(0,0,0,0.05)' : '' ?>">
                            <span class="u-icon-v3 u-shadow-v24 g-bg-white g-color-blue rounded-circle mb-4" style="border: 1px solid #0babce;">
                                <i class="icon-education-141 u-line-icon-pro"></i>
                            </span>
                            <h3 class="h5 g-color-black g-font-weight-600 mb-3">Waste Management</h3>
                            <p class="g-color-gray-dark-v4">This is where we sit down, grab a cup of coffee and dial in the details.</p>
                            <a target="_blank" class="btn btn-info g-color-white g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9" href="<?= '#' ?>" style="position: absolute;margin-top: 30px;right: 35px;">
                                <?= lang('brand_partner_join') ?> <i class="fa fa-chevron-circle-right ml-2"></i>
                            </a>
                        </div>
                        <!-- End Icon Blocks -->
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>
