<!-- // TODO - Change navigation possition so can be use to many configuration -->
<!-- Use user -->
<?php
if (($this->agent->is_mobile() && count($section->section_items) > 1) || count($section->section_items) > 3) {
  $carousel = true;
} else {
  $carousel = false;
} ?>
<section class="g-bg-white">
  <div id="<?= $section_slug ?>" style="height: 0px;position: absolute;width: 80%;margin-top: -100px"></div>
  <div style="g-bg-white">
    <div class="container <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-py-70' ?>">
      <div class="text-center">
        <h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?= $section->section_title ?></h2>
        <hr class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue">
        <p class="g-color-white-opacity-0_8 d-none"><?= get_lang('brand_partner_subtitle') ?></p>
      </div>
      <div class="">
        <div class="">
          <div id="<?= $section_slug ?>-carousel" class="owl-theme row no-gutters justify-content-around" style="margin: 0 0 30px 0!important;padding:0px">
            <?php
            foreach ($section->section_items as $item) :
            ?>
              <div class="<?= $carousel == true ? '' : ($this->agent->is_mobile() ? 'col-6' : 'col-3') ?> g-px-30  text-center">
                <div class="rounded <?= $this->agent->is_mobile() ? 'g-mx-3 g-mb-5' : 'g-mx-10 g-mb-10' ?>">
                  <img class="img-fluid mx-auto" src="<?= get_image(DIR_SERVICE . '/' . $service_id . '/' . $item->item_image) ?>" alt="Logo <?= $item->item_title ?> Image">
                </div>
                <div class="g-font-size-14"><?= $item->item_title ?></div>
              </div>
            <?php
            endforeach;
            ?>
          </div>
          <?php if ($carousel == true) : ?>
            <script>
              $(window).ready(function() {
                var element_id = '#<?= $section_slug ?>-carousel';
                $(element_id).owlCarousel({
                  loop: true,
                  margin: 0,
                  dots: true,
                  nav: true,
                  autoplay: true,
                  autoplayTimeout: 1500,
                  autoplayHoverPause: true,
                  responsive: {
                    0: {
                      items: 1
                    },
                    600: {
                      items: 2
                    },
                    1000: {
                      items: 3
                    }
                  },
                  navText: ['<i class="<?= $this->agent->is_mobile() ? 'fa fa-angle-left g-color-gray-light-v1 nav-arrow-left' : 'fa fa-angle-left g-color-w4c-blue-v1' ?>" aria-hidden="true" style="transform: scale(<?= $this->agent->is_mobile() ? '2' : '4' ?>)"></i>', '<i class="<?= $this->agent->is_mobile() ? 'fa fa-angle-right g-color-gray-light-v1 nav-arrow-right' : 'fa fa-angle-right g-color-w4c-blue-v1' ?>" aria-hidden="true" style="transform: scale(<?= $this->agent->is_mobile() ? '2' : '4' ?>)"></i>']
                });

                //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
                $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
                var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
                var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '98.5' ?>) / 100) / 2;
                <?php
                if ($this->agent->is_mobile()) {
                  echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 170px;margin-top: 175px;width: 74%;right: '+margin_side+'px;')";
                } else {
                  echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 60px;width: 101.5%;right: '+margin_side+'px;')";
                }
                ?>
              });
            </script>
          <?php endif; ?>

        </div>
      </div>
    </div>
</section>