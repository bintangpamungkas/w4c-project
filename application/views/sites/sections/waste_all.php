
<!-- Icon Blocks -->
<section id="waste" class="g-bg-gray-light-v5">
    <div class="container g-pt-150 g-pb-100">
        <div class="text-center g-mb-50">
            <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= lang('accepted_waste_title') ?></h2>
            <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
            <p class="text-muted"><?= lang('accepted_waste_subtitle') ?></p>
        </div>


        <div class="row">
            <div class="col-md-9" style="<?= $this->agent->is_mobile() ? '' : 'padding-right: 0;padding-left: 5px' ?>">

                <script>
                    $(document).on('click', '.click-waste', function () {
                        var waste=$(this).data('waste');
                        $('#waste_content').html($(waste).html());
                    })
                </script>
                <div id="waste_all-carousel" class="owl-theme" style="margin: 0 0 30px 0!important;">
                    <?php
                    $id = [
                        [
                            'title' => 'Kertas',
                            'title_id' => 'paper',
                            'icon' => 'icon-education-133 u-line-icon-pro',
                            'description' => 'Kertas HVS, Art Paper, Koran, Majalah, Kardus/ Karton, Buku Tulis, dan Buku lainnya.',
                            'waste' => [
                                [
                                    'waste_name' => 'Kardus',
                                    'waste_image' => '11.jpg',
                                ],
                                [
                                    'waste_name' => 'Majalah',
                                    'waste_image' => '12.jpg',
                                ],
                                [
                                    'waste_name' => 'Kemasan Makanan',
                                    'waste_image' => '13.jpg',
                                ],
                                [
                                    'waste_name' => 'Kertas HVS',
                                    'waste_image' => '14.jpg',
                                ],
                            ],
                        ],
                        [
                            'title' => 'Plastik',
                            'title_id' => 'plastic',
                            'icon' => 'icon-food-260 u-line-icon-pro',
                            'description' => 'Botol Minum, Botol Sabun/ Sampo, Jerigen, Toples Makanan, dan Barang berbahan plastik lainnya dengan kode 1 hingga 7',
                            'waste' => [
                                [
                                    'waste_name' => 'Botol Minum',
                                    'waste_image' => '21.jpg',
                                ],
                                [
                                    'waste_name' => 'Jerigen',
                                    'waste_image' => '22.jpg',
                                ],
                                [
                                    'waste_name' => 'Pipa Plastik',
                                    'waste_image' => '23.jpg',
                                ],
                                [
                                    'waste_name' => 'Toples Plastik',
                                    'waste_image' => '24.jpg',
                                ],
                            ],
                        ],
                        [
                            'title' => 'Kaca',
                            'title_id' => 'glass',
                            'icon' => 'icon-food-008 u-line-icon-pro',
                            'description' => 'Botol Kaca, Kaca Jendela, Cermin, Vas Kaca, Piring, Gelas, dan Barang berbahan kaca lainnya.',
                            'waste' => [
                                [
                                    'waste_name' => 'Gelas',
                                    'waste_image' => '31.jpg',
                                ],
                                [
                                    'waste_name' => 'Botol Kaca',
                                    'waste_image' => '32.jpg',
                                ],
                                [
                                    'waste_name' => 'Mangkok',
                                    'waste_image' => '33.jpg',
                                ],
                                [
                                    'waste_name' => 'Pigura',
                                    'waste_image' => '34.jpg',
                                ],
                            ],
                        ],
                        [
                            'title' => 'Metal',
                            'title_id' => 'metal',
                            'icon' => 'icon-food-056 u-line-icon-pro',
                            'description' => 'Kaleng Minuman/ Buah/ Makanan, Peralatan Makan/ Masak Besi, Seng, dan Barang berbahan metal lainnya.',
                            'waste' => [
                                [
                                    'waste_name' => 'Kaleng',
                                    'waste_image' => '41.jpg',
                                ],
                                [
                                    'waste_name' => 'Mesin',
                                    'waste_image' => '42.jpg',
                                ],
                                [
                                    'waste_name' => 'Panci',
                                    'waste_image' => '43.jpg',
                                ],
                                [
                                    'waste_name' => 'Teralis',
                                    'waste_image' => '44.jpg',
                                ],
                            ],
                        ],
                        [
                            'title' => 'Karet',
                            'title_id' => 'rubber',
                            'icon' => 'fa fa-life-saver',
                            'description' => 'Ban Bekas ukuran apapun dan Barang berbahan karet lainnya.',
                            'waste' => [
                                [
                                    'waste_name' => 'Ban Dalam',
                                    'waste_image' => '51.jpg',
                                ],
                                [
                                    'waste_name' => 'Mainan Karet',
                                    'waste_image' => '52.jpg',
                                ],
                                [
                                    'waste_name' => 'Sarung Tangan Karet',
                                    'waste_image' => '53.jpg',
                                ],
                                [
                                    'waste_name' => 'Sandal Karet',
                                    'waste_image' => '54.jpg',
                                ],
                            ],
                        ],
                    ];
                    $en = [
                        [
                            'title' => 'Paper',
                            'title_id' => 'paper',
                            'icon' => 'icon-education-133 u-line-icon-pro',
                            'description' => 'HVS Paper, Art Paper, Newspaper, Magazine, Cardboard, Note Book, and other paper.',
                            'waste' => [
                                [
                                    'waste_name' => 'Cardboard',
                                    'waste_image' => '11.jpg',
                                ],
                                [
                                    'waste_name' => 'Magazine Paper',
                                    'waste_image' => '12.jpg',
                                ],
                                [
                                    'waste_name' => 'Paper Packaging',
                                    'waste_image' => '13.jpg',
                                ],
                                [
                                    'waste_name' => 'Blank Paper',
                                    'waste_image' => '14.jpg',
                                ],
                            ],
                        ],
                        [
                            'title' => 'Plastic',
                            'title_id' => 'plastic',
                            'icon' => 'icon-food-260 u-line-icon-pro',
                            'description' => 'Drinking Bottle, Soap/ Shampoo Bottle, Jerry Cans, Food Jar, and other plastic goods with codes from 1 until 7.',
                            'waste' => [
                                [
                                    'waste_name' => 'Drink Bottle',
                                    'waste_image' => '21.jpg',
                                ],
                                [
                                    'waste_name' => 'Jerry Can',
                                    'waste_image' => '22.jpg',
                                ],
                                [
                                    'waste_name' => 'Plastic Pipe',
                                    'waste_image' => '23.jpg',
                                ],
                                [
                                    'waste_name' => 'Plastic Jar',
                                    'waste_image' => '24.jpg',
                                ],
                            ],
                        ],
                        [
                            'title' => 'Glass',
                            'title_id' => 'glass',
                            'icon' => 'icon-food-008 u-line-icon-pro',
                            'description' => 'Glass Bottle, Glass Window, Mirror, Glass Vase, Glass Plate and Cup, and other glassware.',
                            'waste' => [
                                [
                                    'waste_name' => 'Drink Glass',
                                    'waste_image' => '31.jpg',
                                ],
                                [
                                    'waste_name' => 'Glass Bottle',
                                    'waste_image' => '32.jpg',
                                ],
                                [
                                    'waste_name' => 'Bowl',
                                    'waste_image' => '33.jpg',
                                ],
                                [
                                    'waste_name' => 'Frame',
                                    'waste_image' => '34.jpg',
                                ],
                            ],
                        ],
                        [
                            'title' => 'Metal',
                            'title_id' => 'metal',
                            'icon' => 'icon-food-056 u-line-icon-pro',
                            'description' => 'Beverage Cans, Food Cans, Stainless Steel Tableware, Cookware, Iron Sheeting, and other objects made from iron.',
                            'waste' => [
                                [
                                    'waste_name' => 'Can',
                                    'waste_image' => '41.jpg',
                                ],
                                [
                                    'waste_name' => 'Machine',
                                    'waste_image' => '42.jpg',
                                ],
                                [
                                    'waste_name' => 'Pan',
                                    'waste_image' => '43.jpg',
                                ],
                                [
                                    'waste_name' => 'Fence',
                                    'waste_image' => '44.jpg',
                                ],
                            ],
                        ],
                        [
                            'title' => 'Rubber',
                            'title_id' => 'rubber',
                            'icon' => 'fa fa-life-saver',
                            'description' => 'Used Tires of all sizes and other objects made from rubber.',
                            'waste' => [
                                [
                                    'waste_name' => 'Tube',
                                    'waste_image' => '51.jpg',
                                ],
                                [
                                    'waste_name' => 'Rubber Toys',
                                    'waste_image' => '52.jpg',
                                ],
                                [
                                    'waste_name' => 'Rubber Glove',
                                    'waste_image' => '53.jpg',
                                ],
                                [
                                    'waste_name' => 'Rubber Slippers',
                                    'waste_image' => '54.jpg',
                                ],
                            ],
                        ],
                    ];

                    if($this->session->userdata('language')=='id'){
                        $xw=$id;
                    }else{
                        $xw=$en;
                    }
                    $number = 1;

                    foreach($xw as $x) :
                        ?>
                        <div class="g-color-white--hover">
                            <!-- Icon Blocks -->
                            <div class="u-shadow-v21--hover g-brd-around g-brd-blue <?= $this->agent->is_mobile() ? '' : 'g-brd-left-none g-mr-minus-1' ?> g-brd-transparent--hover g-bg-blue--hover g-transition-0_3 g-cursor-pointer g-px-30 g-pt-30 g-pb-50 g-min-height-300" style="height: 322px;">
                                <div class="mb-1">
                                    <span class="u-icon-v3 u-shadow-v1-7 g-bg-white g-color-blue rounded-circle mb-4">
                                        <i class="<?= $x['icon'] ?>"></i>
                                    </span>
                                    <h3 class="h5 g-font-weight-600 mb-3 text-uppercase"><?= $x['title'] ?></h3>
                                    <p><?= $x['description'] ?></p>
                                    <a data-target="#globalModal" data-waste="#<?= $x['title_id'] ?>" data-size="modal-lg" data-content="#waste_example" data-toggle="modal" data-modal-title="<?= lang('accepted_waste_modal_title') ?>" class="click-modal click-waste"><u><b><?= strtoupper(lang('accepted_waste_see_example')) ?></b></u></a>
                                </div>
                                <div class="d-none">
                                    <div id="<?= $x['title_id'] ?>">
                                        <?php
                                        foreach ($x['waste'] as $waste):
                                            ?>
                                            <div class="col-md-3 col-6 u-block-hover pb-2">
                                                <img class="img-fluid u-block-hover__main--zoom-v1" src="<?= base_url('assets/img/waste/all/'.$waste['waste_image']) ?>">
                                                <div class="text-center mt-4"><?= $waste['waste_name'] ?></div>
                                            </div>
                                            <?php
                                        endforeach;
                                        ?>
                                    </div>
                                </div>
                            </div>
                            <!-- End Icon Blocks -->
                        </div>
                        <?php
                    endforeach;
                    ?>
                </div>

            </div>
            <div class="col-md-3" style="<?= $this->agent->is_mobile() ? '' : 'padding-left: 0' ?>">
                <div class="js-slide g-color-white">
                    <!-- Icon Blocks -->
                    <div class="u-shadow-v21--hover g-brd-around g-brd-bluegray g-brd-right-none g-brd-transparent--hover g-bg-bluegray g-bg-blue--hover g-transition-0_3 g-cursor-pointer g-px-30 g-pt-30 g-pb-10 g-ml-minus-1 g-min-height-300" style="height: 322px;">
                        <div class="mb-4">
                            <span class="u-icon-v3 u-shadow-v1-7 g-bg-white g-color-blue rounded-circle mb-4">
                                <i class="icon-communication-112 u-line-icon-pro"></i>
                            </span>
                            <h3 class="h5 g-font-weight-600 mb-3"><?= lang('accepted_waste_brand_title') ?></h3>
                            <p><?= lang('accepted_waste_brand_description') ?></p>
                            <div>
                                <a class="click_scroll btn u-btn-primary g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9 <?= $this->agent->is_mobile() ? 'btn-block' : '' ?>" href="#brand">
                                    <?= lang('accepted_waste_brand_btn_explore') ?>
                                    <span class="align-middle u-icon-v3 g-width-16 g-height-16 g-color-black g-bg-white g-font-size-11 rounded-circle ml-3">
                                      <i class="fa fa-angle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- End Icon Blocks -->
                </div>

            </div>

        </div>

        <script>
            $(window).ready(function () {
                var element_id='#waste_all-carousel';
                $(element_id).owlCarousel({
                    loop:true,
                    margin:0,
                    dots:<?= !$this->agent->is_mobile() && count($xw)<3 ? 'false' : 'true' ?>,
                    nav:true,
                    autoplay:true,
                    autoplayTimeout:2500,
                    autoplayHoverPause:true,
                    responsive:{
                        0:{
                            items:1
                        },
                        600:{
                            items:3
                        },
                        1000:{
                            items:3
                        }
                    },
                    navText : ['<i class="fa fa-angle-left g-color-black nav-arrow-left" aria-hidden="true" style="transform: scale(2)"></i>','<i class="fa fa-angle-right g-color-black nav-arrow-right" aria-hidden="true" style="transform: scale(2)"></i>']
                });

                //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
                $(element_id+' .owl-controls').attr('style', 'margin-top: 20px;');

                var screen_display=<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                console.log(screen_display);
                var margin_side=(screen_display-screen_display*(<?= $this->agent->is_mobile() ? '60' : '82' ?>)/100)/2;
                console.log('screen : '+screen_display+'nav : '+screen_display*<?= $this->agent->is_mobile() ? '8' : '9' ?>0/100+'batas : '+margin_side);
                <?php
                if($this->agent->is_mobile()){
                    echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 308px;width: 68%;right: '+margin_side+'px;')";
                }else{
                    echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 310px;width: 86%;right: '+margin_side+'px;')";
                }
                ?>

            });

        </script>

    </div>


</section>
<!-- End Icon Blocks -->
