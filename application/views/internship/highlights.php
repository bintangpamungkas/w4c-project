
<style>
	#highlight-carousel .owl-nav {
		display:none;
	}
</style>

<!-- Our Value -->
<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-0 g-pb-40' : 'g-bg-white g-pb-50 g-pt-80' ?>">
	<div class="container">
		<h2 class="g-font-asap g-color-black text-uppercase text-center g-font-weight-600 g-font-size-<?= $this->agent->is_mobile() ? '24' : '35 g-mb-10' ?>"><?= $copy->highlights->title ?></h2>
		<hr class="g-width-70 g-my-20 g-brd-2 w4c-brd-blue">
        <p class="g-font-asap g-font-weight-400 text-center g-font-size-<?= $this->agent->is_mobile() ? '12' : '18 g-mb-10' ?>" style="color: #52575C"><?= $copy->highlights->subtitle ?></p>
			<?php if ($this->agent->is_mobile()) : ?>
				<div class="row justify-content-center g-mt-50 no-gutters ">
        <div id="highlight-carousel" class="col-md-11 col-12 align-self-end">
          <?php foreach ($copy->highlights->items as $item) : //Item Iteration
          ?>
            <div class="col-sm-3 g-px-13 g-mb-30 g-rounded-5">
              <article class="u-block-hover g-rounded-5">
                <div class="g-bg-cover g-bg-black-opacity-0_6--after g-bg-primary-opacity-0_3--hover">
                  <img class="u-block-hover__main--mover-down" src="<?= get_image(DIR_BG . 'internship/' . $item->image) ?>" alt="Image Description" style="height:400px; object-fit:cover">
                </div>
                <div class="g-z-index-1" style="position: absolute; bottom: 0px; ">
                  <div class="g-pl-20 d-block g-color-white g-font-weight-600 g-font-size-36 g-mb-20 g-line-height-1_2 g-bg-transparent"><?= $item->title ?></div>
                  <p class="g-color-white-opacity-0_7 mb-0"></p>
                  <div class="d-inline-block g-color-white g-bg-info g-font-size-14 g-pa-25 ">
                    <?= $item->description ?>
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
          var element_id = '#highlight-carousel';
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
        <div class="row justify-content-center my_tab_content g-mt-30">
				<?php foreach ($copy->highlights->items as $item) : ?>
		    <div class="col-md-6 p-2">
            <div class="u-block-hover" style="border-radius:8px">
              <div class="g-bg-cover g-bg-black-opacity-0_6--after g-bg-blue--hover-parent">
                <img class="u-block-hover__main--mover-up" src="<?= get_image(DIR_BG . 'internship/' . $item->image) ?>" alt="<?= $copy->card_batch1->image ?>" style="height:400px; object-fit:cover;">
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
                </div>
              </div>
            </div>
          </div>
				<?php endforeach; ?>
			</div>
        <?php endif;
        ?>
	</div>
</section>

<!-- End Our Value -->