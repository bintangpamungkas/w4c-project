<section class="<?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-0' : 'g-pt-100 g-pb-100' ?>">

    <div id="feature" style="height: 10px;position: absolute;width: 80%;margin-top: -200px"></div>

    <div class="container">
        <div class="text-center g-mb-50">
            <h2 class="g-color-black g-font-weight-600 "><?= strtoupper(lang('pricing')) ?></h2>
            <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
        </div>
        <div class="row no-gutters align-items-center">

            <?php
            $pricing=[
                'id' => [
                    [
                        'title' => 'Bulanan',
                        'price' => '125.000',
                        'unit' => 'per month',
                    ],
                ],
                'en' => [
                    [
                        'title' => 'available for Bekasi and around areas',
                        'icon' => 'fa fa-check',
                        'color' => 'info',
                    ],
                ],
            ];
            $pricing=$this->session->userdata('language')=='en' ? $pricing['en'] : $pricing['id'];
            $number=1;
            foreach ($pricing as $data):
                ?>
                <div class="col-md-4 g-mb-30">
                    <!-- Article -->
                    <article class="text-center g-brd-around g-color-gray g-brd-gray-light-v5 g-pa-10">
                        <div class="g-bg-gray-light-v5 g-pa-30">
                            <!-- Article Title -->
                            <h4 class="text-uppercase g-color-gray-dark-v3 g-font-weight-500 g-mb-10">Starter</h4>
                            <!-- End Article Title -->
                            <em class="g-font-style-normal">Ed feugiat porttitor nunc, non</em>

                            <hr class="g-brd-gray-light-v4 g-my-10">

                            <div class="g-color-primary g-my-20">
                                <strong class="d-block g-font-size-30 g-line-height-1_2">$24.00</strong> per month
                            </div>

                            <hr class="g-brd-gray-light-v4 g-mt-10 mb-0">

                            <ul class="list-unstyled g-mb-25">
                                <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12">Vivamus a fringilla lorem, vel faucibus ante. Nunc ullamcorper justo..</li>
                                <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12"><b>10%</b> In hac habitasse platea
                                </li>
                                <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12"><b>10gb</b> Praesent egestas ac arcu
                                </li>
                                <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12">
                                    <b>25</b> emails Sed eget aliquet nisl
                                </li>
                                <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12">
                                    <b>No</b> Proin laoreet accumsan nisl non
                                </li>
                            </ul>
                            <a class="btn btn-md rounded-0 u-btn-primary" href="#">Order Now</a>
                        </div>
                    </article>
                    <!-- End Article -->
                </div>
            <?php endforeach; ?>

            <div class="col-md-4 g-mb-30">
                <!-- Article -->
                <article class="text-center g-brd-around g-color-gray g-brd-gray-light-v5 g-pa-10">
                    <div class="g-bg-gray-light-v5 g-px-30 g-py-60">
                        <!-- Article Title -->
                        <h4 class="text-uppercase g-color-gray-dark-v3 g-font-weight-500 g-mb-10">Advanced</h4>
                        <!-- End Article Title -->
                        <em class="g-font-style-normal">Ed feugiat porttitor nunc, non</em>

                        <hr class="g-brd-gray-light-v4 g-my-10">

                        <div class="g-color-primary g-my-20">
                            <strong class="d-block g-font-size-30 g-line-height-1_2">$50.00</strong> per month
                        </div>

                        <hr class="g-brd-gray-light-v4 g-mt-10 mb-0">

                        <ul class="list-unstyled g-mb-25">
                            <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12">Vivamus a fringilla lorem, vel faucibus ante. Nunc ullamcorper justo..</li>
                            <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12"><b>20%</b> In hac habitasse platea
                            </li>
                            <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12"><b>20gb</b> Praesent egestas ac arcu
                            </li>
                            <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12">
                                <b>50</b> emails Sed eget aliquet nisl
                            </li>
                            <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12">
                                <b>Yes</b> Proin laoreet accumsan nisl non
                            </li>
                        </ul>
                        <a class="btn btn-md rounded-0 u-btn-primary" href="#">Order Now</a>
                    </div>
                </article>
                <!-- End Article -->
            </div>

            <div class="col-md-4 g-mb-30">
                <!-- Article -->
                <article class="text-center g-brd-around g-color-gray g-brd-gray-light-v5 g-pa-10">
                    <div class="g-bg-gray-light-v5 g-pa-30">
                        <!-- Article Title -->
                        <h4 class="text-uppercase g-color-gray-dark-v3 g-font-weight-500 g-mb-10">Starter</h4>
                        <!-- End Article Title -->
                        <em class="g-font-style-normal">Ed feugiat porttitor nunc, non</em>

                        <hr class="g-brd-gray-light-v4 g-my-10">

                        <div class="g-color-primary g-my-20">
                            <strong class="d-block g-font-size-30 g-line-height-1_2">$24.00</strong> per month
                        </div>

                        <hr class="g-brd-gray-light-v4 g-mt-10 mb-0">

                        <ul class="list-unstyled g-mb-25">
                            <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12">Vivamus a fringilla lorem, vel faucibus ante. Nunc ullamcorper justo..</li>
                            <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12"><b>10%</b> In hac habitasse platea
                            </li>
                            <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12"><b>10gb</b> Praesent egestas ac arcu
                            </li>
                            <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12">
                                <b>25</b> emails Sed eget aliquet nisl
                            </li>
                            <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12">
                                <b>No</b> Proin laoreet accumsan nisl non
                            </li>
                        </ul>
                        <a class="btn btn-md rounded-0 u-btn-primary" href="#">Order Now</a>
                    </div>
                </article>
                <!-- End Article -->
            </div>

            <div class="col-md-4 g-mb-30">
                <!-- Article -->
                <article class="text-center g-brd-around g-color-gray g-brd-gray-light-v5 g-pa-10">
                    <div class="g-bg-gray-light-v5 g-pa-30">
                        <!-- Article Title -->
                        <h4 class="text-uppercase g-color-gray-dark-v3 g-font-weight-500 g-mb-10">Professional</h4>
                        <!-- End Article Title -->
                        <em class="g-font-style-normal">Ed feugiat porttitor nunc, non</em>

                        <hr class="g-brd-gray-light-v4 g-my-10">

                        <div class="g-color-primary g-my-20">
                            <strong class="d-block g-font-size-30 g-line-height-1_2">$75.00</strong> per month
                        </div>

                        <hr class="g-brd-gray-light-v4 g-mt-10 mb-0">

                        <ul class="list-unstyled g-mb-25">
                            <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12">Vivamus a fringilla lorem, vel faucibus ante. Nunc ullamcorper justo..</li>
                            <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12"><b>30%</b> In hac habitasse platea
                            </li>
                            <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12"><b>40gb</b> Praesent egestas ac arcu
                            </li>
                            <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12">
                                <b>100</b> emails Sed eget aliquet nisl
                            </li>
                            <li class="g-brd-bottom g-brd-gray-light-v4 g-py-12">
                                <b>Yes</b> Proin laoreet accumsan nisl non
                            </li>
                        </ul>
                        <a class="btn btn-md rounded-0 u-btn-primary" href="#">Order Now</a>
                    </div>
                </article>
                <!-- End Article -->
            </div>
        </div>

    </div>
</section>
