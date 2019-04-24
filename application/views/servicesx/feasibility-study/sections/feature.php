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
                    'name' => 'Konsultasi',
                    'description' => 'Memberikan konsultasi pengelolaan sampah bertanggung jawab melalui konsultan bidang persampahan yang berpengalaman',
                    'icon' => 'icon-education-024 u-line-icon-pro',
                    'number' => 1,
                ],
                [
                    'name' => 'Adaptasi PROPER',
                    'description' => 'Membantu perusahaan untuk mengadaptasi proses PROPER pada setiap lini bisnisnya sehingga sesuai dengan arahan KLHK dan selaras dengan lingkungan',
                    'icon' => 'icon-education-008 u-line-icon-pro',
                    'number' => 2,
                ],
                [
                    'name' => 'Target',
                    'description' => 'Melakukan analisa kebutuhan dan memberikan target pengelolaan sampah yang lebih baik & bertanggung jawab bagi perusahaan',
                    'icon' => 'icon-education-126 u-line-icon-pro',
                    'number' => 3,
                ],
            ];
            $en=[
                [
                    'name' => 'Consultation ',
                    'description' => 'Give consultation on responsible waste management through an experienced environmental consultant ',
                    'icon' => 'icon-education-024 u-line-icon-pro',
                    'number' => 1,
                ],
                [
                    'name' => 'Adaptation to the PROPER',
                    'description' => 'Help companies to adapt the PROPER process on every business line to make it correspond with the direction given by the Ministry of Environment and Forestry as well as with the environment itself',
                    'icon' => 'icon-education-008 u-line-icon-pro',
                    'number' => 2,
                ],
                [
                    'name' => 'Target',
                    'description' => 'Conduct needs analysis and set target for a better and more responsible waste management for companies',
                    'icon' => 'icon-education-126 u-line-icon-pro',
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