<section class="<?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-0' : 'g-py-70' ?>">
    <div id="<?=$section_slug?>" style="height: 10px;position: absolute;width: 80%;margin-top: -200px"></div>
    <div class="container">
        <div class="text-center g-mb-50">
            <h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?= strtoupper(lang('solution')) ?></h2>
            <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
        </div>
        <div class="row">
            <?php
            $id=[
                [
                    'name' => 'Tur & Edukasi',
                    'description' => 'Menyajikan wawasan tentang pengelolaan sampah yang bertanggung jawab dengan konsep yang menarik melalui tur dan permainan serta diskusi interaktif',
                    'icon' => 'icon-education-024 u-line-icon-pro',
                    'number' => 1,
                ],
                [
                    'name' => 'Siapa Saja',
                    'description' => 'Siapapun Anda, jadilah peserta dan rasakan pengalaman langsung dengan melihat dan mengunjungi tempat-tempat pengelolaan sampah milik Waste4hange',
                    'icon' => 'icon-education-192 u-line-icon-pro',
                    'number' => 2,
                ],
                [
                    'name' => 'Trainer Berpengalaman',
                    'description' => 'Belajar bersama trainer berpengalaman, ajukan pertanyaan, lakukan diskusi dan hal lain tentang pengelolaan sampah yang lebih baik',
                    'icon' => 'icon-education-090 u-line-icon-pro',
                    'number' => 3,
                ],
            ];
            $en=[
                [
                    'name' => 'Tour & Education',
                    'description' => 'Provide insights on responsible waste management with an interesting concept through field tour as well as interactive discussion and games. ',
                    'icon' => 'icon-education-024 u-line-icon-pro',
                    'number' => 1,
                ],
                [
                    'name' => 'Whoever You Are',
                    'description' => 'Siapapun Anda, jadilah peserta dan rasakan pengalaman langsung dengan melihat dan mengunjungi tempat-tempat pengelolaan sampah milik Waste4hange',
                    'icon' => 'icon-education-192 u-line-icon-pro',
                    'number' => 2,
                ],
                [
                    'name' => 'Experienced Trainers',
                    'description' => 'Learn with our experienced trainers, ask questions, discuss, and engage in other activities regarding better waste management ',
                    'icon' => 'icon-education-090 u-line-icon-pro',
                    'number' => 3,
                ],
            ];
            $solutions=$this->session->userdata('language')=='en' ? $en : $id;
            foreach ($solutions as $solution):
            ?>
            <div class="col-lg-4 g-pb-40 <?= $solution['number']==1 ? '' : 'g-brd-left--lg g-brd-gray-light-v4' ?> g-pa-40--sm g-mb-40">
                <!-- Icon Blocks -->
                <div class="text-center">
                <span class="d-inline-block u-icon-v3 u-icon-size--xl g-color-white g-bg-primary-gradient-opacity-v1 rounded-circle g-mb-20">
                  <i class="<?= $solution['icon'] ?>"></i>
                </span>
                    <h3 class="h5 g-color-black mb-3"><?= $solution['name'] ?></h3>
                    <small class="g-color-gray-dark-v4"><?= $solution['description'] ?></small>
                </div>
                <!-- End Icon Blocks -->
            </div>
            <?php
            endforeach;
            ?>
        </div>

    </div>
</section>