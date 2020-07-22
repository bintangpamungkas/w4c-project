<style>
  .owl-carousel .active span {
    background: #17A2B8 !important;
  }
</style>
<!-- Slider -->
<section class="g-bg-white g-pt-150 g-pb-40">
  <div class="container g-font-asap g-font-color-w4c-1 g-font-size-<?= $this->agent->is_mobile() ? '24' : '35' ?> g-font-weight-600 text-center g-line-height-1_2">
    <?= $copy->slide->title ?>
  </div>
  <div>
    <div id="slide-carousel" class="g-mt-20">
      <!-- Items Iteration -->
      <?php if ($this->agent->is_mobile()) : ?>
        <?php foreach ($copy->slide->items as $item) : ?>
          <div class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-ml-15 g-rounded-5" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}' style="height:220px">
            <div class="divimage dzsparallaxer--target w-100 g-bg-pos-bottom-center" style="height: 220px;background: url(<?= get_image(DIR_BG . 'career/' . $item->image) ?>);background-size: cover;<?= $this->agent->is_mobile() ? 'background-position-x: right;' : '' ?>"></div>
            <div class=" pending-show animated d-zap" style="height: 573px; background-image: linear-gradient(90deg, #FFFFFF 0%, rgba(255, 255, 255, 0.9) 26.51%, rgba(255, 255, 255, 0.74) 47.79%, rgba(255, 255, 255, 0) 84.53%)">
              <div class="container">
                <div class="content-middle-fullscreen with-header middle-top justify-content-center">
                  <h3 class="g-font-color-w4c-1 g-font-weight-700 <?= $this->agent->is_mobile() ? 'g-font-size-18' : 'g-font-size-50 g-mt-30' ?> mb-4 g-font-asap" style="line-height: 1.2"><?= $item->title ?></h3>
                </div>
                <br>
              </div>
            </div>
          </div>
          <!-- <div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3">
            <div class="g-mx-auto">
              <img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= get_image(DIR_BG . 'career/' . $item->image) ?>" alt="<?= $copy->value->title . ' ' . $item->title ?>" style="height:573px;object-fit:cover">
            </div>
          </div> -->
        <?php endforeach; ?>
      <?php else : ?>
        <?php foreach ($copy->slide->items as $item) : ?>
          <div class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall " data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
            <div class="divimage dzsparallaxer--target w-100 g-bg-pos-bottom-center" style="height: 573px;background: url(<?= get_image(DIR_BG . 'career/' . $item->image) ?>);background-size: cover;<?= $this->agent->is_mobile() ? 'background-position-x: right;' : '' ?>"></div>
            <div class=" pending-show animated d-zap" style="height: 573px; background-image: <?= $this->agent->is_mobile() ? 'linear-gradient(180deg, rgba(255, 255, 255, 0.7) 20%, rgba(255, 255, 255, 0.9) 50%, rgba(255, 255, 255, 0.6) 100%)' : 'linear-gradient( 100deg , rgba(255, 255, 255,0.9) 0%, rgba(255, 255, 255, 0.85) 70%, rgba(255, 255, 255,0) 100%);' ?>">
              <div class="container">
                <div class="content-middle-fullscreen with-header middle-top <?= $this->agent->is_mobile() ? 'justify-content-center' : '' ?>">
                  <h3 class="g-font-color-w4c-1 g-font-weight-700 <?= $this->agent->is_mobile() ? 'g-font-size-18' : 'g-font-size-50 g-mt-30' ?> mb-4 g-font-asap" style="line-height: 1.2"><?= $item->title ?></h3>
                </div>
                <br>
              </div>
            </div>
          </div>
          <!-- <div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3">
            <div class="g-mx-auto">
              <img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= get_image(DIR_BG . 'career/' . $item->image) ?>" alt="<?= $copy->value->title . ' ' . $item->title ?>" style="height:573px;object-fit:cover">
            </div>
          </div> -->
        <?php endforeach; ?>
      <?php endif; ?>

      <!-- End Items Iteration -->
    </div>
  </div>

  <script>
    $(window).ready(function() {
      var element_id = '#slide-carousel';
      $(element_id).owlCarousel({
        loop: true,
        margin: 0,
        dots: false,
        nav: true,
        autoplay: false,
        autoplayTimeout: 1500,
        autoplayHoverPause: true,
        responsive: {
          0: {
            items: 1
          },
          600: {
            items: 1
          },
          1000: {
            items: 1
          }
        },
        navText: [
          '<i class="<?= $this->agent->is_mobile() ? 'd-none' : '' ?> fa fa-angle-left g-color-gray-light-v1 nav-arrow-left" aria-hidden="true" style="transform: scale(<?= $this->agent->is_mobile() ? '  2 ' : ' 2 ' ?>)"></i>', '<i class="<?= $this->agent->is_mobile() ? 'd-none' : '' ?> fa fa-angle-right g-color-gray-light-v1 nav-arrow-right" aria-hidden="true" style="transform: scale(<?= $this->agent->is_mobile() ? '  2 ' : '  2 ' ?>)"></i>'
        ]
      });

      //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
      $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
      var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
      // console.log(screen_display);
      var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '87' ?>) / 100) / 2;
      //console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
      $(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 260px;width: 83%;left: ' + margin_side + 'px;')
      //Hide last item after carousel init because if hide first courosel not working
    });
  </script>
</section>
<!-- End Slider -->

<!-- History -->
<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-60 g-pb-40' : 'g-bg-white g-pb-50 g-pt-100' ?>">
  <div class="container">
    <h2 class="g-font-asap g-color-black text-uppercase text-center g-font-weight-600 g-font-size-<?= $this->agent->is_mobile() ? '24' : '35 g-mb-10' ?>"><?= $copy->history->title ?></h2>
    <hr class="g-width-120 g-mt-20 g-mb-0 g-brd-2 g-brd-blue">
  </div>
  <?php if ($this->agent->is_mobile()) : ?>
    <div class="row justify-content-center g-mt-50 no-gutters ">
      <div id="history-carousel" class="col-md-11 col-12 align-self-end align-height-list">
        <!-- Items Iteration -->
        <?php foreach ($copy->history->items as $item) : ?>
          <!-- Job Item -->
          <div class="col-sm-3 g-px-13 g-mb-30 g-rounded-5">
            <article class="u-block-hover g-rounded-5">
              <img class="" src="<?= get_image(DIR_BG . 'career/' . $item->image) ?>" alt="Image Description" style="height:200px;object-fit:cover">
              <div class="g-color-white g-bg-info g-font-size-14 g-py-30 g-px-15 align-height-item">
                <div class="g-font-asap g-color-white g-font-weight-600 g-font-size-30 "><?= $item->year ?></div>
                <ul class="g-pl-20">
                  <?php foreach ($item->content as $content) : ?>
                    <li>
                      <?= $content ?>
                    </li>
                  <?php endforeach; ?>
                </ul>
              </div>
            </article>
          </div>
          <!-- End Job Item -->
        <?php endforeach; ?>
        <!-- End Items Iteration -->
      </div>
    </div>

    <script>
      $(window).ready(function() {
        var element_id = '#history-carousel';
        $(element_id).owlCarousel({
          loop: true,
          margin: 0,
          dots: true,
          nav: false,
          autoplay: false,
          autoplayTimeout: 1500,
          autoplayHoverPause: true,
          responsive: {
            0: {
              items: 1
            },
            600: {
              items: 1
            },
            1000: {
              items: 1
            }
          },
          navText: ['<i class="<?= $this->agent->is_mobile() ? ' fa fa-angle-left g-color-gray-light-v1 nav-arrow-left ' : ' fa fa-angle-left g-color-w4c-blue-v1 ' ?>" aria-hidden="true" style="transform: scale(<?= $this->agent->is_mobile() ? '  2 ' : ' 4 ' ?>)"></i>', '<i class="<?= $this->agent->is_mobile() ? 'fa fa-angle-right g-color-gray-light-v1 nav-arrow-right ' : ' fa fa-angle-right g-color-w4c-blue-v1 ' ?>" aria-hidden="true" style="transform: scale(<?= $this->agent->is_mobile() ? '  2 ' : '  4 ' ?>)"></i>']
        });

        //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
        $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
        var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
        // console.log(screen_display);
        var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '60' : '98.5' ?>) / 100) / 2;
        //console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
        // $(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 410px;width: 70%;right: ' + margin_side + 'px;')
        //Hide last item after carousel init because if hide first courosel not working
      });
    </script>

  <?php else : // DESKTOP 
  ?>
    <style>
      #custom-nav-history .line {
        border-top: 2px solid #C4C4C4;
        width: 100%;
        margin-bottom: -20px;
        width: 88%;
        margin-left: auto;
        margin-right: auto;
      }

      #custom-nav-history .owl-dots {
        margin-top: 7px;
      }

      #custom-nav-history span {
        background-color: white;
        border: 2px solid #C4C4C4;
      }

      #custom-nav-history .owl-dot span {
        margin-left: auto;
        margin-right: auto;
        height: 15px;
        width: 15px;
      }

      #custom-nav-history .owl-dot.active span {
        border: 3px solid #17A2B8;
        height: 20px;
        width: 20px;
      }

      #custom-nav-history.owl-carousel .active span {
        background: white !important;
      }

      #custom-nav-history .owl-dot .text {
        font-size: 18px;
      }

      #custom-nav-history .owl-dot.active .text {
        position: inline-block;
        color: #17A2B8;
      }
    </style>
    <div class="container g-px-100 g-my-60">
      <div id="custom-nav-history" class="owl-carousel owl-theme owl-loaded">
        <div class="owl-controls">
          <div class="line"></div>
          <div class="owl-dots text-left g-ml-minus-5 row">
            <?php foreach ($copy->history->items as $i => $item) : ?>
              <div class="col text-center owl-dot <?= $i == 0 ? 'active' : '' ?>"><span></span>
                <div class="text g-mt-20"><?= $item->year ?></div>
              </div>
            <?php endforeach; ?>
          </div>
        </div>
      </div>
    </div>

    <div id="history-carousel" class="g-mt-20 align-height-list">
      <!-- Items Iteration -->
      <?php foreach ($copy->history->items as $item) : ?>
        <!-- Job Item -->
        <div class="row g-mb-30 g-rounded-5 no-gutters">
          <div class="col">
            <div class="g-color-white g-bg-info g-font-size-14 g-pl-60 g-pt-60 g-pb-15 g-pr-15  align-height-item" style="background-image: url(<?= get_image(DIR_BG . 'career/' . $item->image) ?>; opacity: 0.5;">
              <div class="g-font-asap g-color-white g-font-weight-600 g-font-size-30 "><?= $item->year ?></div>
              <ul class="g-pl-20">
                <?php foreach ($item->content as $content) : ?>
                  <li>
                    <?= $content ?>
                  </li>
                <?php endforeach; ?>
              </ul>
            </div>

          </div>
          <div class="col g-pos-rel">
              <div class="img" style="background-image: url(<?= get_image(DIR_BG . 'career/' . $item->image) ?>); height: 100%;padding-bottom: 62.5%;background-position: 50% 50%;background-repeat: no-repeat;background-size: cover;" ></div>
            <!-- <img class="" src="" alt="<?= $item->year ?>" style="object-fit:cover"> -->
        </div>
        <div class="">

        </div>
    </div>
    <!-- End Job Item -->
  <?php endforeach; ?>
  <!-- End Items Iteration -->
  </div>

  <script>
    $(window).ready(function() {
      var element_id = '#history-carousel';
      $(element_id).owlCarousel({
        loop: false,
        margin: 0,
        dots: false,
        nav: false,
        autoplay: false,
        autoplayTimeout: 1500,
        autoplayHoverPause: true,
        responsive: {
          0: {
            items: 1
          },
          600: {
            items: 1
          },
          1000: {
            items: 1
          }
        },
        navText: ['', '']
      });

      //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
      $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
      var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
      // console.log(screen_display);
      var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '60' : '98.5' ?>) / 100) / 2;
      //console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
      // $(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 410px;width: 70%;right: ' + margin_side + 'px;')
      //Hide last item after carousel init because if hide first courosel not working

      // Custom Click DOt
      $('#custom-nav-history').find('.owl-dot').click(function() {
        $(this).siblings().removeClass('active');
        $(this).addClass('active');
        $(element_id).trigger('to.owl.carousel', [$(this).index(), 300, true]);
      });
    });
  </script>
<?php endif; //end desktop 
?>
</section>
<!-- End History -->

<!-- Strategy & Vision -->
<section>
  <?php if ($this->agent->is_mobile()) : ?>
    <div class="g-py-60 g-color-white" style="background: linear-gradient(90deg, rgba(11, 144, 185, 0.9), rgba(19, 182, 127, 0.9));">
      <div class="container">
        <div class="g-bg-white g-pa-40 g-rounded-5" style="box-shadow:1px 6px 20px 2px rgba(0, 0, 0, 0.1)">
          <div class="g-color-black g-font-size-24 g-font-weight-600 g-mb-00">
            <?= $copy->mission->title ?>
          </div>
          <div class="g-font-size-18 g-color-black-opacity-0_8 g-mb-30">
            <div class="g-font-size-36 g-color-blue float-left g-line-height-0" style="padding-top: 21px;padding-right: 10px;">" </div>
            <?= $copy->mission->message ?>
            <div class="g-font-size-36 g-color-blue g-bg-transparent" style="display: inline; margin-top:25; line-height:0.5"> "</div>
          </div>
          <div class="g-color-black g-font-size-24 g-font-weight-600 g-mb-30">
            <?= $copy->vision->title ?>
          </div>
          <div class="g-font-size-18 g-color-black-opacity-0_8">
            <div class="g-font-size-36 g-color-blue float-left g-line-height-0" style="padding-top: 21px;padding-right: 10px;">" </div>
            <?= $copy->vision->message ?>
            <div class="g-font-size-36 g-color-blue g-bg-transparent" style="display: inline; margin-top:25; line-height:0.5"> "</div>
          </div>
        </div>
      </div>
    </div>
  <?php else : ?>
    <div class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
      <div class="divimage dzsparallaxer--target w-100" background-image: url(<?= base_url(DIR_IMG . 'bg/2-conversion-homepage.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);">
      </div>
      <div style="background:linear-gradient(101.14deg, #17A2B8CC 2.37%, #22B78CCC 56.12%, #2AC769CC 98.58%); <?= $this->agent->is_mobile() ?: 'height: 367px' ?>;">
      </div>
    </div>
    <div class="container" style="margin-top:-280px">
      <div class="row justify-content-center align-height-list" style="margin-bottom:-30px">
        <div class="col-md col-12">
          <div class="g-bg-white g-pa-40 align-height-item" style="box-shadow:1px 6px 20px 2px rgba(0, 0, 0, 0.1)">
            <div class="g-color-black g-font-size-35 g-font-weight-600 g-mb-40">
              <?= $copy->mission->title ?>
            </div>
            <div class="g-font-size-25 g-color-black-opacity-0_8">
              <div class="g-font-size-48 g-color-blue float-left g-line-height-0" style="padding-top: 21px;padding-right: 10px;">" </div>
              <?= $copy->mission->message ?>
              <div class="g-font-size-48 g-color-blue g-bg-transparent" style="display: inline; line-height:0.5"> "</div>
            </div>
          </div>
        </div>
        <div class="col-md col-12">
          <div class="g-bg-white box-shadow-down g-pa-40 align-height-item">
            <div class="g-color-black g-font-size-35 g-font-weight-600 g-mb-40">
              <?= $copy->vision->title ?>
            </div>
            <div class="g-font-size-25 g-color-black-opacity-0_8">
              <div class="g-font-size-48 g-color-blue float-left g-line-height-0" style="padding-top: 21px;padding-right: 10px;">" </div>
              <?= $copy->vision->message ?>
              <div class="g-font-size-48 g-color-blue g-bg-transparent" style="display: inline; margin-top:25; line-height:0.5"> "</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  <?php endif; ?>

</section>
<!-- End Strategy & Vision -->

<!-- Our 4C -->
<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-60 g-pb-40' : 'g-bg-white g-pb-50 g-pt-100' ?>">
  <div class="">
    <h2 class="g-font-asap g-color-black text-uppercase text-center g-font-weight-600 g-font-size-<?= $this->agent->is_mobile() ? '24' : '35 g-mb-10' ?>"><?= $copy->w4c->title ?></h2>
    <hr class="g-width-120 g-mt-20 g-mb-0 g-brd-2 g-brd-blue">
    <div class="mt-2 mb-4 g-px-10 text-center"><?= @$copy->w4c->subtitle ?></div>

    <?php if ($this->agent->is_mobile()) : ?>
      <div class="row justify-content-center g-mt-50 no-gutters ">
        <div id="job-carousel" class="col-md-11 col-12 align-self-end">
          <!-- Items Iteration -->
          <?php foreach ($copy->w4c->items as $item) : ?>
            <!-- Job Item -->
            <div class="col-sm-3 g-px-13 g-mb-30 g-rounded-5">
              <article class="u-block-hover g-rounded-5">
                <div class="g-bg-cover g-bg-black-opacity-0_6--after g-bg-primary-opacity-0_3--hover">
                  <img class="u-block-hover__main--mover-down" src="<?= get_image(DIR_BG . 'career/' . $item->image) ?>" alt="Image Description" style="height:400px">
                </div>
                <div class="" style="position: absolute; bottom: 0px; g-z-index-1">
                  <div class="g-pl-20 d-block g-color-white g-font-weight-600 g-font-size-36 g-mb-20 g-line-height-1_2 g-bg-transparent"><?= $item->title ?></div>
                  <!-- <h2 class="h2 g-color-white g-font-weight-600 mb-3">
									<a class="u-link-v5 g-color-white g-color-primary--hover g-cursor-pointer" href="#!">Talking Why Her?</a>
								</h2> -->
                  <p class="g-color-white-opacity-0_7 mb-0"></p>
                  <div class="d-inline-block g-color-white g-bg-info g-font-size-14 g-pa-25 ">
                    <?= $item->description ?>
                    <br>
                    <?= $copy->w4c->example ?>:<br>
                    <ul class="g-pl-25">
                      <?php foreach ($item->example as $example) : ?>
                        <li>
                          <?= $example ?>
                        </li>
                      <?php endforeach; ?>
                    </ul>
                  </div>
                </div>
              </article>
            </div>
            <!-- End Job Item -->
          <?php endforeach; ?>
          <!-- End Items Iteration -->
        </div>
      </div>

      <script>
        $(window).ready(function() {
          var element_id = '#job-carousel';
          $(element_id).owlCarousel({
            loop: true,
            margin: 0,
            dots: true,
            nav: false,
            autoplay: false,
            autoplayTimeout: 1500,
            autoplayHoverPause: true,
            responsive: {
              0: {
                items: 1
              },
              600: {
                items: 1
              },
              1000: {
                items: 2
              }
            },
            navText: ['<i class="<?= $this->agent->is_mobile() ? ' fa fa-angle-left g-color-gray-light-v1 nav-arrow-left ' : ' fa fa-angle-left g-color-w4c-blue-v1 ' ?>" aria-hidden="true" style="transform: scale(<?= $this->agent->is_mobile() ? '  2 ' : ' 4 ' ?>)"></i>', '<i class="<?= $this->agent->is_mobile() ? 'fa fa-angle-right g-color-gray-light-v1 nav-arrow-right ' : ' fa fa-angle-right g-color-w4c-blue-v1 ' ?>" aria-hidden="true" style="transform: scale(<?= $this->agent->is_mobile() ? '  2 ' : '  4 ' ?>)"></i>']
          });

          //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
          $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
          var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
          // console.log(screen_display);
          var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '60' : '98.5' ?>) / 100) / 2;
          //console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
          // $(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 410px;width: 70%;right: ' + margin_side + 'px;')
          //Hide last item after carousel init because if hide first courosel not working
        });
      </script>

    <?php else : // DESKTOP 
    ?>
      <div class="row g-mt-50 no-gutters">
        <!-- Job Item Iteration -->
        <?php foreach ($copy->w4c->items as $item) : ?>
          <!-- Job Item -->
          <div class="col-md-3">
            <div class="u-block-hover">
              <div class="g-bg-cover g-bg-black-opacity-0_6--after g-bg-blue--hover-parent g-none--hover-parent">
                <img class="u-block-hover__main--mover-down" src="<?= get_image(DIR_BG . 'career/' . $item->image) ?>" alt="Image Description" style="height:450px">
              </div>
              <div class="u-block-hover__additional--partially-slide-up g-z-index-1">
                <div class="u-block-hover__visible g-pa-25">
                  <span class="d-block g-color-white g-font-weight-600 g-font-size-40 g-my-18 g-line-height-1_2"><?= $item->title ?></span>
                  <!-- <h2 class="h2 g-color-white g-font-weight-600 mb-3">
										<a class="u-link-v5 g-color-white g-color-primary--hover g-cursor-pointer" href="#!">Talking Why Her?</a>
									</h2> -->
                  <p class="g-color-white-opacity-0_7 mb-0"></p>
                </div>
                <div class="d-inline-block g-color-white g-bg-info g-font-size-18 g-pa-25">
                  <?= $item->description ?>
                  <br>
                  <?= $copy->w4c->example ?>:<br>
                  <ul class="g-pl-25">
                    <?php foreach ($item->example as $example) : ?>
                      <li>
                        <?= $example ?>
                      </li>
                    <?php endforeach; ?>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <!-- End Job Item -->
        <?php endforeach; ?>
        <!-- End Job Item Iteration-->
      </div>
  </div>
  </div>
<?php endif; //end desktop 
?>
</div>
</section>
<!-- End 4C -->

<!-- Accomplistment -->
<section class="d-none g-bg-gray-light-v4 <?= $this->agent->is_mobile() ? 'g-pt-40' : 'g-pb-50 g-pt-100' ?>">
  <div class="<?= $this->agent->is_mobile() ? '' : 'container' ?>">
    <div class="row justify-content-center my_tab_content no-gutters">
      <div class="col-md-12">
        <h2 class="g-font-asap g-color-black text-uppercase g-font-weight-600 text-center g-font-size-<?= $this->agent->is_mobile() ? '24' : '35 g-mb-10' ?>"><?= $copy->accomplishment->title ?></h2>
        <hr class="g-width-120 g-mt-20 g-mb-0 g-brd-2 g-brd-blue">
      </div>
      <?php if ($this->agent->is_mobile()) : ?>

        <div id="testimony-carousel" class="col-12 align-self-end align-height-list g-pt-30 g-pb-30">
          <!-- Items Iteration -->
          <?php foreach ($copy->accomplishment->items as $index => $item) : ?>
            <div class="g-pos-rel g-bg-white align-height-item g-my-20 g-mx-15 g-mt-100 box-shadow-down text-center g-rounded-10" style="z-index:10">
              <div class="g-color-blue g-font-size-30" style="margin-top:-50px">
                <i class="icon-trash g-pa-25 g-bg-white g-rounded-50 box-shadow-down" style="height:90px;width:90px;box-shadow:0px 4px 10px rgba(0, 0, 0, 0.1);"></i>
              </div>
              <div class="g-pa-30 g-pt-50">
                <div class="g-color-black g-font-weight-600 g-font-size-24 g-line-height-1_2 g-mb-30"><?= $item->title ?></div>
                <?php foreach ($item->message as $message) : ?>
                  <div class="g-color-black-opacity-0_7 g-font-size-14 g-line-height-1_2 g-mb-10"><?= $message ?></div>
                <?php endforeach; ?>
              </div>
            </div>
          <?php endforeach; ?>
          <!-- End Items Iteration -->
        </div>
        <script>
          $(window).ready(function() {
            var element_id = '#testimony-carousel';
            $(element_id).owlCarousel({
              loop: true,
              margin: 0,
              dots: true,
              nav: true,
              autoplay: false,
              autoplayTimeout: 1500,
              autoplayHoverPause: true,
              // dotsContainer: '#custom-dots',
              responsive: {
                0: {
                  items: 1
                },
                600: {
                  items: 1
                },
                1000: {
                  items: 3.3
                }
              },
              navText: ['', '']
            });

            //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
            $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
            var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
            // console.log(screen_display);
            var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '70' ?>) / 100) / 2;
            //console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
            $(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 220px;width: 74%;right: ' + margin_side + 'px;')

          });
        </script>
    </div>

  <?php else : //DESKTOP 
  ?>
    <div class="col-12 align-self-end align-height-list">
      <div class="row no-gutters g-mt-100">
        <!-- Items Iteration -->
        <?php foreach ($copy->accomplishment->items as $index => $item) : ?>
          <div class="col-4 g-px-10">
            <div class="g-pos-rel g-bg-white align-height-item g-py-20 box-shadow-down text-center">
              <div class="g-color-blue g-font-size-30" style="margin-top:-40px">
                <i class="icon-trash g-pa-25 g-bg-white g-rounded-50 box-shadow-down" style="height:90px;width:90px;box-shadow:0px 4px 10px rgba(0, 0, 0, 0.1);"></i>
              </div>
              <div class="g-pa-30 g-pt-60">
                <div class="g-color-black g-font-weight-600 g-font-size-24 g-line-height-1_ g-mb-30"><?= $item->title ?></div>
                <?php foreach ($item->message as $message) : ?>
                  <div class="g-color-black-opacity-0_7 g-font-size-18 g-line-height-1_3 g-mb-10"><?= $message ?></div>
                <?php endforeach; ?>
              </div>
            </div>
          </div>
        <?php endforeach; ?>
        <!-- End Items Iteration -->
      </div>
    </div>
  <?php endif; ?>
  </div>
</section>
<!-- End Accomplistment -->

<!-- Our Value -->
<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-60 g-pb-40' : 'g-bg-white g-pb-50 g-pt-100' ?>">
  <div class="container">
    <h2 class="g-font-asap g-color-black text-uppercase text-center g-font-weight-600 g-font-size-<?= $this->agent->is_mobile() ? '24' : '35 g-mb-10' ?>"><?= $copy->value->title ?></h2>
    <hr class="g-width-120 g-mt-20 g-mb-0 g-brd-2 g-brd-blue">
    <?php if ($this->agent->is_mobile()) : ?>
      <div class="row justify-content-center my_tab_content">
        <div class="col-md-11 col-12 align-self-end">
          <div id="waste-flow-carousel" class="col-md-12 owl-theme" style="margin: 0 0 30px 0!important;">
            <!-- Items Iteration -->
            <?php foreach ($copy->value->items as $index => $item) : ?>
              <div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-40 g-py-10">
                <div class="g-mx-auto g-mx-30">
                  <img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= get_image(DIR_ICON . 'value/' . $item->image) ?>" alt="<?= $copy->value->title . ' ' . $item->title ?>" style="width: 100%">
                </div>
                <div class="g-pa-15">
                  <h2 class="h5 g-color-black g-font-weight-300 mb-4 g-font-size-15" style="margin-bottom: 5px!important;">
                    <?= $item->title ?>
                  </h2>
                </div>
              </div>
            <?php endforeach; ?>
            <!-- End Items Iteration -->
          </div>
        </div>
      </div>

      <script>
        $(window).ready(function() {
          var element_id = '#waste-flow-carousel';
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
                items: 1
              },
              1000: {
                items: 2
              }
            },
            navText: [
              '<i class="<?= $this->agent->is_mobile() ? ' fa fa-angle-left g-color-gray-light-v1 nav-arrow-left ' : ' fa fa-angle-left g-color-w4c-blue-v1 ' ?>" aria-hidden="true" style="transform: scale(<?= $this->agent->is_mobile() ? '  2 ' : ' 4 ' ?>)"></i>', '<i class="<?= $this->agent->is_mobile() ? 'fa fa-angle-right g-color-gray-light-v1 nav-arrow-right ' : ' fa fa-angle-right g-color-w4c-blue-v1 ' ?>" aria-hidden="true" style="transform: scale(<?= $this->agent->is_mobile() ? '  2 ' : '  4 ' ?>)"></i>'
            ]
          });

          //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
          $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
          var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
          // console.log(screen_display);
          var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '98.5' ?>) / 100) / 2;
          //console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
          $(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 260px;width: 74%;right: ' + margin_side + 'px;')
          //Hide last item after carousel init because if hide first courosel not working
        });
      </script>

    <?php else : // DESKTOP 
    ?>
      <div class="row justify-content-center my_tab_content">
        <?php foreach ($copy->value->items as $item) : ?>
          <div class="col-md-4">
            <article class="g-transition-0_3">
              <div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 30px 0 0 0!important;">
                <img class="img-fluid u-block-hover__main--zoom-v1 mb-3 animated zoomIn" src="<?= get_image(DIR_ICON . 'value/' . $item->image) ?>" alt="<?= $copy->value->title . ' ' . $item->title ?>" style="width: 40%">
                <div class="g-pa-15">
                  <h2 class="h5 g-color-black g-font-weight-600 mb-4 g-font-size-15" style="margin-bottom: 5px!important;">
                    <?= $item->title ?>
                  </h2>
                </div>
              </div>
            </article>
          </div>
        <?php endforeach; ?>
      </div>
    <?php endif; //end desktop 
    ?>
  </div>
</section>
<!-- End Our Value -->

<!-- Our Culture -->
<section class="g-bg-gray-light-v5 <?= $this->agent->is_mobile() ? 'g-py-40' : 'g-bg-white g-pb-50 g-pt-100' ?>">
  <div class="container">
    <div class="row justify-content-center my_tab_content">
      <div class="col-md-3">
        <h2 class="g-font-asap g-color-black text-uppercase g-font-weight-600 g-font-size-<?= $this->agent->is_mobile() ? '24  text-center' : '35 g-mb-10' ?>"><?= $copy->culture->title ?></h2>
        <hr class="g-width-120 g-mt-20 g-mb-0 <?= $this->agent->is_mobile() ? '' : 'g-ml-0' ?> g-brd-2 g-brd-blue">
        <div class="mt-2 mb-4 <?= $this->agent->is_mobile() ? 'g-px-10 text-center' : '' ?>"><?= $copy->culture->subtitle ?></div>
        <?php if (!$this->agent->is_mobile()) : ?>
          <div id="custom-nav" class="owl-carousel owl-theme owl-loaded">
            <div class="owl-controls">
              <div class="owl-nav" style="width: 30%;position: absolute;top: 120px;left: 0px;margin-left: 10px;">
                <div class="owl-prev">
                  <i class="fa fa-angle-left g-color-gray-light-v1 nav-arrow-left" aria-hidden="true" style="transform: scale(2)"></i>
                </div>
                <div class="owl-next">
                  <i class="fa fa-angle-right g-color-gray-light-v1 nav-arrow-right" aria-hidden="true" style="transform: scale(2)"></i>
                </div>
              </div>
              <div class="owl-dots text-left g-ml-minus-5 g-mt-30">
                <div class="owl-dot active"><span></span></div>
                <div class="owl-dot"><span></span></div>
                <div class="owl-dot"><span></span></div>
              </div>
            </div>
          </div>
        <?php endif; ?>
        <!-- <div id="custom-dots" class="owl-dots">
			<div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot active"><span></span></div><div class="owl-dot"><span></span></div>
				</div> -->
      </div>
      <div class="col-md-9 col-12 align-self-end">
        <div id="culture-carousel" class="col-md-12 owl-theme" style="margin: 0 0 30px 0!important;">
          <!-- Items Iteration -->
          <?php foreach ($copy->culture->items as $index => $item) : ?>
            <div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3">
              <img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= get_image(DIR_BG . 'career/' . $item->image) ?>" alt="<?= $copy->culture->title . ' ' . $item->title ?>" style="max-height:320px; object-fit:cover">
            </div>
          <?php endforeach; ?>
          <!-- End Items Iteration -->
        </div>
      </div>
    </div>

    <script>
      $(window).ready(function() {
        var element_id = '#culture-carousel';
        $(element_id).owlCarousel({
          loop: true,
          margin: 0,
          dots: <?= $this->agent->is_mobile() ? 'true' : 'false' ?>,
          nav: true,
          autoplay: false,
          autoplayTimeout: 1500,
          autoplayHoverPause: true,
          // dotsContainer: '#custom-dots',
          responsive: {
            0: {
              items: 1
            },
            600: {
              items: 1
            },
            1000: {
              items: 2.1
            }
          },
          navText: ['', '']
        });

        //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
        $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
        var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
        // console.log(screen_display);
        var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '70' ?>) / 100) / 2;
        //console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
        $(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 220px;width: 74%;right: ' + margin_side + 'px;')
        //Hide last item after carousel init because if hide first courosel not working

        // Custom Click DOt
        $('#custom-nav').find('.owl-dot').click(function() {
          $(element_id).trigger('to.owl.carousel', [$(this).index(), 300]);
        });
        //Custom Navigation 
        $('#custom-nav').find('.owl-next').click(function() {
          $(element_id).trigger('next.owl.carousel');
        });
        $('#custom-nav').find('.owl-prev').click(function() {
          $(element_id).trigger('prev.owl.carousel');
        });

      });
    </script>
  </div>
</section>
<!-- End Our Culture -->

<!-- Our Team -->
<section class="g-bg-gray-light-v4 <?= $this->agent->is_mobile() ? 'g-pt-40' : 'g-pb-50 g-pt-100' ?>">
  <div class="<?= $this->agent->is_mobile() ? '' : 'container' ?>">
    <div class="row justify-content-center my_tab_content no-gutters">
      <div class="col-md-12">
        <h2 class="g-font-asap g-color-black text-uppercase g-font-weight-600 text-center g-font-size-<?= $this->agent->is_mobile() ? '24' : '35 g-mb-10' ?>"><?= $copy->team->title ?></h2>
        <hr class="g-width-120 g-mt-20 g-mb-0 g-brd-2 g-brd-blue">
        <?php if (!$this->agent->is_mobile()) : ?>
          <div class="mt-2 mb-4 g-px-10 text-center"><?= $copy->team->subtitle ?></div>
        <?php endif; ?>
      </div>
      <div id="team-carousel" class="col-12 align-self-end align-height-list">
        <!-- Items Iteration -->
        <?php foreach ($copy->team->items as $index => $item) : ?>
          <div class="g-pos-rel g-bg-white align-height-item g-my-20 g-mx-15 box-shadow-down text-center">
            <img class="rounded-circle" src="<?= get_image(DIR_IMG . 'testimonial/' . $item->image) ?>" alt="Photo <?= $item->name ?>" style="height:376.31px;object-fit:cover;">
            <div class="g-pa-30">
              <div class="g-color-black g-font-weight-600 g-font-size-18 g-line-height-1 g-mb-30"><?= $item->name ?></div>
              <div class="text-center" style="position:absolute;bottom:30px;left:0px;width:100%">
                <div class="g-color-info g-font-size-16"><?= $item->position ?></div>
              </div>
            </div>
          </div>
        <?php endforeach; ?>
        <!-- End Items Iteration -->
      </div>
    </div>

    <script>
      $(window).ready(function() {
        var element_id = '#team-carousel';
        $(element_id).owlCarousel({
          loop: true,
          margin: 0,
          dots: false,
          nav: true,
          autoplay: false,
          autoplayTimeout: 1500,
          autoplayHoverPause: true,
          // dotsContainer: '#custom-dots',
          responsive: {
            0: {
              items: 1
            },
            600: {
              items: 1
            },
            1000: {
              items: 3.3
            }
          },
          navText: ['', '']
        });

        //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
        $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
        var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
        // console.log(screen_display);
        var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '70' ?>) / 100) / 2;
        //console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
        $(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 220px;width: 74%;right: ' + margin_side + 'px;')

      });
    </script>
  </div>
</section>
<!-- End Our Team -->

<!-- CTA to carrer Page Section -->
<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
  <div class="divimage dzsparallaxer--target w-100" style="height: 130%; background-image: url(<?= base_url(DIR_IMG . 'bg/2-conversion-homepage.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);">
  </div>
  <div style="background:linear-gradient(rgba(248,248,248,0.98), rgba(243,243,243,0.8))">
    <div class="container <?= $this->agent->is_mobile() ? 'text-center g-py-50' : 'g-py-70' ?>">
      <div class="row justify-content-center">
        <div class="col-md-8 col-10 g-mb-15 pt-5 align-self-center">
          <div class="g-color-black <?= $this->agent->is_mobile() ? 'g-font-size-20' : 'h2' ?>">
            <?= $copy->cta->title ?></div>
        </div>
        <div class="col-md-4 col-10 g-mb-15 pt-5 align-self-center">
          <a class="btn btn-block btn-info g-color-white g-font-size-20 g-font-weight-600 g-rounded-50 g-py-15 g-px-50" href="<?= $copy->cta->button->url ?>">
            <?= strtoupper($copy->cta->button->title) ?>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- End CTA to carrer Page Section -->
<?php
// $this->load->view('sites/sections/cta');
?>