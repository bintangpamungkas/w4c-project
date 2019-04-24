<section class="<?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-0' : 'g-pt-100 g-pb-100' ?>">

    <div id="feature" style="height: 10px;position: absolute;width: 80%;margin-top: -200px"></div>

    <div class="container">
        <div class="text-center g-mb-50">
            <h2 class="g-color-black g-font-weight-600 "><?= strtoupper(lang('solution')) ?></h2>
            <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
        </div>
        <div class="row">
            <?php
            $id=[
                [
                    'name' => 'Edukasi',
                    'description' => 'Memberikan pemahaman dan informasi lengkap mengenai pengelolaan sampah yang lebih baik dan bertanggung jawab',
                    'icon' => 'icon-education-024 u-line-icon-pro',
                    'number' => 1,
                ],
                [
                    'name' => 'Siapa Saja Dimana Saja',
                    'description' => 'Siapapun dan dimana pun Anda, bergabunglah dan ketahui lebih banyak tentang pengelolaan sampah',
                    'icon' => 'icon-education-192 u-line-icon-pro',
                    'number' => 2,
                ],
                [
                    'name' => 'Trainer Berpengalaman',
                    'description' => 'Belajar bersama trainer berpengalaman, ajukan pertanyaan, lakukan diskusi dan hal lain terkait pengelolaan sampah yang lebih baik',
                    'icon' => 'icon-education-090 u-line-icon-pro',
                    'number' => 3,
                ],
            ];
            $en=[
                [
                    'name' => 'Education',
                    'description' => 'Giving a comprehensive understanding about better and more responsible waste management',
                    'icon' => 'icon-education-024 u-line-icon-pro',
                    'number' => 1,
                ],
                [
                    'name' => 'Whoever and Wherever It Is',
                    'description' => 'Whoever you are and wherever it is you might be, join us and learn more about waste management',
                    'icon' => 'icon-education-192 u-line-icon-pro',
                    'number' => 2,
                ],
                [
                    'name' => 'Experienced Trainer',
                    'description' => 'Learn with our experiened trainers, ask question, discuss, and engage in other activities regarding better waste management',
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