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
                    'name' => 'Edukasi & Konsultasi',
                    'description' => 'Edukasi dan konsultasi tentang pengelolaan sampah yang bertanggung jawab oleh konsultan berpengalaman',
                    'icon' => 'icon-education-024 u-line-icon-pro',
                    'number' => 1,
                ],
                [
                    'name' => 'Pelatihan & Pendampingan',
                    'description' => 'Tidak hanya edukasi dan konsultasi, diberikan juga pendampingan operasional pengelolaan sampah bertanggung jawab',
                    'icon' => 'icon-communication-040 u-line-icon-pro',
                    'number' => 2,
                ],
                [
                    'name' => 'Perancangan Infrastruktur',
                    'description' => 'Melakukan perancangan dan pengawasan terhadap infrastruktur & sumber daya pengelolaan sampah yang dibutuhkan selama implementasi',
                    'icon' => 'icon-real-estate-086 u-line-icon-pro',
                    'number' => 3,
                ],
            ];
            $en=[
                [
                    'name' => 'Consultation and Education',
                    'description' => 'Education and consultation about responsible waste management by experienced consultants',
                    'icon' => 'icon-education-024 u-line-icon-pro',
                    'number' => 1,
                ],
                [
                    'name' => 'Training and Guidance',
                    'description' => 'Not only education and consultation, but also operational guidance on responsible waste management ',
                    'icon' => 'icon-communication-040 u-line-icon-pro',
                    'number' => 2,
                ],
                [
                    'name' => 'Infrastructure Designing',
                    'description' => 'Conduct planning and supervision of necessary infrastructure and waste management resources during the implementation process ',
                    'icon' => 'icon-real-estate-086 u-line-icon-pro',
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