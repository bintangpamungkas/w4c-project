<section class="g-bg-secondary dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
  <div class="divimage dzsparallaxer--target w-100" style="height: 130%; "></div>
  <div style="">
    <div class="container <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-pt-140 g-pb-70' ?>">
      <div class="text-center g-mb-50">
        <h2 class="g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= strtoupper(lang('client_title')) ?></h2>
        <p class="text-mute d-none"><?= lang('brand_partner_subtitle') ?></p>
      </div>
      <div class="row justify-content-center">
        <div class="col-md-11 col-12">

          <div id="client-carousel" class="col-md-12 owl-theme" style="margin: 0 0 30px 0!important;">
            <?php
            $x = 1;
            $number_client = 1;
            $all = $this->agent->is_mobile() ? 10 : 15;
            while($x <= $all) :
              ?>
              <div>
                <div class="g-bg-white rounded g-pa-10 <?= $this->agent->is_mobile() ? 'g-mx-3 g-mb-5' : 'g-px-30 g-mx-10 g-mb-20' ?>">
                  <img class="img-fluid mx-auto" src="<?= base_url('assets/img/logo/client/'.$number_client++.'.jpg') ?>" alt="Image Description">
                </div>
                <div class="g-bg-white rounded g-pa-10 <?= $this->agent->is_mobile() ? 'g-mx-3 g-mb-5' : 'g-px-30 g-mx-10 g-mb-20' ?>">
                  <img class="img-fluid mx-auto" src="<?= base_url('assets/img/logo/client/'.$number_client++.'.jpg') ?>" alt="Image Description">
                </div>
                <?php if($this->agent->is_mobile()): ?>
                  <div class="g-bg-white rounded g-pa-10 <?= $this->agent->is_mobile() ? 'g-mx-3 g-mb-5' : 'g-px-30 g-mx-10 g-mb-20' ?>">
                    <img class="img-fluid mx-auto" src="<?= base_url('assets/img/logo/client/'.$number_client++.'.jpg') ?>" alt="Image Description">
                  </div>
                <?php endif; ?>
              </div>
              <?php
              $x++;
            endwhile;
            ?>
          </div>

          <script>
          $(window).ready(function () {
            var element_id='#client-carousel';
            $(element_id).owlCarousel({
              loop:true,
              margin:0,
              dots:true,
              nav:true,
              autoplay:true,
              autoplayTimeout:1500,
              autoplayHoverPause:true,
              responsive:{
                0:{
                  items:3
                },
                600:{
                  items:4
                },
                1000:{
                  items:4
                }
              },
              navText : ['<i class="<?=$this->agent->is_mobile() ? 'fa fa-angle-left g-color-gray-light-v1 nav-arrow-left' : 'fa fa-angle-left g-color-w4c-blue-v1' ?>" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile()?'2':'4'?>)"></i>','<i class="<?=$this->agent->is_mobile() ? 'fa fa-angle-right g-color-gray-light-v1 nav-arrow-right' : 'fa fa-angle-right g-color-w4c-blue-v1' ?>" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile()?'2':'4'?>)"></i>']
            });

            //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
            $(element_id+' .owl-controls').attr('style', 'margin-top: 30px;');

            var screen_display=<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
            // console.log(screen_display);
            var margin_side=(screen_display-screen_display*(<?= $this->agent->is_mobile() ? '69' : '98.5' ?>)/100)/2;
            // console.log('screen : '+screen_display+'nav : '+screen_display*<?= $this->agent->is_mobile() ? '8' : '9' ?>0/100+'batas : '+margin_side);
            <?php
            if($this->agent->is_mobile()){
              echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 280px;width: 74%;right: '+margin_side+'px;')";
            }else{
              echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 140px;width: 101.5%;right: '+margin_side+'px;')";
            }
            ?>
          });

          </script>

          <style>
          .owl-prev {
            width: 15px;
            height: 100px;
            position: absolute;
            top: 40%;
            margin-left: -20px;
            display: block !important;
            border:0px solid black;
          }

          .owl-next {
            width: 15px;
            height: 100px;
            position: absolute;
            top: 40%;
            right: -25px;
            display: block !important;
            border:0px solid black;
          }
          .owl-prev i, .owl-next i {transform : scale(1,6); color: #ccc;}
          </style>

        </div>
      </div>
    </div>
  </div>
</section>
