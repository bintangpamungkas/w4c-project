<section class="g-bg-white g-py-70">
            <div class="container">
                <div class="text-center g-mb-50">
                    <h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase "><?php echo $serviceWasteManagement['alurSampah']['title'] ?></h2>
                    <hr class="g-width-70 g-mt-10 g-mb-0 g-brd-2 g-brd-blue">
                    <div class="mt-2 mb-4"> <?php echo $serviceWasteManagement['alurSampah']['desc'] ?></div>

                    <!-- Services target navivation -->
                                        <script>
                        $(document).on('click', '.my_tab_2', function () {
                            var tab_target = $(this).data('tab');
                            $('.my_tab_2').removeClass('tab-active');
                            $(this).addClass('tab-active');
                            $('.my_tab_content').addClass('d-none');
                            console.log($(tab_target).attr('class'));
                            $(tab_target).removeClass('d-none');
                        });
                    </script>
                    <!-- END Services target navivation -->
                </div>


                <div class="row justify-content-center">
                    <?php foreach ($serviceWasteManagement['alurSampah']['index'] as $valAlurSampah) : ?>
                        <?php if ($valAlurSampah['value'] != '') : ?>
                    <div class="col-md-4">
                        <article class="g-transition-0_3">
                            <div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 30px 0 0 0!important;">
                                <img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?php echo $valAlurSampah['img'] ?>" alt="Image Description" style="width: 40%">
                                <div class="g-pa-15">
                                    <h2 class="h5 g-color-black g-font-weight-600 mb-4 g-font-size-15" style="margin-bottom: 5px!important;">
                                        <?php echo $valAlurSampah['value'] ?>                                              </h2>
                                </div>
                            </div>
                        </article>
                    </div>
                      <?php endif; ?>
                    <?php endforeach; ?>
                                                           
                </div>
            </div>
        </section>