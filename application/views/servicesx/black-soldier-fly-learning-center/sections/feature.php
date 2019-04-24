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
                    'name' => 'Program Kunjungan 1 Hari',
                    'description' => 'Tur dan pengenalan fasilitas pembibitan dan budidaya BSF untuk melihat cara perawatan dan proses dekomposisi limbah makanan menggunakan BSF',
                    'icon' => 'icon-education-192 u-line-icon-pro',
                    'number' => 1,
                ],
                [
                    'name' => 'Program 5 Hari',
                    'description' => 'Lakukan eksplorasi lebih detail melalui praktik langsung perawatan dan budidaya BSF selama 5 hari di fasilitas kami',
                    'icon' => 'icon-hotel-restaurant-056 u-line-icon-pro',
                    'number' => 2,
                ],
                [
                    'name' => 'Program Intensif 21 Hari',
                    'description' => 'Cocok untuk pebisnis yang ingin membangun fasilitas pengembangbiakan dan budidaya BSF milik sendiri. Kami akan membantu Anda untuk merancang dan merencanakan fasilitas pembibitan dan budidaya BSF Anda sendiri di kota / daerah Anda.',
                    'icon' => 'icon-education-195 u-line-icon-pro',
                    'number' => 3,
                ],
            ];
            $en=[
                [
                    'name' => 'One-Day Visit',
                    'description' => 'Tour and introduction of BSF cultivation and breeding facilities to see the maintenance methods as well as the decomposition process of food waste using BSF',
                    'icon' => 'icon-education-192 u-line-icon-pro',
                    'number' => 1,
                ],
                [
                    'name' => 'Five-days Visit',
                    'description' => 'Engage in a more detailed exploration through direct practice of breeing and cultivating BSF for 5 days in our facility',
                    'icon' => 'icon-hotel-restaurant-056 u-line-icon-pro',
                    'number' => 2,
                ],
                [
                    'name' => '21 Days of Intensive Program',
                    'description' => 'This is suitable for business actors who aspire to develop their very own BSF breeding and cultivating facilities. We will help you to design and plan your own BSF cultivation and breeding facilities in your city/area',
                    'icon' => 'icon-education-195 u-line-icon-pro',
                    'number' => 3,
                ],
            ];
            $solutions=$this->session->userdata('language')=='en' ? $en : $id;
            foreach ($solutions as $solution):
                ?>
                <div class="col-lg-<?= $solution['number']==1 ? '4' : ($solution['number']==2 ? '3' : '5') ?> g-pb-40 <?= $solution['number']==1 ? '' : 'g-brd-left--lg g-brd-gray-light-v4' ?> g-pa-40--sm g-mb-40">
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