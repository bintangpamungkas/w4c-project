<?php
$about=[
    'id' => [
        'title' => 'Melihat & Merasakan Lebih Dekat Melalui Tur Pengelolaan Sampah',
        'subtitle' => lang($service_id).' dirancang untuk memberikan pengalaman langsung kepada peserta dengan mengunjungi tempat-tempat pengelolaan sampah seperti TPA/TPST kota dan Rumah Pemulihan Material milik Waste4Change. Selain kunjungan ke tempat-tempat tersebut, peserta juga akan diberikan materi lebih lanjut untuk bisa bijak mengelola sampah dari sumber dengan adanya permainan dan diskusi interaktif',
    ],
    'en' => [
        'title' => 'Take A Closer Look with Waste Management Tour',
        'subtitle' => lang($service_id).' is designed to give participants a first-hand experience of waste management by taking them to visit waste management facilities such as in landfills as well as Waste4Changes Material Recovery Facility. In addition to those visits, the participants will be given the knowledge that will enable them to manage their waste from the source in the form of fun games and interactive discussion',
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
                        <h2 class="<?= $this->agent->is_mobile() ? 'h4' : 'h1' ?> g-color-black g-font-weight-600 g-mb-35 text-capitalize">
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