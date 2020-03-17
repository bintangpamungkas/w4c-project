
<section class="<?= $this->agent->is_mobile() ? 'g-pb-50' : 'g-pb-100' ?>" style="background-color: #f8f8f8">

    <div id="treat" style="height: 200px;position: absolute;width: 100%;margin-top: -80px"></div>

    <div class="container">

        <div class="row">
            <div class="col-md-3">
                <div class="g-mt-20 <?= $this->agent->is_mobile() ? '' : 'g-pr-40' ?>">
                    <br>
                    <br>
                    <div class="g-mb-30 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
                        <h2 class="g-color-black g-font-weight-600 g-line-height-1_2 mb-4 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>">
                            <?= lang('treat_title') ?>
                        </h2>
                        <p class="g-font-weight-300 text-muted <?= $this->agent->is_mobile() ? 'g-font-size-14' : 'g-font-size-16' ?>">
                            <?php
                            if($brand_id=='tetrapak'){
                                $subtitle_id='Sebelum mengirimkan kemasan bekas minuman, ketahui dahulu 3L (Lipat, Letak, Lepas) untuk menyiapkannya agar mudah untuk didaur ulang';
                                $subtitle_en='Sebelum mengirimkan kemasan bekas minuman, ketahui dahulu 3L (Lipat, Letak, Lepas) untuk menyiapkannya agar mudah untuk didaur ulang';
                                if($this->session->userdata('language')=='en'){
                                    $subtitle=$subtitle_en;
                                }else{
                                    $subtitle=$subtitle_id;
                                }
                            }else{
                                $subtitle=lang('treat_subtitle');
                            }
                            ?>
                            <?= $subtitle ?>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div id="carousel2" class="js-carousel" data-infinite="true">
                    <?php
                    $treat_id = [
                        [
                            'type' => 'BOTOL PLASTIK',
                            'title' => 'Remas Botol Plastik',
                            'image' => 'cocacola_squeeze.jpg',
                            'for' => 'cocacola',
                            'description' => 'Pastikan botol plastik dalam kondisi kosong. Lalu remas botol plastik, untuk menghemat volume.',
                        ],
                        [
                            'type' => 'KALENG',
                            'title' => 'Crush the Can',
                            'image' => 'cocacola_can.jpg',
                            'for' => 'cocacola',
                            'description' => 'Crush the can to maximize the volume of your box.',
                        ],
                        [
                            'type' => 'LIPAT',
                            'title' => 'Buka Lipatan',
                            'image' => 'TetraPak_1.jpg',
                            'for' => 'tetrapak',
                            'description' => 'Pastikan Anda telah mengkonsumsi produk terbaik dalam kemasan Tetra Pak dan mengosongkannya untuk kemudian membuka lipatan atas dan bawah.',
                        ],
                        [
                            'type' => 'LETAK',
                            'title' => 'Letakkan Sedotan ke dalam Kemasan',
                            'image' => 'TetraPak_3.jpg',
                            'for' => 'tetrapak',
                            'description' => 'Letakkan sedotan dan tutup kemasan untuk memasikan sedotan ikut terkirim dan terdaur ulang dengan benar',
                        ],
                        [
                            'type' => 'LEPAS',
                            'title' => 'Pipihkan dan Lepaskan di Tempat Sampah Terpilah',
                            'image' => 'TetraPak_2.jpg',
                            'for' => 'tetrapak',
                            'description' => 'Kemasan karton bekas minuman perlu dipipihkan dan dipilah, untuk membantu meningkatkan kualitas pengiriman',
                        ],
                    ];
                    $treat_en = [
                        [
                            'type' => 'PLASTIC BOTTLE',
                            'title' => strtoupper('Squezee plastic bottle'),
                            'image' => 'cocacola_squeeze.jpg',
                            'for' => 'cocacola',
                            'description' => 'Squezee plastic bottle to maximazing box volume.',
                        ],
                        [
                            'type' => 'CAN',
                            'title' => 'Crush the Can',
                            'image' => 'cocacola_can.jpg',
                            'for' => 'cocacola',
                            'description' => 'Crush the can to maximize the volume of your box.',
                        ],
                        [
                            'type' => 'KARTON #1',
                            'title' => 'Empty The Packaging',
                            'image' => 'TetraPak_1.jpg',
                            'for' => 'tetrapak',
                            'description' => 'Make sure all the waste is dry, not moist or wet.',
                        ],
                        [
                            'type' => 'KARTON #2',
                            'title' => 'Push The Straw',
                            'image' => 'TetraPak_3.jpg',
                            'for' => 'tetrapak',
                            'description' => 'Push the straw back in to make sure the straw is also recycled.',
                        ],
                        [
                            'type' => 'KARTON #3',
                            'title' => 'Flatten The Carton',
                            'image' => 'TetraPak_2.jpg',
                            'for' => 'tetrapak',
                            'description' => 'Unfold Tetra Pak used packaging and flatten it.',
                        ],
                    ];

                    if($this->session->userdata('language')=='en'){
                        $x=$treat_en;
                    }else{
                        $x=$treat_id;
                    }
                    $number = 1;
                    $number2 = 1;

                    foreach($x as $x) :
                        if($x['image']==''){
                            $x_image='An-easy-guide-to-sorting-waste-at-home.jpg';
                        }else{
                            $x_image=$x['image'];
                        }
                        $for=empty(@$brand_id) ? 'general' : $brand_id;
                        if($x['for']==$for){
                            ?>
                            <div class="js-slide g-pb-70 g-pb-100--sm" data-title="<?= $x['type'] ?>">
                                <!-- Dynamic Process -->
                                <div class="row no-gutters">
                                    <div class="col-lg-8 g-min-height-200 g-bg-size-cover g-bg-pos-center" style="background-image: url(<?= base_url(DIR_IMG.'bg/'.$x_image)?>);"></div>
                                    <div class="col-lg-4 g-bg-black-opacity-0_1 g-pa-30 g-pa-50--sm">
                                        <h3 class="h3 g-color-blue g-font-weight-700 g-mb-10"><small class="g-font-size-14"><?= lang('treatment_for') ?> </small><br><?= $x['type'] ?></h3>

                                        <div style="min-height: 175px;">
                                            <h4 class="font-weight-bold mb-3"><?= $x['title'] ?></h4>
                                            <p class="g-color-black-opacity-0_7">
                                                <?= $x['description'] ?>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Dynamic Process -->
                            </div>
                            <?php
                        }
                    endforeach;
                    ?>
                </div>
            </div>
        </div>

    </div>
</section>
