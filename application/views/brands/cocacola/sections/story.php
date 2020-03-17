
<div class="g-bg-white <?= $this->agent->is_mobile() ? '' : 'g-pb-80' ?>">
    <div id="story" style="height: 200px;position: absolute;width: 80%;margin-top: -180px"></div>

    <div class="container">
        <!-- Info Image -->
        <?php

            $en=[
                'description' => ucwords($brand_name).' have a vision to achieve a true <strong>Circular Economy</strong> where everything we use is designed to be reused and recycled, and very little is thrown away.',
                'content_1_title' => 'Design for Reuse',
                'content_1_content' => 'At Coca-Cola, we design our bottles and cans to have a value beyond their original use.',
                'content_2_title' => 'Collect and Recycle',
                'content_2_content' => 'We ensure our bottles and cans are being collected, recycled and work with partners to increase recycling rates.',
            ];

            $id=[
                'description' => ucwords($brand_name).' memiliki visi untuk mewujudkan <strong>Circular Economy</strong> sejati di mana semua yang kita gunakan dirancang untuk digunakan kembali dan didaur ulang, dan sangat sedikit yang dibuang.',
                'content_1_title' => 'Desain untuk Reuse',
                'content_1_content' => 'Di Coca-Cola, kami merancang botol & kaleng untuk memiliki nilai di luar kegunaan aslinya.',
                'content_2_title' => 'Pengumpulan dan Daur Ulang',
                'content_2_content' => 'Kami memfasilitasi agar tiap botol dan kaleng kami dapat terkumpul, dan terdaur ulang dengan berkolaborasi untuk meningkatkan tingkat daur ulang.',
            ];

            $story=$this->session->userdata('language')=='en' ? $en : $id;
            
            $story_content=[
                [
                    'title' => 'Why A World Without Waste Is Possible',
                    'subtitle' => '',
                    'url' => 'https://www.coca-colacompany.com/stories/why-a-world-without-waste-is-possible',
                    'story_bg' => base_url(DIR_IMG.'bg/brands/cocacola/media/WorldWithoutWaste3.rendition.940.456.jpg'),
                ],
                [
                    'title' => 'Mengurangi Penggunaan Plastik dengan Teknologi ASSP',
                    'subtitle' => '',
                    'url' => 'https://www.cocacola.co.id/cerita/coca-cola-indonesia-memperkenalkan-teknologi-assp-yang-mengurang-penggunaan-plastik-lebih-dari-40-persen',
                    'story_bg' => base_url(DIR_IMG.'bg/brands/cocacola/media/Coca-Cola-ASSP-2.rendition.598.336.jpg'),
                ],
                [
                    'title' => 'Ellen Mac Arthur Foundation Our Oceans Pledge',
                    'subtitle' => '',
                    'url' => 'https://www.coca-colacompany.com/press-center/company-statements/ellen-macarthur-foundation-our-oceans-pledge',
                    'story_bg' => base_url(DIR_IMG.'bg/brands/cocacola/media/JB4A0988.rendition.598.336.jpg'),
                ],
            ];

            ?>
            <div class="<?= $this->agent->is_mobile() ? 'g-mt-100' : '' ?>">
                <header id="story_title_desktop" class="text-uppercase g-mb-35">
                    <div class="g-font-size-16 g-font-weight-700 g-color-info">
                        <?= strtoupper($brand_name) ?>
                    </div>
                    <div class="g-mb-15">
                        <h2 class="h2 g-font-weight-700 mb-0 <?= $this->agent->is_mobile() ? 'g-font-size-24' : '' ?>">
                            Investing in Planet; Investing in Packaging
                        </h2>
                    </div>
                    <div class="g-width-70 g-brd-bottom g-brd-2 g-brd-blue"></div>
                </header>

                <p id="story_description_desktop" class="g-color-black-opacity-0_7 g-mb-25">
                    <?= $story['description'] ?>
                </p>

            </div>

            <div class="row">
                <?php foreach ($story_content as $content): ?>
                <div class="col-lg-4 col-md-6 g-mb-30">
                    <!-- Article -->
                    <article class="u-block-hover g-color-white">
                        <!-- Article Image -->
                        <div class="g-bg-cover g-bg-black-opacity-0_3--after">
                            <img class="w-100" src="<?= $content['story_bg'] ?>" alt="Image Description">
                        </div>
                        <!-- End Article Image -->

                        <div class="u-block-hover__additional--fade g-bg-black-opacity-0_7 rounded g-ma-10"></div>

                        <!-- Article Content -->
                        <div class="u-block-hover__additional g-flex-middle g-pa-20">
                            <div class="g-flex-middle-item--top d-none">
                                <span class="u-ribbon-v1 g-color-white g-bg-primary-opacity-0_8 g-font-weight-700 g-font-size-11 rounded g-top-20 g-left-20">$780.00</span>
                            </div>
                            <div class="g-flex-middle-item--bottom">
                                <h3 class="h5 g-mb-2"><?= $content['title'] ?></h3>
                                <small><?= $content['subtitle'] ?></small>
                            </div>
                        </div>
                        <!-- End Article Content -->

                        <a target="_blank" href="<?= $content['url'] ?>" class="u-link-v2"></a>
                    </article>
                    <!-- End Article -->
                </div>
                <?php endforeach; ?>
            </div>

    </div>

</div>
