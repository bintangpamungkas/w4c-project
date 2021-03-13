<section class="g-bg-white">
  <div id="what-you-get" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
  <div class="container g-py-70">

    <div class="row">
      <div class="col-md-5 col-xs-12">
        <div class="mb-2 ">
          <span class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase g-font-size-25"><?php echo $serviceWasteManagement['ygDidapat']['title'] ?></span>
          <div class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue"></div>          <div class="mt-2 mb-6"> <?php echo $serviceWasteManagement['ygDidapat']['desc'] ?></div>
        </div>
      </div>
      <div class="col-md-7 col-xs-12">
        <div class="row">
          <?php foreach ($serviceWasteManagement['ygDidapat']['index'] as $valygDidapat) : ?>
      <?php if ($valygDidapat['value'] != '') : ?>

        <div class="col-md-6 col-xs-12 g-line-height-1_3">
              <div class="row no-gutters g-my-25 ">
                <div class="col-auto">
                                      <img src="<?php echo $valygDidapat['img'] ?>" alt="<?php echo $valygDidapat['value'] ?>" style="max-width: 70px;max-height: 70px; margin-right: 10px; margin-top: -25px;">
                                  </div>
                <div class="col">
                  <?php echo $valygDidapat['value'] ?>
                </div>
              </div>
            </div>
      <?php endif; ?>
    <?php endforeach; ?>
        </div>
      </div>
    </div>
  </div>
</section>