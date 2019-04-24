
<!-- Promo Block -->
<section id="welcome" class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall " data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
    <div class="divimage dzsparallaxer--target w-100 g-bg-pos-bottom-center" style="height: 120%; background-image: url(<?= base_url('assets/img/bg/'.$brand_id.'_bg.jpg') ?>);"></div>

    <div class="<?= $this->agent->is_mobile() ? 'g-py-130 mb-5' : 'g-py-200' ?>" style="background-color: rgba(0,0,0,0.5)">
        <div class="container">
            <div class="col-md-12 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
                <br>
                <h3 class="g-color-white g-font-weight-500 g-font-size-16 g-line-height-1_2 mb-1 g-font-asap"><?= strtoupper($brand_name) ?></h3>
                <h3 class="g-color-white g-font-weight-700 <?= $this->agent->is_mobile() ? 'g-font-size-25 g-mb-20' : 'g-font-size-35' ?> g-font-asap text-uppercase <?= $this->session->userdata('language')=='id' ? 'mb-3' : '' ?>" style="line-height: 1">Visi untuk WORLD WITHOUT WASTE</h3>
                <div class="row mb-2 <?= $this->agent->is_mobile() ? '' : '' ?>">
                    <?php

                        $en = [
                            'subtitle' => 'The Coca-Cola Company menetapkan visi global untuk membantu mengumpulkan (collect) dan mendaur ulang (recyle) kemasan produk, sama dengan jumlah yang diproduksi, pada tahun 2030. <br>Di Indonesia, beberapa program bersama Waste4Change tengah dikembangkan untuk terus memotivasi konsumen untuk lebih sering melakukan daur ulang kemasan.',
                        ];

                        $id = [
                            'subtitle' => 'The Coca-Cola Company menetapkan visi global untuk membantu mengumpulkan (collect) dan mendaur ulang (recyle) kemasan produk, sama dengan jumlah yang diproduksi, pada tahun 2030. <br>Di Indonesia, beberapa program bersama Waste4Change tengah dikembangkan untuk terus memotivasi konsumen untuk lebih sering melakukan daur ulang kemasan.',
                        ];

                        $story = $this->session->userdata('language') == 'en' ? $en : $id;
                    ?>
                    <div class="col-md-10">
                        <span class="d-block g-color-white-opacity-0_8 g-font-size-14 mb-3"><?= $story['subtitle'] ?></span>
                    </div>
                </div>
                <div class="<?= $this->agent->is_mobile() ? 'row justify-content-center g-mb-30 g-mt-25' : '' ?>">
                    <div class="<?= $this->agent->is_mobile() ? 'col-10' : '' ?>">
                        <a class="btn btn-info g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9 mr-4 <?= $this->agent->is_mobile() ? 'btn-block mb-4' : 'mr-4' ?>" href="#story">
                            <?= strtoupper(lang('learn_more')) ?> <i class="fa fa-chevron-circle-right ml-3"></i>
                        </a>
                    </div>
                </div>
                <div class="row mb-2 <?= $this->agent->is_mobile() ? '' : '' ?>d-none">
                    <div class="col-md-10">
                        <span class="d-block g-color-white-opacity-0_8 g-font-size-14 mb-3"><?= strtoupper($brand_name) ?> <?= lang('brand_subtitle') ?></span>
                    </div>
                </div>
                <br>
                <br>
            </div>
        </div>

    </div>

</section>
<!-- End Promo Block -->


<?php
$this->load->view('brands/cocacola/sections/counter');
?>

<div style="height: <?= $this->agent->is_mobile() ? '100px' : '125px' ?>" class="g-bg-white"></div>

<?php
$this->load->view('brands/cocacola/sections/story');
?>

<?php
$this->load->view('brands/cocacola/sections/program');
?>

<?php
$this->load->view('brands/cocacola/sections/waste');
?>

<?php
$this->load->view('brands/cocacola/sections/threat');
?>

<?php
$this->load->view('brands/cocacola/sections/map');
?>

<?php
$this->load->view('brands/cocacola/sections/join');
?>

<?php
$this->load->view('brands/cocacola/sections/share');
?>
