<section id="client" class="g-bg-secondary">
  <div class="divimage dzsparallaxer--target w-100 d-none" style="height: 110%; background-image: url(<?= base_url('assets/img/bg/img36.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
  <div class="container <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-5' : 'g-pt-20 g-pb-140' ?>">
    <div class="text-center g-pb-50">
      <h2 class="g-font-asap g-color-black g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?=get_lang('testimonial')?></h2>
      <!-- <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue"> -->
    </div>
    <div class="row justify-content-center">
      <div class="col-md-11 col-12">
        <div id="testi-carousel" class="row owl-theme" style="margin: 0 0 30px 0!important;">
          <?php
          $id = [
            [
              'testi_name' => 'Maya Tamimi',
              'testi_company' => 'Environmental & Sustainability Manager - Unilever',
              'testi_photo' => '3.jpg',
              'testi_description' => 'Report dari Waste4Change sangat membantu kami untuk memperbaiki sistem komunikasi dan edukasi kami pada karyawan',
            ],
            [
              'testi_name' => 'Ratna Kartadjoemena',
              'testi_company' => 'Potato Head Family',
              'testi_photo' => '2.jpg',
              'testi_description' => 'Saya senang sekali bisa bekerjasama dengan Waste4Change karena punya komunikasi yang terbuka dan cepat menanggapi',
            ],
            [
              'testi_name' => 'Rika Anggraini',
              'testi_company' => 'GM Of Corporate Communication - The Body Shop',
              'testi_photo' => '1.jpg',
              'testi_description' => 'W4C lebih dari sekedar company partner tapi seperti teman belajar. Mereka mengajari kami cara membuat prosedur internal',
            ],
          ];
          $en = [
            [
              'testi_name' => 'Maya Tamimi',
              'testi_company' => 'Environmental & Sustainability Manager - Unilever',
              'testi_photo' => '3.jpg',
              'testi_description' => 'The reports that are produced by Waste4Change really helped us to improve the way we communicate with and educate our employees',
            ],
            [
              'testi_name' => 'Ratna Kartadjoemena',
              'testi_company' => 'Potato Head Family',
              'testi_photo' => '2.jpg',
              'testi_description' => 'I am very thriled to be working with Waste4Change because they communicate openly with us and respond quickly',
            ],
            [
              'testi_name' => 'Rika Anggraini',
              'testi_company' => 'GM Of Corporate Communication - The Body Shop',
              'testi_photo' => '1.jpg',
              'testi_description' => 'Waste4Change is more than just a company partner. They are also a learning partner who helped us to make internal procedures',
            ],
          ];
          $number = 1;
          $xb=$this->session->userdata('language')=='en' ? $en : $id;

          foreach($xb as $x){
            ?>
            <div class="g-pa-30 g-mt-10" style="box-shadow: 0 0 20px rgba(0, 0, 0, 0.05)">
              <div class="row">
                <div class="col-auto">
                  <img class="d-inline- <?=$this->agent->is_mobile() ? ' g-width-55 g-height-55 ' : ' g-width-80 g-height-80 ' ?>rounded-circle" src="<?= base_url('assets/img/testimonial/'.$x['testi_photo']) ?>" alt="Image Description">
                </div>
                <div class="col">
                  <!-- <i class="d-block g-color-info g-font-size-50 g-line-height-0_7 g-pos-rel g-top-15 g-mb-20">&#8220;</i> -->
                  <blockquote class="g-color-black g-font-style-italic <?= $this->agent->is_mobile() ? 'g-font-size-14' : 'g-font-size-16' ?> g-line-height-1_4">"<?= $x['testi_description'] ?>"</blockquote>
                  <h4 class="h6 g-color-info g-font-weight-600 text-uppercase g-mb-5 g-font-size-16"><?= $x['testi_name'] ?></h4>
                  <em class="d-block g-color-gray-dark-v4 g-font-style-normal g-font-size-10 g-mb-20"><?= $x['testi_company'] ?></em>
                </div>
              </div>
            </div>
            <?php
          };
          ?>
        </div>
      </div>
    </div>

    <script>
    $(window).ready(function () {
      var element_id='#testi-carousel';
      $(element_id).owlCarousel({
        loop:true,
        margin:30,
        dots:<?= !$this->agent->is_mobile() && count($xb)<3 ? 'false' : 'true' ?>,
        nav:true,
        autoplay:false,
        autoplayTimeout:1500,
        autoplayHoverPause:true,
        responsive:{
          0:{
            items:1
          },
          600:{
            items:1
          },
          1000:{
            items:2
          }
        },
	      navText : ['<i class="<?=$this->agent->is_mobile() ? 'fa fa-angle-left g-color-gray-light-v1 nav-arrow-left' : 'fa fa-angle-left g-color-w4c-blue-v1' ?>" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile()?'2':'4'?>)"></i>','<i class="<?=$this->agent->is_mobile() ? 'fa fa-angle-right g-color-gray-light-v1 nav-arrow-right' : 'fa fa-angle-right g-color-w4c-blue-v1' ?>" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile()?'2':'4'?>)"></i>']

	      //navText : ['<i class="fa fa-angle-left g-color-w4c-blue-v1" aria-hidden="true" style="transform: scale(<?//=$this->agent->is_mobile()?'3':'4'?>//)"></i>','<i class="fa fa-angle-right g-color-w4c-blue-v1" aria-hidden="true" style="transform: scale(<?//=$this->agent->is_mobile()?'3':'4'?>//)"></i>']
      });

      // $(element_id+' .owl-item').attr('style', 'width: 450px;margin-right: 30px;');
      $(element_id+' .owl-controls').attr('style', 'margin-top: 10px;');

	    $('.owl-stage-outer').css('padding-top', 1);
	    $('.owl-stage-outer').css('padding-bottom', 10);

      var screen_display=<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
      // console.log(screen_display);
      var margin_side=(screen_display-screen_display*(<?= $this->agent->is_mobile() ? '69' : '98.5' ?>)/100)/2;
      // console.log('screen : '+screen_display+'nav : '+screen_display*<?= $this->agent->is_mobile() ? '8' : '9' ?>0/100+'batas : '+margin_side);
      <?php
      if($this->agent->is_mobile()){
        echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 300px;width: 68%;right: '+margin_side+'px;')";
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
</section>
