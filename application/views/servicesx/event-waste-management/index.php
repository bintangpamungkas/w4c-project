
<!-- Promo Block -->
<section id="welcome" class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall " data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
    <div class="divimage dzsparallaxer--target w-100 g-bg-pos-bottom-center" style="height: 120%;background: url(<?= $this->agent->is_mobile() ? base_url('assets/img/service/'.$service_id.'/bg/1.jpg') : base_url('assets/img/service/'.$service_id.'/bg/1.jpg') ?>);background-size: cover;<?= $this->agent->is_mobile() ? 'background-position-x: right;' : '' ?>"></div>

    <div class="full-height-block pending-show animated d-zap" style="background-image: linear-gradient(<?= $this->agent->is_mobile() ? '190deg' : '100deg' ?>, rgba(256, 256, 256, 0.9) 40%, rgba(256, 256, 256, <?= $this->agent->is_mobile() ? '0.8' : '0.5' ?>) 70%, rgba(256, 256, 256, <?= $this->agent->is_mobile() ? '0.5' : '0' ?>) 100%);">
        <div class="container">
            <div class="row content-middle-fullscreen with-header <?= $this->agent->is_mobile() ? 'justify-content-center text-center' : '' ?>">
                <div class="col-md-6 col-10">
                    <br>
                    <?php
                    $welcome=[
                        'id' => [
                            'small_title' => 'Daur Ulang Sampahmu Melalui',
                            'title' => lang($service_id),
                            'subtitle' => 'Buat Pengelolaan sampah di acara Anda menjadi lebih baik dan bertanggung jawab',
                        ],
                        'en' => [
                            'small_title' => 'Daur Ulang Sampahmu Melalui',
                            'title' => lang($service_id),
                            'subtitle' => 'Make your events waste management better and more responsible',
                        ],
                    ];
                    $welcome=$this->session->userdata('language')=='en' ? $welcome['en'] : $welcome['id'];
                    ?>
                    <h3 class="g-color-black-opacity-0_8 g-font-weight-700 <?= $this->agent->is_mobile() ? 'g-font-size-25' : 'g-font-size-50' ?> mb-4 g-font-asap" style="line-height: 1.2"><?= $welcome['title'] ?></h3>
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="g-color-black-opacity-0_7 <?= $this->agent->is_mobile() ? 'g-font-size-14' : 'g-font-size-16' ?> g-line-height-1_5 mb-3"><?= ucfirst($welcome['subtitle']) ?></h3>
                        </div>
                    </div>
                    <div class="pt-4 <?= $this->agent->is_mobile() ? 'row justify-content-center' : '' ?>">
                        <div class="<?= $this->agent->is_mobile() ? 'col-10' : '' ?>">
                            <a class="click_scroll btn btn-info g-color-white g-brd-white-opacity-0_2 g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-20 g-py-9 <?= $this->agent->is_mobile() ? 'btn-block mb-4' : '' ?>" href="<?= site_url('join') ?>">
                                <?= strtoupper(lang('get_proposal')) ?>
                                <span class="align-middle u-icon-v3 d-none g-width-16 g-height-16 g-color-black-opacity-0_5 g-bg-white g-font-size-11 rounded-circle ml-3">
                                    <i class="fa fa-info"></i>
                                </span>
                            </a>
                            <a class="click_scroll btn btn-outline-info g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-20 g-py-9 <?= $this->agent->is_mobile() ? 'btn-block' : 'g-ml-10' ?>" href="#about">
                                <?= strtoupper(lang('learn_more')) ?>
                                <span class="align-middle d-none u-icon-v3 g-width-16 g-height-16 g-color-black g-bg-white g-font-size-11 rounded-circle ml-3">
                                    <i class="fa fa-angle-right"></i>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <br>
        </div>

    </div>
</section>
<!-- End Promo Block -->

<?php //$this->load->view('services/'.$service_id.'/sections/counter'); ?>
<div style="height: <?= $this->agent->is_mobile() ? '150px' : '75px' ?>" class="g-bg-white d-none"></div>
<?php $this->load->view('services/'.$service_id.'/sections/about'); ?>
<?php $this->load->view('services/'.$service_id.'/sections/feature'); ?>
<?php $this->load->view('services/'.$service_id.'/sections/facility'); ?>
<?php $this->load->view('services/'.$service_id.'/sections/client'); ?>
<?php $this->load->view('services/'.$service_id.'/sections/target'); ?>
<?php $this->load->view('services/'.$service_id.'/sections/cta'); ?>