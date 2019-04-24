
<section id="treat" class="g-pb-100">
    <div class="container">

        <div class="row">
            <div class="col-md-12 text-center">
                <div class="g-mt-20 <?= $this->agent->is_mobile() ? '' : 'g-pr-40' ?>">
                    <br>
                    <br>
                    <div class="g-mb-30 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
                        <h2 class="g-color-black g-font-weight-600 g-line-height-1_2 mb-4">
                            <?= lang('treat_title') ?>
                        </h2>
                        <p class="g-font-weight-300 g-font-size-16 text-muted">
                            <?= lang('treat_subtitle') ?>
                        </p>
                    </div>
                </div>
                <br>
            </div>
            <div class="col-md-12">
                <div class="u-shadow-v1-5">
                    <!-- Nav tabs -->
                    <ul class="nav text-center u-nav-blue nav-justified u-nav-v1-1" role="tablist" data-target="nav-1-1-default-hor-left-big-icons-notext" data-tabs-mobile-type="slide-up-down" data-btn-classes="btn btn-md btn-block rounded-0 u-btn-outline-lightgray g-mb-20">
                        <?php
                        $id = [
                            [
                                'type' => 'SAMPAH SECARA UMUM',
                                'title' => 'Keringkan Sampah',
                                'image' => '',
                                'number' => '1',
                                'description' => 'Pastikan sampah dalam keadaan kering, tidak basah atau pun lembab.',
                            ],
                            [
                                'type' => 'BOTOL PLASTIK',
                                'title' => 'Remas Botol Plastik',
                                'image' => 'remas_botol.jpg',
                                'number' => '2',
                                'description' => 'Pastikan botol plastik dalam kondisi kosong. Lalu remas botol plastik, untuk menghemat volume.',
                            ],
                            [
                                'type' => 'KERTAS',
                                'title' => 'Lipat Kertas, Karton',
                                'image' => 'Folding.jpg',
                                'number' => '3',
                                'description' => 'Lipat sampah jenis kertas agar memaksimalkan volume/ ruang pengiriman.',
                            ],
                        ];
                        $en = [
                            [
                                'type' => 'WASTE IN GENERAL',
                                'title' => strtoupper('Dried the waste'),
                                'image' => '',
                                'number' => '1',
                                'description' => 'Make sure all the waste is dry, not moist or wet.',
                            ],
                            [
                                'type' => 'PLASTIC BOTTLE',
                                'title' => strtoupper('Squezee plastic bottle'),
                                'image' => 'remas_botol.jpg',
                                'number' => '2',
                                'description' => 'Squezee plastic bottle to maximazing box volume.',
                            ],
                            [
                                'type' => 'PAPER',
                                'title' => strtoupper('Fold the paper'),
                                'image' => 'Folding.jpg',
                                'number' => '3',
                                'description' => 'Fold paper neatly and maximizing the logistic box space.',
                            ],
                        ];

                        if($this->session->userdata('language')=='id'){
                            $x=$id;
                        }else{
                            $x=$en;
                        }
                        foreach($x as $x) :
                            if($x['image']==''){
                                $x_image='An-easy-guide-to-sorting-waste-at-home.jpg';
                            }else{
                                $x_image=$x['image'];
                            }
                            ?>
                            <li class="nav-item">
                                <a class="nav-link g-cursor-pointer g-bg-bluegray--hover g-color-white--hover <?= $x['number']==1 ? 'active' : '' ?>" data-toggle="tab" data-target="#nav-1-1-default-hor-left-big-icons-notext--<?= $x['number'] ?>" role="tab">
                                    <div class="pt-2 pb-2">
                                        <i class="icon-christmas-037 g-font-size-25 u-tab-line-icon-pro mr-2"></i> <?= $x['type'] ?>
                                    </div>
                                </a>
                            </li>
                            <?php
                        endforeach;
                        ?>
                    </ul>
                    <!-- End Nav tabs -->

                    <!-- Tab panes -->
                    <div id="nav-1-1-default-hor-left-big-icons-notext" class="tab-content">
                        <?php

                        if($this->session->userdata('language')=='id'){
                            $x=$id;
                        }else{
                            $x=$en;
                        }
                        foreach($x as $x) :
                            if($x['image']==''){
                                $x_image='An-easy-guide-to-sorting-waste-at-home.jpg';
                            }else{
                                $x_image=$x['image'];
                            }
                            ?>
                            <div class="tab-pane fade show <?= $x['number']==1 ? 'active' : '' ?>" id="nav-1-1-default-hor-left-big-icons-notext--<?= $x['number'] ?>" role="tabpanel">
                                <div class="row no-gutters">
                                    <div class="col-lg-8 g-min-height-400 g-bg-size-cover g-bg-pos-center py-4 px-4">
                                        <img class="img-fluid" src="<?= base_url('assets/img/bg/'.$x_image)?>">
                                    </div>
                                    <div class="col-lg-4 g-pa-30 g-pa-50--sm">
                                        <h3 class="h3 g-color-blue g-font-weight-700 g-mb-10"><small class="g-font-size-14"><?= lang('treatment_for') ?> </small><br><?= $x['type'] ?></h3>

                                        <div>
                                            <h4 class="font-weight-bold mb-3"><?= $x['title'] ?></h4>
                                            <p class="g-color-black-opacity-0_7 g-mb-30">
                                                <?= $x['description'] ?>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <?php
                        endforeach;
                        ?>
                    </div>
                    <!-- End Tab panes -->
                </div>

                <div class="shortcode-scripts">
                    <!-- JS Unify -->
                    <script  src="<?= base_url('assets/js/components/hs.tabs.js') ?>"></script>

                    <!-- JS Plugins Init. -->
                    <script >
                        $(document).on('ready', function () {
                            // initialization of tabs
                            $.HSCore.components.HSTabs.init('[role="tablist"]');
                        });

                        $(window).on('resize', function () {
                            setTimeout(function () {
                                $.HSCore.components.HSTabs.init('[role="tablist"]');
                            }, 200);
                        });
                    </script>
                </div>
            </div>
        </div>

    </div>
</section>
