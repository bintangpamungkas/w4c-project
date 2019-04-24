
<div class="col-md-12" style="position: absolute;margin-top: -150px;display: flex">
    <div id="counter" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>

    <!-- Box Shadow -->
    <div class="<?= $this->agent->is_mobile() ? '' : 'col-md-12' ?>">
        <div class="<?= $this->agent->is_mobile() ? '' : 'container' ?>">
            <div class="u-shadow-v1-5 g-line-height-2 bg-white g-rounded-6" role="alert" style="padding: <?= $this->agent->is_mobile() ? '30px' : '50px' ?>!important;">

                <div class="row">
                    <div class="col-md-2">
                        <header class="text-uppercase g-mb-35">
                            <div class="g-mb-15">
                                <h6 class="g-color-info d-none"><?= lang('about') ?> <strong>Waste4Change</strong></h6>
                                <h3 class="h3 g-font-weight-700 mb-0 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= lang('counter_title') ?></h3>
                            </div>
                            <div class="g-width-70 g-brd-bottom g-brd-2 g-brd-blue"></div>
                        </header>
                    </div>
                    <div class="col-md-10">

                        <div class="row">
                            <div class="col-lg-6 col-sm-6 g-pb-30">
                                <div class="d-flex justify-content-sm-center">
                                    <span class="u-icon-v3 g-bg-teal rounded-circle g-mt-2 g-mr-15 g-color-white">
                                      <i class="icon-user"></i>
                                  </span>

                                  <div class="g-line-height-1" style="<?= $this->agent->is_mobile() ? 'padding-top: 8px' : '' ?>">
                                    <h4 class="g-font-weight-300 <?= $this->agent->is_mobile() ? 'g-font-size-25' : 'g-font-size-35' ?>" style="margin: 0!important;line-height: 1.2">2<?= lang('separator_coma') ?>427</h4>
                                    <div class="js-counter g-color-black-opacity-0_3 <?= $this->agent->is_mobile() ? 'g-font-size-10' : 'g-font-size-16' ?>" data-comma-separated="true"><?= lang('counter_label_change_maker') ?></div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 col-sm-6 g-pb-30">
                            <div class="d-flex justify-content-sm-center">
                                <span class="u-icon-v3 g-bg-primary rounded-circle g-mt-2 g-mr-15 g-color-white">
                                  <i class="et-icon-recycle"></i>
                              </span>

                              <div class="g-line-height-1" style="<?= $this->agent->is_mobile() ? 'padding-top: 8px' : '' ?>">
                                <h4 class="g-font-weight-300 <?= $this->agent->is_mobile() ? 'g-font-size-25' : 'g-font-size-35' ?>" style="margin: 0!important;line-height: 1.2">3<?= lang('separator_coma') ?>002 <span class="g-font-size-18 text-muted">KG</span></h4>
                                <div class="js-counter g-color-black-opacity-0_3 <?= $this->agent->is_mobile() ? 'g-font-size-10' : 'g-font-size-16' ?>" data-comma-separated="true"><?= lang('counter_label_recycled_waste') ?></div>
                            </div>
                        </div>
                    </div>


                </div>

            </div>
        </div>

    </div>
</div>
</div>
<!-- End Box Shadow -->

</div>

