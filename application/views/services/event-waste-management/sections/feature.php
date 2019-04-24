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
                    'name' => 'Tempat Sampah Terpilah',
                    'description' => 'Tersedia tempat sampah dengan konsep sampah terpilah di setiap titik yang ditandai sebagai titik keramaian',
                    'icon' => 'icon-hotel-restaurant-214 u-line-icon-pro',
                    'number' => 1,
                ],
                [
                    'name' => 'Edukator Kelola Sampah',
                    'description' => 'Tak hanya fasilitas pembuangan sampah, tim edukator siap sedia memberikan edukasi tentang isu sampah dan pemilahannya',
                    'icon' => 'icon-education-024 u-line-icon-pro',
                    'number' => 2,
                ],
                [
                    'name' => 'Pengangkutan Terpilah',
                    'description' => 'Mengawal acara secara penuh dengan menyediakan fasilitas pengangkutan terpilah untuk seluruh sampah yang terkumpul selama acara',
                    'icon' => 'icon-transport-094 u-line-icon-pro',
                    'number' => 3,
                ],
                [
                    'name' => 'Laporan Pengelolaan Sampah',
                    'description' => 'Kami merilis laporan pengelolaan sampah yang dihasilkan dari acara dengan komprehensif mulai dari hulu ke hilir',
                    'icon' => 'icon-finance-119 u-line-icon-pro',
                    'number' => 3,
                ],
            ];
            $en=[
                [
                    'name' => 'Segregated Waste Bin',
                    'description' => 'Segregated waste bin are placed in several strategic spots/places where people will usually gather',
                    'icon' => 'icon-hotel-restaurant-214 u-line-icon-pro',
                    'number' => 1,
                ],
                [
                    'name' => 'Waste Management Educator',
                    'description' => 'We will not only provide waste disposal facility, but also an educator team who are ready to educate visitors about waste problems and segregation.',
                    'icon' => 'icon-education-024 u-line-icon-pro',
                    'number' => 2,
                ],
                [
                    'name' => 'Segregated Waste collection',
                    'description' => 'We will oversee the whole event by providing segregation waste collection facility for all of the waste that are collected drung the event ',
                    'icon' => 'icon-transport-094 u-line-icon-pro',
                    'number' => 3,
                ],
                [
                    'name' => 'Waste Management Report',
                    'description' => 'We produce a comprehensive report on waste management that are produced during the event from upstream to downstream',
                    'icon' => 'icon-finance-119 u-line-icon-pro',
                    'number' => 3,
                ],
            ];
            $solutions=$this->session->userdata('language')=='en' ? $en : $id;
            foreach ($solutions as $solution):
            ?>
            <div class="col-lg-6 g-pb-40 g-pa-40--sm g-mb-40">
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