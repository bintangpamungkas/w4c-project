<?php
$about=[
    'id' => [
        'title' => 'Implementasi Pengelolaan Sampah yang Bertanggung Jawab bersama Konsumen',
        'subtitle' => lang($service_id).' adalah Program pengelolaan sampah yang bertanggung jawab dan terintegrasi, dimana konsumen brand secara sukarela menitipkan sampah kemasan miliknya ke titik Drop Box terdekat. Drop Box merupakan program Waste4Change yang berupaya untuk meningkatkansiklus hidup produk kemasan bekas pakai dan mengoptimalisasikegiatan daur ulang serta meningkatkan potensi ekonomi dari sampah kemasan brand',
    ],
    'en' => [
        'title' => 'Implementing a responsible waste management with consumers',
        'subtitle' => lang($service_id).', is a responsible and integrated waste management program where Brand’s consumers voluntarily drop their brand’s packaging waste to the nearest Drop Box Point. Drop Box is one of Waste4Change’s programs to increase the life cycle and economic potential of packaging waste, and also to optimize recycling activities',
    ],
];
$about=$this->session->userdata('language')=='en' ? $about['en'] : $about['id'];
?>

<section class="g-bg-secondary">

    <div id="about" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>

    <div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'g-pt-80 g-pb-80' ?>">
        <div class="row">

            <div class="col-lg-6 g-mb-30 <?= $this->agent->is_mobile() ? 'd-none' : '' ?>">
                <div style="background: url('<?= base_url('assets/img/service/'.$service_id.'/bg/2.jpg') ?>');height: 400px;background-size: cover"></div>
            </div>

            <div class="col-md-6 g-mb-30 g-mt-15">
                <div class="g-ml-10--lg">
                    <div class="mb-2">
                        <div class="d-inline-block g-width-30 g-height-2 g-pos-rel g-top-minus-4 g-bg-info mr-2"></div>
                        <span class="g-color-gray-dark-v3 g-font-weight-600 g-font-size-12 text-uppercase"><?= lang('about_only') ?></span>
                    </div>
                    <div class="g-mb-5--lg">
                        <h2 class="h1 g-color-black g-font-weight-600 g-mb-25 text-capitalize">
                            <?= $about['title'] ?>
                        </h2>
                        <p class="g-pa-35 g-color-white" style="background: linear-gradient(190deg, rgba(133, 196, 93, 0.9), rgba(21, 156, 189, 0.9));<?= $this->agent->is_mobile() ? '' : 'margin-left: -100px' ?>">
                            <?= $about['subtitle'] ?>
                        </p>
                    </div>
                    <a target="_blank" class="d-none btn btn-info g-font-size-default text-uppercase g-rounded-50 g-py-12 g-px-30" href="#">JOIN NOW</a>
                </div>
            </div>

        </div>
    </div>
</section>