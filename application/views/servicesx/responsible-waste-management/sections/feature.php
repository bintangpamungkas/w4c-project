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
                    'name' => 'Pemilahan',
                    'description' => 'Sampah terpilah dari sumber dan dipastikan tidak bercampur kembali saat pengangkutan',
                    'icon' => 'icon-transport-094 u-line-icon-pro',
                    'number' => 1,
                ],
                [
                    'name' => 'Pengolahan',
                    'description' => 'Memastikan semua sampah diangkut secara terpilah dan diolah secara bertanggung jawab',
                    'icon' => 'icon-real-estate-024 u-line-icon-pro',
                    'number' => 2,
                ],
                [
                    'name' => 'Laporan',
                    'description' => 'Kami merilis laporan alur pengelolaan sampah yang komprehensif mulai dari hulu ke hilir',
                    'icon' => 'icon-finance-119 u-line-icon-pro',
                    'number' => 3,
                ],
            ];
            $en=[
                [
                    'name' => 'Segregation',
                    'description' => 'Waste are segregated from the source and guaranteed not to get mixed during the collection process',
                    'icon' => 'icon-transport-094 u-line-icon-pro',
                    'number' => 1,
                ],
                [
                    'name' => 'Processing',
                    'description' => 'Ensure that all of the collected waste are processed so that none of them will end up in landfills ',
                    'icon' => 'icon-real-estate-024 u-line-icon-pro',
                    'number' => 2,
                ],
                [
                    'name' => 'Report',
                    'description' => 'We produce comprehensive report on waste flow from upstream to downstream ',
                    'icon' => 'icon-finance-119 u-line-icon-pro',
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