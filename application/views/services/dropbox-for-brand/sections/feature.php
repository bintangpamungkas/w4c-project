<section class="<?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-0' : 'g-pt-100 g-pb-100' ?>">

    <div id="feature" style="height: 10px;position: absolute;width: 80%;margin-top: -200px"></div>

    <div class="container">
        <div class="text-center g-mb-50">
            <h2 class="g-color-black g-font-weight-600 "><?= strtoupper(lang('solution')) ?></h2>
            <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
        </div>
        <div class="row">
            <?php
            $solution=[
                'id' => [
                    [
                        'name' => 'Edukasi',
                        'description' => 'Memberikan informasi pentingnya pengelolaan sampah kemasan bekas yang bertanggung jawab',
                        'icon' => 'icon-media-072 u-line-icon-pro',
                        'number' => 1,
                    ],
                    [
                        'name' => 'Pengumpulan',
                        'description' => 'Memberikan fasilitas dan mendorong upaya penarikan kembali kemasan bekas dari brand melalui dropping box yang tersedia ',
                        'icon' => 'icon-transport-094 u-line-icon-pro',
                        'number' => 2,
                    ],
                    [
                        'name' => 'Pengelolaan',
                        'description' => 'Memastikan semua sampah kemasan bekas brand dapat terolah dan terdaur ulang',
                        'icon' => 'icon-real-estate-024 u-line-icon-pro',
                        'number' => 3,
                    ],
                    [
                        'name' => 'Laporan',
                        'description' => 'Kami merilis laporan alur pengelolaan sampah yang komprehensif mulai dari hulu ke hilir',
                        'icon' => 'icon-finance-119 u-line-icon-pro',
                        'number' => 4,
                    ],
                ],
                'en' => [
                    [
                        'name' => 'Education',
                        'description' => 'Provide information regarding the importance of responsible packaging-waste managemen',
                        'icon' => 'icon-media-072 u-line-icon-pro',
                        'number' => 1,
                    ],
                    [
                        'name' => 'Collection',
                        'description' => 'Provide facilities for packaging-waste dropping off as well as to encourage the withdrawal of used brand packaging through the existing Drop Box',
                        'icon' => 'icon-transport-094 u-line-icon-pro',
                        'number' => 2,
                    ],
                    [
                        'name' => 'Management',
                        'description' => 'Ensure all of the Brand’s packaging-waste are managed and recycled responsibly',
                        'icon' => 'icon-real-estate-024 u-line-icon-pro',
                        'number' => 3,
                    ],
                    [
                        'name' => 'Reporting',
                        'description' => 'Release a  report of comprehensive waste management chart to the related Brand',
                        'icon' => 'icon-finance-119 u-line-icon-pro',
                        'number' => 4,
                    ],
                ]
            ];
            $solutions=$this->session->userdata('language')=='en' ? $solution['en'] : $solution['id'];
            foreach ($solutions as $solution):
            ?>
            <div class="col-lg-3 g-pb-40 <?= $solution['number']==1 ? '' : 'g-brd-left--lg g-brd-gray-light-v4' ?> g-pa-40--sm g-mb-40">
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