<section class="g-bg-gray-light-v5 dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
  <div class="divimage dzsparallaxer--target w-100 d-none" style="height: 130%; background-image: url(<?= base_url('assets/img/bg/img36.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
  <div class="container <?= $this->agent->is_mobile() ? 'g-pt-75 g-pb-30' : 'g-pt-140 g-pb-70' ?>">
    <div class="text-center g-mb-50">
      <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= strtoupper(lang('blog_title')) ?></h2>
      <!-- <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue"> -->
      <p class="text-muted d-none"><?= lang('brand_partner_subtitle') ?></p>
    </div>

    <?php
    $blog=[
      [
        'blog_title' => 'Extended Producer Responsibility and Its Implementation in Indonesia',
        'blog_category' => 'WASTE MANAGEMENT',
        'blog_content' => 'Facts About Packaging Waste in Indonesia Last April, a picture of an instant noodle packaging in Indonesia that was found in Sendang Biru beach in...',
        'blog_author' => 'MIRIAM BAHAGIJO',
        'blog_url' => 'https://waste4change.com/extended-producer-responsibility-and-its-implementation-in-indonesia/',
        'blog_date' => '2019:09:13',
        'blog_image' => 'https://waste4change.com/wp-content/uploads/WhatsApp-Image-2017-10-05-at-11.57.53-AM-1-580x390.jpeg',
      ],
      [
        'blog_title' => '5 Things You Need to Know About Extended Producer Responsibility (EPR)',
        'blog_category' => 'WASTE MANAGEMENT',
        'blog_content' => 'The packaging of a product is important to ensure the quality of the said product, especially because those products may have to travel far and...',
        'blog_author' => 'MIRIAM BAHAGIJO',
        'blog_url' => 'https://waste4change.com/5-things-you-need-to-know-about-extended-producer-responsibility-epr/',
        'blog_date' => '2019:09:11',
        'blog_image' => 'https://waste4change.com/wp-content/uploads/Chocolate-packaging-580x383.jpeg',
      ],
      [
        'blog_title' => 'Try Visiting Some of These Bulk Stores in Indonesia',
        'blog_category' => 'WASTE MANAGEMENT',
        'blog_content' => 'A good waste management should be based on the 3Rs concepts (Reduce, Reuse, Recycle), in which the three aspects make up a reverse-pyramid of waste...',
        'blog_author' => 'MIRIAM BAHAGIJO',
        'blog_url' => 'https://waste4change.com/try-visiting-some-of-these-bulk-stores-in-indonesia/',
        'blog_date' => '2019:09:11',
        'blog_image' => 'https://waste4change.com/wp-content/uploads/Naked-Inc-laundry-and-soap-580x390.jpeg',
      ],
    ];
    if(!$this->agent->is_mobile()): ?>
    <div class="row">
      <?php
      foreach ($blog as $x):
        ?>
        <div class="col-lg-4 g-mb-30">
          <article class="g-bg-white" style="box-shadow: 0 10px 6px -6px rgba(0, 0, 0, 0.1)">
            <figure class="g-pos-rel">
              <div class="img-fluid w-100 g-min-height-200" style="background: url(<?= $x['blog_image'] ?>);background-size: cover"></div>
              <figcaption class="text-uppercase text-center g-line-height-1_2 g-color-white g-pos-abs g-top-20 g-px-15 g-py-10 bg-w4c-green-v1">
                <span class="d-block"><?= date('F d, Y', strtotime($x['blog_date'])) ?></span>
              </figcaption>
            </figure>

            <div class="g-pa-30">
              <div style="min-height: 80px" class="d-none">
                <div class="mb-1">
                  <small>
                    <span class="g-color-gray-dark-v4">By</span>
                    <a class="g-color-info" href="#!"><?= $x['blog_author'] ?></a>
                  </small>
                </div>
                <div class="mb-2">
                  <small>
                    <span class="g-color-gray-dark-v4">In</span>
                    <a class="g-color-info" href="#!"><?= $x['blog_category'] ?></a>
                  </small>
                </div>
              </div>
              <h3 class="h5 g-mb-15" style="min-height: 80px">
                <a class="u-link-v5 g-color-gray-dark-v2 g-color-info--hover g-font-weight-700" href="<?= $x['blog_title'] ?>" style="word-wrap: break-word"><?= $x['blog_title'] ?></a>
              </h3>
              <div class="g-font-size-13"><?= $x['blog_content'] ?></div>
              <hr class="g-brd-gray-light-v4 g-mt-40">
              <a title="Share Story" target="_blank" class="float-right g-brd-0 g-color-info g-bg-blue  g-color-white--hover g-bg-linkedin--hover u-icon-v2 g-rounded-50x" href="#" style=" height: 30px; width: 30px; ">
                <i class="fa fa-share-alt g-color-white g-font-size-10"></i>
              </a>
              <a target="_blank" href="<?= $x['blog_url'] ?>" class="g-font-color-w4c-blue-v1 g-bg-white g-bg-info--hover g-rounded-50 g-mr-10 g-mb-15 g-font-weight-700">Read More <i class="fa fa-angle-right g-ml-20 g-font-weight-900"></i> </a>
            </div>
          </article>
        </div>
      <?php endforeach; ?>
    </div>

  <?php else: // Else if(!$this->agent->is_mobile())?>

    <div class="clearfix">
      <div id="blog-carousel" class="row owl-theme" style="margin: 0 0 30px 0!important;">
        <?php
        $number = 1;
        foreach($blog as $x) :
          ?>
          <article class="g-bg-white" style="box-shadow: 0 10px 6px -6px rgba(0, 0, 0, 0.1)">
            <figure class="g-pos-rel">
              <div class="img-fluid w-100 g-min-height-200" style="background: url(<?= $x['blog_image'] ?>);background-size: cover"></div>
              <figcaption class="text-uppercase text-center g-line-height-1_2 g-color-white g-pos-abs g-top-20 g-px-15 g-py-10 bg-w4c-green-v1">
                <span class="d-block"><?= date('F d, Y', strtotime($x['blog_date'])) ?></span>
              </figcaption>
            </figure>

            <div class="g-pa-30">
              <div style="min-height: 80px" class="d-none">
                <div class="mb-1">
                  <small>
                    <span class="g-color-gray-dark-v4">By</span>
                    <a class="g-color-info" href="#!"><?= $x['blog_author'] ?></a>
                  </small>
                </div>
                <div class="mb-2">
                  <small>
                    <span class="g-color-gray-dark-v4">In</span>
                    <a class="g-color-info" href="#!"><?= $x['blog_category'] ?></a>
                  </small>
                </div>
              </div>
              <h3 class="h5 g-mb-15" style="min-height: 80px">
                <a class="u-link-v5 g-color-gray-dark-v2 g-color-info--hover g-font-weight-700" href="<?= $x['blog_title'] ?>" style="word-wrap: break-word"><?= $x['blog_title'] ?></a>
              </h3>
              <hr class="g-brd-gray-light-v4 g-mt-40">
              <a title="Share Story" target="_blank" class="float-right g-brd-0 g-color-info g-bg-w4c-blue-v1 g-color-white--hover g-bg-linkedin--hover u-icon-v2 g-rounded-50x" href="#" style=" height: 30px; width: 30px; ">
                <i class="fa fa-share-alt g-color-white g-font-size-10"></i>
              </a>
              <a target="_blank" href="<?= $x['blog_url'] ?>" class="g-font-color-w4c-blue-v1 g-bg-white g-bg-info--hover g-rounded-50 g-mr-10 g-mb-15 g-font-weight-700">Read More <i class="fa fa-angle-right g-ml-20 g-font-weight-900"></i> </a>

            </div>
          </article>
          <?php
        endforeach;
        ?>
      </div>

      <script>
      $(window).ready(function () {
        var element_id='#blog-carousel';
        $(element_id).owlCarousel({
          loop:true,
          margin:30,
          dots:<?= !$this->agent->is_mobile() && count($xb)<3 ? 'false' : 'true' ?>,
          nav:true,
          autoplay:true,
          autoplayTimeout:1500,
          autoplayHoverPause:true,
          responsive:{
            0:{
              items:1
            },
            600:{
              items:3
            },
            1000:{
              items:3
            }
          },
          navText : ['<i class="fa fa-angle-left g-font-color-w4c-blue-v1" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile()?'3':'4'?>)"></i>','<i class="fa fa-angle-right g-font-color-w4c-blue-v1" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile()?'3':'4'?>)"></i>']
        });

        //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
        $(element_id+' .owl-controls').attr('style', 'margin-top: 30px;');

        var screen_display=<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
        console.log(screen_display);
        var margin_side=(screen_display-screen_display*(<?= $this->agent->is_mobile() ? '60' : '96' ?>)/100)/2;
        console.log('screen : '+screen_display+'nav : '+screen_display*<?= $this->agent->is_mobile() ? '8' : '9' ?>0/100+'batas : '+margin_side);
        <?php
        if($this->agent->is_mobile()){
          echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 457px;width: 68%;right: '+margin_side+'px;')";
        }else{
          echo "$(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 200px;width: 99%;right: '+margin_side+'px;')";
        }
        ?>
      });

      </script>
    </div>

  <?php endif; ?>

  <div class="text-center g-mb-50 <?= $this->agent->is_mobile() ? 'g-pt-5' : 'g-pt-40' ?>">
    <div class="row justify-content-center">
      <div class="col-md-5 text-muted">
        <p class="<?= $this->agent->is_mobile() ? 'g-font-size-12' : '' ?>">
          <?= (lang('blog_cta_description')) ?>
        </p>
        <br>
        <a target="_blank" class="btn btn-info g-bg-white g-font-weight-700 g-font-color-w4c-blue-v1 g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9 text-uppercase" href="http://waste4change.com/blog">
          <?= strtoupper(lang('blog_cta_link')) ?>
        </a>
      </div>
    </div>
  </div>

</div>
</section>
