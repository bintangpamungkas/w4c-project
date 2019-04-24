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
                    'name' => 'Mencegah Penyalahgunaan',
                    'description' => 'Pencegahan penyalahgunaan, peniruan atau pemalsuan produk dengan mengawasi dan menjaga pengelolaan dan pengangkutan sampah tetap di dalam sistem',
                    'icon' => 'icon-real-estate-024 u-line-icon-pro',
                    'number' => 1,
                ],
                [
                    'name' => 'Proses Pengelolaan Terdokumentasi Dengan Baik',
                    'description' => 'Pengelolaan sampah dalam lini distribusi direkam dan diukur dengan detail dan baik untuk menjaga sistem tetap optimal dan aman',
                    'icon' => 'icon-transport-094 u-line-icon-pro',
                    'number' => 2,
                ],
                [
                    'name' => 'Meningkatkan Jumlah Material Terdaur Ulang',
                    'description' => 'Membantu meningkatkan tingkat daur ulang dari sisi proses pengolahan sampah di lini distribusi',
                    'icon' => 'icon-media-072 u-line-icon-pro',
                    'number' => 3,
                ],
            ];
            $en=[
                [
                    'name' => 'Avoid Misuse ',
                    'description' => 'Avoid any of your brand products from being misused, imitated, or forged by making sure that both the waste collection and management processes stay inside the system ',
                    'icon' => 'icon-real-estate-024 u-line-icon-pro',
                    'number' => 1,
                ],
                [
                    'name' => 'Well-Documented Waste Management Process',
                    'description' => 'The waste management in distribution line is recorded and measured carefully to keep the waste system safe and optimized',
                    'icon' => 'icon-transport-094 u-line-icon-pro',
                    'number' => 2,
                ],
                [
                    'name' => 'Increase the Humber of Materials that are Recycled ',
                    'description' => 'Help to increase the recycling rate from the waste management process in distribution line ',
                    'icon' => 'icon-media-072 u-line-icon-pro',
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