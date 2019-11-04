<section class="g-bg-white dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
    <div class="divimage dzsparallaxer--target w-100 d-none" style="height: 130%; background-image: url(<?= base_url('assets/img/bg/img36.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
    <div class="container <?= $this->agent->is_mobile() ? 'g-pt-75 g-pb-50' : 'g-pt-140 g-pb-70' ?>">
        <div class="text-center g-mb-50">
            <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= strtoupper(lang('as_seen_title')) ?></h2>
            <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
            <p class="text-muted d-none"><?= lang('brand_partner_subtitle') ?></p>
        </div>

        <?php

        $medias=[
            [
                'media_group' => 1,
                'media_content' => [
                    [
                        'media_name' => 'SWA',
                        'media_photo' => 1,
                        'media_url' => 'https://swa.co.id/swa/profile/profile-entrepreneur/sano-lulusan-itb-yang-berbisnis-sampah',
                    ],
                    [
                        'media_name' => 'GATRA',
                        'media_photo' => 2,
                        'media_url' => 'https://www.gatra.com/rubrik/nasional/376890-Resolusi-2019-Peduli-Lingkungan',
                    ],
                ],
            ],
            [
                'media_group' => 2,
                'media_content' => [
                    [
                        'media_name' => 'CNBC',
                        'media_photo' => 3,
                        'media_url' => 'https://www.cnbcindonesia.com/lifestyle/20190125164240-35-52406/ini-dia-konsep-circular-economy',
                    ],
                    [
                        'media_name' => 'Jakarta Post',
                        'media_photo' => 4,
                        'media_url' => 'https://www.thejakartapost.com/adv/2018/11/06/eu-indonesia-business-dialogue-2018.html',
                    ],
                ],
            ],
            [
                'media_group' => 3,
                'media_content' => [
                    [
                        'media_name' => 'Faktual News',
                        'media_photo' => 5,
                        'media_url' => 'https://faktualnews.co/2018/08/05/metode-bsf-solusi-atasi-sampah-organik-hemat-buat-pakan-ternak/92286/',
                    ],
                    [
                        'media_name' => 'Tribun News',
                        'media_photo' => 6,
                        'media_url' => 'http://www.tribunnews.com/kesehatan/2018/05/16/indonesia-penghasil-limbah-makanan-terbanyak-nomor-dua-ayo-bantu-kurangi',
                    ],
                ],
            ],
            [
                'media_group' => 4,
                'media_content' => [
                    [
                        'media_name' => 'Beritasatu',
                        'media_photo' => 7,
                        'media_url' => 'https://id.beritasatu.com/lifestyle/dbs-ajak-generasi-muda-ikuti-gerakan-recycle-more-waste-less/183974',
                    ],
                    [
                        'media_name' => 'Huff Post',
                        'media_photo' => 8,
                        'media_url' => 'https://www.huffingtonpost.com/entry/plastic-trash-pollution-landfill_us_5b9fcc13e4b013b0977d47ce',
                    ],
                ],
            ],
            [
                'media_group' => 5,
                'media_content' => [
                    [
                        'media_name' => 'Republika',
                        'media_photo' => 9,
                        'media_url' => 'https://www.republika.co.id/berita/gaya-hidup/tips/18/03/05/p546n2328-sampah-plastik-bernilai-ekonomi-bila',
                    ],
                    [
                        'media_name' => 'Tirto Id',
                        'media_photo' => 10,
                        'media_url' => 'https://tirto.id/dki-hasilkan-4-ribuan-ton-sampah-makanan-per-hari-cjti',
                    ],
                ],
            ],
            [
                'media_group' => 6,
                'media_content' => [
                    [
                        'media_name' => 'BBC News',
                        'media_photo' => 11,
                        'media_url' => 'https://www.bbc.com/indonesia/majalah/2016/01/160111_majalah_sampah_indonesia',
                    ],
                    [
                        'media_name' => 'Kompas',
                        'media_photo' => 12,
                        'media_url' => 'https://properti.kompas.com/read/2016/03/22/100000921/Kelola.Sampah.Sendiri.Bisa.Belajar.di.Perumahan.Bekasi.Ini.',
                    ],
                ],
            ],
            [
                'media_group' => 7,
                'media_content' => [
                    [
                        'media_name' => 'Tabloid Jubi',
                        'media_photo' => 13,
                        'media_url' => 'https://tabloidjubi.com/artikel-16864-jika-tak-peduli-2050-lautan-indonesia-akan-dipenuhi-sampah-bukan-ikan.html',
                    ],
                    [
                        'media_name' => 'IDEAS for Good',
                        'media_photo' => 14,
                        'media_url' => 'https://ideasforgood.jp/2018/05/27/trash-for-cash/',
                    ],
                ],
            ],
            [
                'media_group' => 8,
                'media_content' => [
                    [
                        'media_name' => 'Bank DBS',
                        'media_photo' => 15,
                        'media_url' => 'https://www.dbs.com/indonesia-bh/newsroom/feature-article/waste-4-change/default.page?pid=group_id_newsroom_heroblock_waste4change_050815',
                    ],

                    [
                        'media_name' => 'Kompasiana',
                        'media_photo' => 16,
                        'media_url' => 'https://www.kompasiana.com/m_yunus/waste4change-cara-bijak-olah-sampah-dibalik-tpa-bantargebang_56c80490c1afbd0405ae33bb',
                    ],
                ],
            ],
            [
                'media_group' => 9,
                'media_content' => [
                    [
                        'media_name' => 'Doinc',
                        'media_photo' => 17,
                        'media_url' => 'http://doinc.it/docreate/waste4change-bersociopreneur-lewat-sampah/',
                    ],

                    [
                        'media_name' => 'Vemale',
                        'media_photo' => 18,
                        'media_url' => 'https://www.vemale.com/hot-event/76192-sampah-barang-yang-lupa-dimanfaatkan.html',
                    ],
                ],
            ],
            [
                'media_group' => 10,
                'media_content' => [
                    [
                        'media_name' => 'Republika',
                        'media_photo' => 19,
                        'media_url' => 'http://www.republika.co.id/berita/koran/news-update/14/11/18/nf7v4i6-leisure-community-waste4change-kampanye-zero-waste',
                    ],

                    [
                        'media_name' => 'Nutrifood',
                        'media_photo' => 20,
                        'media_url' => 'https://www.nutrifood.co.id/907-2/',
                    ],
                ],
            ],
            [
                'media_group' => 11,
                'media_content' => [
                    [
                        'media_name' => 'Beritasatu',
                        'media_photo' => 21,
                        'media_url' => 'http://www.beritasatu.com/kesra/169066-greeneration-indonesia-buat-peta-daur-ulang-sampah-di-jakarta.html',
                    ],

                    [
                        'media_name' => 'Kompas',
                        'media_photo' => 22,
                        'media_url' => 'http://properti.kompas.com/read/2016/03/22/100000921/Kelola.Sampah.Sendiri.Bisa.Belajar.di.Perumahan.Bekasi.Ini.',
                    ],
                ],
            ],
            [
                'media_group' => 12,
                'media_content' => [
                    [
                        'media_name' => 'Marketeers',
                        'media_photo' => 23,
                        'media_url' => 'http://marketeers.com/begini-cara-dbs-tumbuhkan-wirausaha-sosial/',
                    ],

                    [
                        'media_name' => 'suara.com',
                        'media_photo' => 24,
                        'media_url' => 'https://www.suara.com/lifestyle/2014/12/22/205034/pemulung-berdasi-itu-bernama-m-bijaksana-junerosano',
                    ],
                ],
            ],
            [
                'media_group' => 13,
                'media_content' => [
                    [
                        'media_name' => 'Maxmanroe',
                        'media_photo' => 25,
                        'media_url' => 'https://www.maxmanroe.com/bijaksana-junerosano-peduli-lingkungan-plus-semangat-entrepreneur-tinggi-kini-sukses-berbisnis-sampah.html',
                    ],

                    [
                        'media_name' => 'Greeners',
                        'media_photo' => 26,
                        'media_url' => 'http://www.greeners.co/aksi/kembali-berkebun-bersama-gemar-berkebun/',
                    ],
                ],
            ],
            [
                'media_group' => 14,
                'media_content' => [
                    [
                        'media_name' => 'Green Building Council Indonesia',
                        'media_photo' => 27,
                        'media_url' => 'https://blog.gbcindonesia.org/pengelolaan-sampah-secara-berkelanjutan.html',
                    ],

                    [
                        'media_name' => 'Detik News',
                        'media_photo' => 28,
                        'media_url' => 'https://news.detik.com/bbc-world/3116372/lima-hal-yang-perlu-anda-ketahui-soal-krisis-sampah-indonesia',
                    ],
                ],
            ],
            [
                'media_group' => 15,
                'media_content' => [
                    [
                        'media_name' => 'Tribun News',
                        'media_photo' => 29,
                        'media_url' => 'http://www.tribunnews.com/metropolitan/2017/10/18/pln-donasikan-rp-112-juta-ke-bank-sampah-anyelir',
                    ],

                    [
                        'media_name' => 'Nenggol',
                        'media_photo' => 30,
                        'media_url' => 'http://nenggol.com/bijaksana-junerosano-peduli-lingkungan-ditambah-dengan-semangat-entrepreneur-yang-tinggi-kini-sukses-berbisnis-sampah/',
                    ],
                ],
            ],
            [
                'media_group' => 16,
                'media_content' => [
                    [
                        'media_name' => 'Kampus Update',
                        'media_photo' => 31,
                        'media_url' => 'http://kampusupdate.com/diskusi-bersama-komunitas-wujudkan-kontribusi-generasi-bangsa/',
                    ],

                    [
                        'media_name' => 'House of Infographic',
                        'media_photo' => 32,
                        'media_url' => 'http://houseofinfographics.com/infografis-sampah-jakarta/',
                    ],
                ],
            ],
            [
                'media_group' => 17,
                'media_content' => [
                    [
                        'media_name' => 'Inspirator Freak',
                        'media_photo' => 33,
                        'media_url' => 'https://inspiratorfreak.com/komunitas-pasukan-bijak-sampah/',
                    ],

                    [
                        'media_name' => 'Kumparan',
                        'media_photo' => 34,
                        'media_url' => 'https://kumparan.com/jihad-akbar1487918664529/coca-cola-ajak-generasi-milenial-sadar-kelola-sampah-plastik',
                    ],
                ],
            ],
            [
                'media_group' => 18,
                'media_content' => [
                    [
                        'media_name' => 'Hakuvo Japan',
                        'media_photo' => 35,
                        'media_url' => 'http://gakuvo.jp/interview/5360.html',
                    ],

                    [
                        'media_name' => 'Sustainable Brands',
                        'media_photo' => 36,
                        'media_url' => 'http://www.sustainablebrands.com/news_and_views/leadership/ashwin_subramaniam/depok_front_line_indonesia%E2%80%99s_fight_against_waste',
                    ],
                ],
            ],
            [
                'media_group' => 19,
                'media_content' => [
                    [
                        'media_name' => 'Media Indonesia',
                        'media_photo' => 37,
                        'media_url' => 'http://mediaindonesia.com/news/read/99826/manisnya-gagasan-kantong-plastik-berbayar/2017-04-07',
                    ],

                    [
                        'media_name' => 'Liputan 6',
                        'media_photo' => 38,
                        'media_url' => 'http://forum.liputan6.com/t/tips-memilah-dan-mengelola-sampah/130678',
                    ],
                ],
            ],
            [
                'media_group' => 20,
                'media_content' => [
                    [
                        'media_name' => 'Nestle',
                        'media_photo' => 39,
                        'media_url' => 'https://www.nestle.co.id/ina/media/news-and-features/pengelolaan-sampah-kemasan-praise',
                    ],

                    [
                        'media_name' => 'Youngster',
                        'media_photo' => 40,
                        'media_url' => 'https://youngster.id/featured/project-plasticreborn-inspirasikan-pengelolaan-sampah-bagi-anak-muda',
                    ],
                ],
            ],
            [
                'media_group' => 21,
                'media_content' => [
                    [
                        'media_name' => 'Brillio',
                        'media_photo' => 41,
                        'media_url' => 'https://www.brilio.net/kepribadian/program-ini-ajak-milenial-ubah-gaya-hidup-membuang-sampah-yuk-ikutan-171116d.html#',
                    ],

                    [
                        'media_name' => 'Superindo',
                        'media_photo' => 42,
                        'media_url' => 'https://www.superindo.co.id/korporasi-keberlanjutan/sustainability/partners',
                    ],
                ],
            ],
            [
                'media_group' => 22,
                'media_content' => [
                    [
                        'media_name' => 'OkeZone',
                        'media_photo' => 43,
                        'media_url' => 'https://foto.okezone.com/view/2015/08/05/4/20615/perkembangan-kawasan-pemukiman-vida-bekasi',
                    ],
                ],
            ],
        ];
        $media_single=[
            [
                'media_name' => 'SWA',
                'media_photo' => 1,
                'media_url' => 'https://swa.co.id/swa/profile/profile-entrepreneur/sano-lulusan-itb-yang-berbisnis-sampah',
            ],
            [
                'media_name' => 'GATRA',
                'media_photo' => 2,
                'media_url' => 'https://www.gatra.com/rubrik/nasional/376890-Resolusi-2019-Peduli-Lingkungan',
            ],
            [
                'media_name' => 'CNBC',
                'media_photo' => 3,
                'media_url' => 'https://www.cnbcindonesia.com/lifestyle/20190125164240-35-52406/ini-dia-konsep-circular-economy',
            ],
            [
                'media_name' => 'Jakarta Post',
                'media_photo' => 4,
                'media_url' => 'https://www.thejakartapost.com/adv/2018/11/06/eu-indonesia-business-dialogue-2018.html',
            ],
            [
                'media_name' => 'Faktual News',
                'media_photo' => 5,
                'media_url' => 'https://faktualnews.co/2018/08/05/metode-bsf-solusi-atasi-sampah-organik-hemat-buat-pakan-ternak/92286/',
            ],
            [
                'media_name' => 'Tribun News',
                'media_photo' => 6,
                'media_url' => 'http://www.tribunnews.com/kesehatan/2018/05/16/indonesia-penghasil-limbah-makanan-terbanyak-nomor-dua-ayo-bantu-kurangi',
            ],
            [
                'media_name' => 'Beritasatu',
                'media_photo' => 7,
                'media_url' => 'https://id.beritasatu.com/lifestyle/dbs-ajak-generasi-muda-ikuti-gerakan-recycle-more-waste-less/183974',
            ],
            [
                'media_name' => 'Hufftington Post',
                'media_photo' => 8,
                'media_url' => 'https://www.huffingtonpost.com/entry/plastic-trash-pollution-landfill_us_5b9fcc13e4b013b0977d47ce',
            ],
            [
                'media_name' => 'Republika',
                'media_photo' => 9,
                'media_url' => 'https://www.republika.co.id/berita/gaya-hidup/tips/18/03/05/p546n2328-sampah-plastik-bernilai-ekonomi-bila',
            ],
            [
                'media_name' => 'Tirto Id',
                'media_photo' => 10,
                'media_url' => 'https://tirto.id/dki-hasilkan-4-ribuan-ton-sampah-makanan-per-hari-cjti',
            ],
            [
                'media_name' => 'BBC News',
                'media_photo' => 11,
                'media_url' => 'https://www.bbc.com/indonesia/majalah/2016/01/160111_majalah_sampah_indonesia',
            ],
            [
                'media_name' => 'Kompas',
                'media_photo' => 12,
                'media_url' => 'https://properti.kompas.com/read/2016/03/22/100000921/Kelola.Sampah.Sendiri.Bisa.Belajar.di.Perumahan.Bekasi.Ini.',
            ],
            [
                'media_name' => 'Tabloid Jubi',
                'media_photo' => 13,
                'media_url' => 'https://tabloidjubi.com/artikel-16864-jika-tak-peduli-2050-lautan-indonesia-akan-dipenuhi-sampah-bukan-ikan.html',
            ],
            [
                'media_name' => 'IDEAS for Good',
                'media_photo' => 14,
                'media_url' => 'https://ideasforgood.jp/2018/05/27/trash-for-cash/',
            ],

            [
                'media_name' => 'Bank DBS Indonesia',
                'media_photo' => 15,
                'media_url' => 'https://www.dbs.com/indonesia-bh/newsroom/feature-article/waste-4-change/default.page?pid=group_id_newsroom_heroblock_waste4change_050815',
            ],

            [
                'media_name' => 'Kompasiana',
                'media_photo' => 16,
                'media_url' => 'https://www.kompasiana.com/m_yunus/waste4change-cara-bijak-olah-sampah-dibalik-tpa-bantargebang_56c80490c1afbd0405ae33bb',
            ],

            [
                'media_name' => 'doinc.com',
                'media_photo' => 17,
                'media_url' => 'http://doinc.it/docreate/waste4change-bersociopreneur-lewat-sampah/',
            ],

            [
                'media_name' => 'vemale.com',
                'media_photo' => 18,
                'media_url' => 'https://www.vemale.com/hot-event/76192-sampah-barang-yang-lupa-dimanfaatkan.html',
            ],

            [
                'media_name' => 'Republika.com',
                'media_photo' => 19,
                'media_url' => 'http://www.republika.co.id/berita/koran/news-update/14/11/18/nf7v4i6-leisure-community-waste4change-kampanye-zero-waste',
            ],

            [
                'media_name' => 'Nutrifood.co',
                'media_photo' => 20,
                'media_url' => 'https://www.nutrifood.co.id/907-2/',
            ],

            [
                'media_name' => 'Beritasatu.com',
                'media_photo' => 21,
                'media_url' => 'http://www.beritasatu.com/kesra/169066-greeneration-indonesia-buat-peta-daur-ulang-sampah-di-jakarta.html',
            ],

            [
                'media_name' => 'properti.kompas.com',
                'media_photo' => 22,
                'media_url' => 'http://properti.kompas.com/read/2016/03/22/100000921/Kelola.Sampah.Sendiri.Bisa.Belajar.di.Perumahan.Bekasi.Ini.',
            ],

            [
                'media_name' => 'Marketeers.com',
                'media_photo' => 23,
                'media_url' => 'http://marketeers.com/begini-cara-dbs-tumbuhkan-wirausaha-sosial/',
            ],

            [
                'media_name' => 'suara.com',
                'media_photo' => 24,
                'media_url' => 'https://www.suara.com/lifestyle/2014/12/22/205034/pemulung-berdasi-itu-bernama-m-bijaksana-junerosano',
            ],

            [
                'media_name' => 'Maxmanroe.com',
                'media_photo' => 25,
                'media_url' => 'https://www.maxmanroe.com/bijaksana-junerosano-peduli-lingkungan-plus-semangat-entrepreneur-tinggi-kini-sukses-berbisnis-sampah.html',
            ],

            [
                'media_name' => 'greeners.co',
                'media_photo' => 26,
                'media_url' => 'http://www.greeners.co/aksi/kembali-berkebun-bersama-gemar-berkebun/',
            ],

            [
                'media_name' => 'Green Building Council Indonesia',
                'media_photo' => 27,
                'media_url' => 'https://blog.gbcindonesia.org/pengelolaan-sampah-secara-berkelanjutan.html',
            ],

            [
                'media_name' => 'Detik News',
                'media_photo' => 28,
                'media_url' => 'https://news.detik.com/bbc-world/3116372/lima-hal-yang-perlu-anda-ketahui-soal-krisis-sampah-indonesia',
            ],

            [
                'media_name' => 'Tribun News',
                'media_photo' => 29,
                'media_url' => 'http://www.tribunnews.com/metropolitan/2017/10/18/pln-donasikan-rp-112-juta-ke-bank-sampah-anyelir',
            ],

            [
                'media_name' => 'Nenggol.com',
                'media_photo' => 30,
                'media_url' => 'http://nenggol.com/bijaksana-junerosano-peduli-lingkungan-ditambah-dengan-semangat-entrepreneur-yang-tinggi-kini-sukses-berbisnis-sampah/',
            ],

            [
                'media_name' => 'kampusupdate.com',
                'media_photo' => 31,
                'media_url' => 'http://kampusupdate.com/diskusi-bersama-komunitas-wujudkan-kontribusi-generasi-bangsa/',
            ],

            [
                'media_name' => 'houseofinfographic.com',
                'media_photo' => 32,
                'media_url' => 'http://houseofinfographics.com/infografis-sampah-jakarta/',
            ],

            [
                'media_name' => 'inspiratorfreak.com',
                'media_photo' => 33,
                'media_url' => 'https://inspiratorfreak.com/komunitas-pasukan-bijak-sampah/',
            ],

            [
                'media_name' => 'Kumparan',
                'media_photo' => 34,
                'media_url' => 'https://kumparan.com/jihad-akbar1487918664529/coca-cola-ajak-generasi-milenial-sadar-kelola-sampah-plastik',
            ],

            [
                'media_name' => 'Hakuvo Japan',
                'media_photo' => 35,
                'media_url' => 'http://gakuvo.jp/interview/5360.html',
            ],

            [
                'media_name' => 'Sustainablebrands.com',
                'media_photo' => 36,
                'media_url' => 'http://www.sustainablebrands.com/news_and_views/leadership/ashwin_subramaniam/depok_front_line_indonesia%E2%80%99s_fight_against_waste',
            ],

            [
                'media_name' => 'Media Indonesia',
                'media_photo' => 37,
                'media_url' => 'http://mediaindonesia.com/news/read/99826/manisnya-gagasan-kantong-plastik-berbayar/2017-04-07',
            ],

            [
                'media_name' => 'Forum.liputan6.com',
                'media_photo' => 38,
                'media_url' => 'http://forum.liputan6.com/t/tips-memilah-dan-mengelola-sampah/130678',
            ],

            [
                'media_name' => 'Nestle.id',
                'media_photo' => 39,
                'media_url' => 'https://www.nestle.co.id/ina/media/news-and-features/pengelolaan-sampah-kemasan-praise',
            ],

            [
                'media_name' => 'youngster.id',
                'media_photo' => 40,
                'media_url' => 'https://youngster.id/featured/project-plasticreborn-inspirasikan-pengelolaan-sampah-bagi-anak-muda',
            ],

            [
                'media_name' => 'Brillio.id',
                'media_photo' => 41,
                'media_url' => 'https://www.brilio.net/kepribadian/program-ini-ajak-milenial-ubah-gaya-hidup-membuang-sampah-yuk-ikutan-171116d.html#',
            ],

            [
                'media_name' => 'superindo',
                'media_photo' => 42,
                'media_url' => 'https://www.superindo.co.id/korporasi-keberlanjutan/sustainability/partners',
            ],

            [
                'media_name' => 'Okezone',
                'media_photo' => 43,
                'media_url' => 'https://foto.okezone.com/view/2015/08/05/4/20615/perkembangan-kawasan-pemukiman-vida-bekasi',
            ],
        ];

        ?>

        <div class="row text-center mx-0 g-ml-minus-1 g-mb-minus-1 owl-theme" id="media-carousel">

            <?php
            foreach($medias as $media_list) :
                ?>
                <div class="px-0">
                    <?php
                    foreach($media_list['media_content'] as $media) :
                        ?>
                        <a target="_blank" class="text-black-important" href="<?= $media['media_url'] ?>">
                            <div class="g-brd-left g-brd-bottom g-brd-right g-brd-top g-brd-gray-light-v4 g-py-40--lg g-py-20 text-center">
                                <img class="img-fluid g-transition-0_2 g-px-50--lg g-px-10" src="<?= base_url('assets/img/logo/media/'.$media['media_photo'].'.jpg') ?>" alt="Image Description">
                                <h6><?= $media['media_name'] ?></h6>
                            </div>
                        </a>
                        <?php
                    endforeach;
                    ?>
                </div>
                <?php
            endforeach;
            ?>
        </div>

        <script>
            $(window).load(function () {
                var element_id='#media-carousel';
                $(element_id).owlCarousel({
                    loop:true,
                    margin:0,
                    dots:true,
                    nav:true,
                    autoplay:true,
                    autoplayTimeout:3000,
                    autoplayHoverPause:true,
                    responsive:{
                        0:{
                            items:3
                        },
                        600:{
                            items:4
                        },
                        1000:{
                            items:4
                        }
                    },
                    navText : ['<i class="fa fa-angle-left" aria-hidden="true" style="transform: scale(4)"></i>','<i class="fa fa-angle-right" aria-hidden="true" style="transform: scale(4)"></i>']
                });

                //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
                $(element_id+' .owl-controls').attr('style', 'margin-top: 0;');

                var screen_display=<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                console.log(screen_display);
                var margin_side=(screen_display-screen_display*(<?= $this->agent->is_mobile() ? '69' : '103' ?>)/100)/2;
                console.log('screen : '+screen_display+'nav : '+screen_display*<?= $this->agent->is_mobile() ? '8' : '9' ?>0/100+'batas : '+margin_side);
                <?php
                if($this->agent->is_mobile()){
                    echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 303px;width: 74%;right: '+margin_side+'px;')";
                }else{
                    echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 270px;width: 105%;right: '+margin_side+'px;')";
                }
                ?>
            });

        </script>

    </div>
</section>