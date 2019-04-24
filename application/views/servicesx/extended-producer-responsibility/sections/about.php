<?php
$about=[
    'id' => [
        'title' => 'Tingkatkan Pengelolaan Material dari Sampah Berlabel Brand Anda',
        'subtitle' => 'Dirancang untuk meningkatkan pengelolaan material dari sampah berlabel brand pada setiap lini bisnis perusahaan Anda. Sampah berlabel brand yang dimaksud diantaranya berasal dari :',
    ],
    'en' => [
        'title' => 'Increase Material-Processing from Your Brand-Labeled Waste',
        'subtitle' => 'Designed to increase the material processing from brand-labeled waste throughout your companys business line. What we define as brand-labeled waste might resulted from the following: ',
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
                        <h2 class="<?= $this->agent->is_mobile() ? 'h4' : 'h1' ?> g-color-black g-font-weight-600 g-mb-25 text-capitalize">
                            <?= $about['title'] ?>
                        </h2>
                        <div class="g-pa-35 g-color-white g-pl-100" style="background: linear-gradient(190deg, rgba(133, 196, 93, 0.9), rgba(21, 156, 189, 0.9));margin-left: -100px">
                            <p>
                                <?= $about['subtitle'] ?>
                            </p>
                            <ul class="list-unstyled g-color-gray-dark-v4 g-mb-30 g-mb-0--sm g-mt-20">

                                <?php
                                $id=[
                                    'Proses produksi seperti cacat produksi, reject, atau sisa produksi',
                                    'Proses distribusi seperti kedaluwarsa atau rusak',
                                    'Gudang seperti barang retur, bekas pakai, atau rusak',
                                    'Konsumen seperti kemasan kosong dan produk bekas pakai',
                                ];
                                $en=[
                                    'production process that resulted in product defect, reject, or residue from production process',
                                    'distribution process such as expired or defect products',
                                    'warehouse such as returns, second-hand, or broken',
                                    'consumer such as empty packaging or used products',
                                ];
                                if($this->session->userdata('language')=='en'){
                                    $xw=$en;
                                }else{
                                    $xw=$id;
                                }
                                $number = 1;
                                foreach($xw as $x) :
                                ?>
                                <li class="d-flex g-mb-10 g-color-white">
                                    <i class="icon-arrow-right-circle g-color-white g-mt-5 g-mr-10"></i> <?= $x ?>
                                </li>
                                <?php
                                endforeach;
                                ?>
                            </ul>
                        </div>
                    </div>
                    <a target="_blank" class="d-none btn btn-info g-font-size-default text-uppercase g-rounded-50 g-py-12 g-px-30" href="#">JOIN NOW</a>
                </div>
            </div>

        </div>
    </div>

</section>