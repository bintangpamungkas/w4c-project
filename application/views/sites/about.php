<style>
  .owl-carousel .active span {
    background: #17A2B8 !important;
  }
</style>
<!-- Slider -->
<section class="g-bg-white g-pb-40">
  <div>
    <div id="slide-carousel" class="g-mt-20">
      <?php if ($this->agent->is_mobile()) : //mobile ?>
      <!-- Items Iteration -->        
      <?php foreach ($copy->slide->items as $item) : ?>
          <div class="u-bg-overlay g-bg-img-hero g-color-white g-font-size-14 g-mx-10" style="background-image: url(<?= get_image(DIR_BG . 'about/banner/' . $item->image) ?>); background-position-x: right;">
            <div style="height: 220px; background-image: linear-gradient( 100deg , rgba(255, 255, 255,0.9) 0%, rgba(255, 255, 255, 0.65) 60%, rgba(255, 255, 255,0) 90%);">
              <div class="container u-bg-overlay__inner g-color-white g-height-100x">
                <div class="row align-items-center g-height-100x">
                  <div class="col w4c-color-blue g-font-weight-700 g-font-size-18 g-mt-30 mb-4 g-font-asap" style="line-height: 1.2"><?= $item->title ?></div>
                </div>
              </div>
            </div>
          </div>
        <?php endforeach; ?>
      <!-- End Items Iteration -->
      <?php else : //dekstop ?>
      <!-- Items Iteration -->
        <?php foreach ($copy->slide->items as $item) : ?>
          <div class="u-bg-overlay g-bg-img-hero g-color-white g-font-size-14" style="background-image: url(<?= get_image(DIR_BG . 'about/banner/' . $item->image) ?>);">
            <div style="height: 573px; background-image: linear-gradient( 100deg , rgba(255, 255, 255,0.9) 0%, rgba(255, 255, 255, 0.65) 60%, rgba(255, 255, 255,0) 90%);">
              <div class="container u-bg-overlay__inner g-color-white g-height-100x">
                <div class="row align-items-center g-height-100x">
                  <div class="col w4c-color-blue g-font-weight-700 g-font-size-50 g-mt-30 g-pl-20 mb-4 g-font-asap" style="line-height: 1.2"><?= $item->title ?></div>
                </div>
              </div>
            </div>
          </div>
        <?php endforeach; ?>
        <!-- End Items Iteration -->
      <?php endif; ?>
    </div>
  </div>

  <script>
    $(window).ready(function() {
      var element_id = '#slide-carousel';
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
            items: 1
          }
        },
        <?php if ($this->agent->is_mobile()) : ?>
          navText: [
            '', ''
          ]
        <?php else : ?>
          navText: ['<i class="fa fa-angle-left g-color-gray-light-v1 nav-arrow-left g-opacity-0_5" aria-hidden="true" style="transform: scale(2)"></i>',
            '<i class="fa fa-angle-right g-color-gray-light-v1 nav-arrow-right g-opacity-0_5" aria-hidden="true" style="transform: scale(2)"></i>'
          ]
        <?php endif; ?>
      });
      var margin_side = 30
			var top=$(element_id + ' .owl-stage-outer').height()/2;
			var width=$(element_id + ' .owl-stage-outer').width()-(margin_side*4);
			$(element_id + ' .owl-nav').attr('style', 'position:absolute;left:'+margin_side+'px;margin-top:'+top+'px;width: calc(100vw - '+ (margin_side*4) +'px );')
			$(element_id + ' .owl-prev').attr('style', 'margin-left:'+margin_side+'px;')
      $(element_id + ' .owl-next').attr('style', 'margin-right:'+margin_side+'px;')
      <?php if($this->agent->is_mobile()):?>
        $(element_id + ' .owl-dots').attr('style', 'margin-top:10px;')
        <?php else: ?>
          $(element_id + ' .owl-dots').attr('style', 'margin-top:-50px;')
        <?php endif; ?>
    });
  </script>
</section>
<!-- End Slider -->

<!-- History -->
<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-60 g-pb-40' : 'g-bg-white g-pb-50 g-pt-100' ?>">
  <div class="container">
    <h2 class="g-font-asap g-color-black text-uppercase text-center g-font-weight-600 g-font-size-<?= $this->agent->is_mobile() ? '24' : '35 g-mb-10' ?>"><?= $copy->history->title ?></h2>
    <hr class="g-width-70 g-mt-20 g-mb-0 g-brd-2 w4c-brd-blue">
  </div>
  <?php if ($this->agent->is_mobile()) : ?>
    <div class="row justify-content-center g-mt-50 no-gutters ">
      <div id="history-carousel" class="col-md-11 col-12 align-self-end align-height-list">
        <?php foreach ($copy->history->items as $item) : // Items Iteration
        ?>
          <div class="col-sm-3 g-px-13 g-mb-30 g-rounded-5">
            <article class="u-block-hover g-rounded-5">
              <img class="" src="<?= get_image(DIR_BG . 'about/history/' . $item->image) ?>" alt="Image Description" style="height:200px;object-fit:cover">
              <div class="dzsparallaxer height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall " data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
                <div class="divimage dzsparallaxer--target w-100 g-bg-pos-bottom-center" style="height: 100%;background: url(<?= get_image(DIR_BG . 'about/history/' . $item->image) ?>);background-size: cover;background-position-x: right;"></div>
                <div class="pending-show animated d-zap g-color-white g-font-size-14 g-py-30 g-px-15 align-height-item" style="height: 100%; background-image: linear-gradient( 100deg , rgba(23, 162, 184, 0.9) 0%, rgba(23, 162, 184, 0.9) 70%, rgba(23, 162, 184, 0.9) 100%);">
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
            </article>
          </div>
        <?php endforeach; //End Items Iteration 
        ?>
      </div>
    </div>

    <script>
      $(window).ready(function() {
        var element_id = '#history-carousel';
        $(element_id).owlCarousel({
          loop: false,
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
          // navText: ['<i class="<?= $this->agent->is_mobile() ? ' fa fa-angle-left g-color-gray-light-v1 nav-arrow-left ' : ' fa fa-angle-left g-color-w4c-blue-v1 ' ?>" aria-hidden="true" style="transform: scale(<?= $this->agent->is_mobile() ? '  2 ' : ' 4 ' ?>)"></i>', '<i class="<?= $this->agent->is_mobile() ? 'fa fa-angle-right g-color-gray-light-v1 nav-arrow-right ' : ' fa fa-angle-right g-color-w4c-blue-v1 ' ?>" aria-hidden="true" style="transform: scale(<?= $this->agent->is_mobile() ? '  2 ' : '  4 ' ?>)"></i>']
          navText: ['', '']
        });

        //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
        $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
        var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
        // console.log(screen_display);
        // var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '60' : '98.5' ?>) / 100) / 2;
        // console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
        // $(element_id + ' .owl-nav').attr('style', 'width: 100%;left: ' + margin_side + 'px;')
        //Hide last item after carousel init because if hide first courosel not working
        var add_side = 15
        var height = $(element_id + ' .owl-stage-outer').height();
        // var width=$(element_id + ' .owl-item').width()+add_side;
        // $(element_id + ' .owl-nav').attr('style', 'position:absolute;left:'+add_side*2+'px;margin-top:'+height+'px;width: '+ (screen_display) +'px;')
        $(element_id + ' .owl-dots').attr('style', 'margin-top:30px;')
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
    <div class="container g-px-100 g-mt-60">
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

    <div id="history-carousel" class="g-mt-20 align-height-list container">
      <?php foreach ($copy->history->items as $item) : //Items Iteration
      ?>
        <div class="row g-mb-30 g-rounded-5 no-gutters">
          <div class="col">
            <div class="u-bg-overlay w4c-bg-blue-opacity-0_9--after g-bg-img-hero g-color-white g-font-size-14 g-pl-60 g-pt-60 g-pb-15 g-pr-15  align-height-item" style="background-image: url(<?= get_image(DIR_BG . 'about/history/' . $item->image) ?>);">
              <div class="container u-bg-overlay__inner g-color-white">
                <div class="g-font-asap g-color-white g-font-weight-900 g-font-size-30 g-mb-25"><?= $item->year ?></div>
                <ul class="g-pl-20 g-font-size-18">
                  <?php foreach ($item->content as $content) : ?>
                    <li class=" g-mb-15 g-line-height-1_3">
                      <?= $content ?>
                    </li>
                  <?php endforeach; ?>
                </ul>
              </div>
            </div>
          </div>
          <div class="col g-pos-rel">
            <div class="img" style="background-image: url(<?= get_image(DIR_BG . 'about/history/' . $item->image) ?>); height: 100%;padding-bottom: 62.5%;background-position: 50% 50%;background-repeat: no-repeat;background-size: cover;"></div>
          </div>
          <div class="">

          </div>
        </div>
      <?php endforeach; // End Items Iteration
      ?>
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
        // $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
        // var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
        // console.log(screen_display);
        // var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '60' : '98.5' ?>) / 100) / 2;
        //console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
        // $(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 410px;width: 70%;right: ' + margin_side + 'px;')
        //Hide last item after carousel init because if hide first courosel not working

        // Custom Click DOt
        $('#custom-nav-history .owl-dot').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');
          $(element_id).trigger('to.owl.carousel', [$(this).index(), 300, true]);
        });

        $(element_id).on('changed.owl.carousel', function(e) {
          let index = e.item.index;
          let dots = $('#custom-nav-history .owl-dot');
          dots.removeClass('active');
          dots.eq(index).addClass('active');
        });
      });
    </script>
  <?php endif; //end desktop 
  ?>
</section>
<!-- End History -->

<!-- Strategy & Vision -->
<section class="g-pt-60 g-pb-50" style="background: linear-gradient(270deg, #F9F9F9 0%, #F9F9F9 100%);">
  <?php if ($this->agent->is_mobile()) : ?>
    <div class="container">
      <div class="row no-gutters g-font-asap">
        <div class="col-md col-12">
          <div class="g-pa-20" style="background: linear-gradient(270deg, #F6F6F6 0%, #FFFFFF 57.76%); box-shadow: -4px 0px 20px rgba(0, 0, 0, 0.02);">
            <div class="w4c-color-blue g-font-size-30 g-font-weight-900 g-mb-20">
              <?= $copy->mission->title ?>
            </div>
            <div class="g-font-size-14 g-color-black g-mb-25">
              <?= $copy->mission->message ?>
            </div>
            <div class="w4c-color-blue g-font-size-30 g-font-weight-900 g-mb-20">
              <?= $copy->vision->title ?>
            </div>
            <div class="g-font-size-14 g-color-black g-mb-25">
              <?= $copy->vision->message ?>
            </div>
          </div>
        </div>
        <div class="col-12">
          <img src="<?= get_image(DIR_BG . 'about/' . $copy->vision->image) ?>" alt="vision" style="width: 100%; object-fit: cover;">
          <div class="g-font-size-12 g-mt-5 g-line-height-1_2 text-right">-M. Bijaksana Junerosano,<br> Managing Director Waste4Change</div>

        </div>
      </div>
    </div>
  <?php else : ?>
    <div class="col-md-5 col-12 float-right g-pa-0">
      <div class="">

        <img src="<?= get_image(DIR_BG . 'about/' . $copy->vision->image) ?>" alt="vision" style="height: 100%; object-fit: cover; float: right;">
        <div class="g-font-size-16" style="position: absolute; bottom: -30px;right: 10px; ">-M. Bijaksana Junerosano, Managing Director Waste4Change</div>
      </div>

    </div>
    <div class="container">
      <div class="row no-gutters g-font-asap ">
        <div class="col-md col-12">
          <div class="g-pt-40 g-pb-30 g-pl-50 g-pr-35" style="background: linear-gradient(270deg, #F6F6F6 0%, #FFFFFF 57.76%); box-shadow: -4px 0px 20px rgba(0, 0, 0, 0.02);">
            <div class="w4c-color-blue g-font-size-36 g-font-weight-600 g-mb-20">
              <?= $copy->mission->title ?>
            </div>
            <div class="g-font-size-22 g-color-black g-mb-25">
              <?= $copy->mission->message ?>
            </div>
            <div class="w4c-color-blue g-font-size-36 g-font-weight-600 g-mb-20">
              <?= $copy->vision->title ?>
            </div>
            <div class="g-font-size-22 g-color-black g-mb-25">
              <?= $copy->vision->message ?>
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
    <hr class="g-width-70 g-mt-20 g-mb-0 g-brd-2 w4c-brd-blue">
    <div class="mt-2 mb-4 g-px-10 text-center"><?= @$copy->w4c->subtitle ?></div>

    <?php if ($this->agent->is_mobile()) : ?>
      <div class="row justify-content-center g-mt-50 no-gutters ">
        <div id="job-carousel" class="col-md-11 col-12 align-self-end">
          <?php foreach ($copy->w4c->items as $item) : //Item Iteration
          ?>
            <div class="col-sm-3 g-px-13 g-mb-30 g-rounded-5">
              <article class="u-block-hover g-rounded-5">
                <div class="g-bg-cover g-bg-black-opacity-0_6--after g-bg-primary-opacity-0_3--hover">
                  <img class="u-block-hover__main--mover-down" src="<?= get_image(DIR_BG . 'about/4c/' . $item->image) ?>" alt="Image Description" style="height:400px; object-fit:cover">
                </div>
                <div class="g-z-index-1" style="position: absolute; bottom: 0px; ">
                  <div class="g-pl-20 d-block g-color-white g-font-weight-600 g-font-size-36 g-mb-20 g-line-height-1_2 g-bg-transparent"><?= $item->title ?></div>
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
          <?php endforeach; //End Items Iteration
          ?>
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
              <div class="g-bg-cover g-bg-black-opacity-0_6--after g-bg-blue--hover-parent">
                <img class="u-block-hover__main--mover-down" src="<?= get_image(DIR_BG . 'about/4c/' . $item->image) ?>" alt="Image Description" style="height:450px; object-fit:cover">
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
        <hr class="g-width-70 g-mt-20 g-mb-0 g-brd-2 w4c-brd-blue">
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
    <hr class="g-width-70 g-mt-20 g-mb-0 g-brd-2 w4c-brd-blue">
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
    <div class="row justify-content-center">
      <div class="col-md-3">
        <div class="g-font-asap g-color-black text-uppercase g-font-weight-600 g-font-size-<?= $this->agent->is_mobile() ? '24  text-center' : '35 g-mb-10' ?>"><?= $copy->culture->title ?></div>
        <hr class="g-width-70 g-mt-20 g-mb-0 <?= $this->agent->is_mobile() ? '' : 'g-ml-0' ?> g-brd-2 w4c-brd-blue">
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
                <?php foreach ($copy->culture->items as $index => $item) : ?>
                  <div class="owl-dot <?= $index == 0 ? 'active' : '' ?>"><span></span></div>
                <?php endforeach; ?>
              </div>
            </div>
          </div>
        <?php endif; ?>
        <!-- <div id="custom-dots" class="owl-dots">
			<div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot active"><span></span></div><div class="owl-dot"><span></span></div>
				</div> -->
      </div>
      <div class="col-md-9 col-12">
        <div id="culture-carousel">
          <!-- Items Iteration -->
          <?php foreach ($copy->culture->items as $index => $item) : ?>
            <img src="<?= get_image(DIR_BG . 'about/culture/' . $item->image) ?>" alt="<?= $copy->culture->title . ' ' . $item->title ?>" style="height:<?= $this->agent->is_mobile() ? '200px' : '270px' ?>; object-fit:cover">
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
              items: 2
            }
          },
          navText: ['', '']
        });

        $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
        var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
        var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '69' : '70' ?>) / 100) / 2;
        $(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 220px;width: 74%;right: ' + margin_side + 'px;')
        //Hide last item after carousel init because if hide first courosel not working

        // Custom Click DOt
        $('#custom-nav').find('.owl-dot').click(function() {
          $(element_id).trigger('to.owl.carousel', [jQuery(this).index(), 300, true]);
        });
        //Custom Navigation 
        $('#custom-nav').find('.owl-next').click(function() {
          $(element_id).trigger('next.owl.carousel');
        });
        $('#custom-nav').find('.owl-prev').click(function() {
          $(element_id).trigger('prev.owl.carousel');
        });

        $(element_id).on('changed.owl.carousel', function(e) {
          let index = e.item.index - 2;
          let dots = $('#custom-nav .owl-dot');
          if (index == dots.length) {
            index = 0;
          }
          dots.removeClass('active');
          dots.eq(index).addClass('active');
        });
      });
    </script>
  </div>
</section>
<!-- End Our Culture -->

<!-- Our Team -->
<section class="g-bg-gray-light-v4 <?= $this->agent->is_mobile() ? 'g-pt-40 g-pb-30' : 'g-pb-50 g-pt-100' ?>">
  <div class="<?= $this->agent->is_mobile() ? '' : 'container' ?>">
    <div class="row justify-content-center my_tab_content no-gutters">
      <div class="col-md-12">
        <h2 class="g-font-asap g-color-black text-uppercase g-font-weight-600 text-center g-font-size-<?= $this->agent->is_mobile() ? '24' : '35 g-mb-10' ?>"><?= $copy->team->title ?></h2>
        <hr class="g-width-70 g-mt-20 g-mb-0 g-brd-2 w4c-brd-blue">
        <div class="mt-2 mb-4 g-px-10 text-center"><?= $copy->team->subtitle ?></div>
      </div>
      <div id="team-carousel" class="col-12 align-self-end align-height-list">
        <!-- Items Iteration -->
        <?php foreach ($copy->team->items as $index => $item) : ?>
          <div class="g-pos-rel g-bg-white align-height-item g-my-20 g-mx-15 box-shadow-down text-center">
            <img src="<?= get_image(DIR_BG . 'about/team/' . $item->image) ?>" alt="Photo <?= $item->name ?>" style="height:376.31px;object-fit:cover;">
            <div class="g-pa-30">
              <div class="g-color-black g-font-weight-600 g-font-size-18 g-line-height-1 g-mb-10"><?= $item->name ?></div>
              <div class="g-color-info g-font-size-16 g-line-height-1_2"><?= $item->position ?></div>
              <div class="g-font-size-16 g-line-height-1_2"><?= $item->division ?></div>
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
              items: 3
            }
          },

          <?php if ($this->agent->is_mobile()) : ?>
            navText: [
              '<i class="fa fa-angle-left g-color-gray-light-v1 nav-arrow-left" aria-hidden="true" style="transform: scale(2)"></i>',
              '<i class="fa fa-angle-right g-color-gray-light-v1 nav-arrow-right" aria-hidden="true" style="transform: scale(2)"></i>'
            ]
          <?php else : ?>
            navText: ['<i class="fa fa-angle-left g-color-gray-light-v1 nav-arrow-left g-opacity-0_5" aria-hidden="true" style="transform: scale(2)"></i>',
              '<i class="fa fa-angle-right g-color-gray-light-v1 nav-arrow-right g-opacity-0_5" aria-hidden="true" style="transform: scale(2)"></i>'
            ]
          <?php endif; ?>
        });

        $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
        var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
        var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '60' : '88' ?>) / 100) / 2;
        <?php if ($this->agent->is_mobile()) : ?>
          $(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 570px;width: 70%;right: ' + margin_side + 'px;')
        <?php else : ?>
          $(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 220px;width: 91%;right: ' + margin_side + 'px;')
        <?php endif; ?>

      });
    </script>
  </div>
</section>
<!-- End Our Team -->

<!-- CTA to carrer Page Section -->
<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}' style="background-color:white;">
  <div class="divimage dzsparallaxer--target w-100" style="height: 130%; background-image: url(<?= get_image(DIR_IMG . 'bg/career/image11.png') ?>); transform: translate3d(0px, -48.5814px, 0px);">
  </div>
  <div style="background:rgba(248,248,248,0.45); height:100%">
    <div class="container <?= $this->agent->is_mobile() ? 'text-center g-py-50' : 'g-py-70' ?>">
      <div class="row justify-content-center">
        <div class="col-md-8 col-10 g-mb-15 pt-5 align-self-center">
          <div class="g-color-black <?= $this->agent->is_mobile() ? 'g-font-size-20' : 'h2' ?>">
            <?= $copy->cta->title ?></div>
        </div>
        <div class="col-md-4 col-12 g-mb-15 pt-5 align-self-center">
          <a class="btn btn-info g-color-white g-font-size-13 g-rounded-50 g-py-10 g-px-<?= $this->agent->is_mobile() ? '60 g-font-size-14' : '80 float-right g-color-white--focus' ?> text-uppercase g-py-15" href="<?= $copy->cta->button->url ?>">
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