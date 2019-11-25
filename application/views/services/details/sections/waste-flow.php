
<!-- Mockup Block -->
<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-py-140' ?>">

  <div id="waste-flow" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>

  <div class="container">
    <div class="text-center g-mb-50">
      <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= lang('waste_flow') ?></h2>
      <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
    </div>

    <?php
    if($this->agent->is_mobile()){
      ?>
	    <div class="row justify-content-center">
		    <div class="col-md-11 col-12">

			    <div id="waste-flow-carousel" class="col-md-12 owl-theme" style="margin: 0 0 30px 0!important;">
						<?php
						$i=0;
						foreach($flows as $flow) :
							?>
							<div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-40 g-py-10">
								<div class="g-mx-auto g-mx-30" style="">
								<img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= base_url('assets/img/icons/services/flow/'.$flow->flow_icon) ?>" alt="Flow <?= $flow->flow_name ?>" style="width: 100%">
							</div>
								<div class="g-pa-15">
									<h2 class="h5 g-color-black g-font-weight-300 mb-4 g-font-size-15" style="margin-bottom: 5px!important;">
										<?= $flow->flow_name ?>
									</h2>
								</div>
							</div>
						<?php
						$i++;
						endforeach;
						?>
			    </div>

			    <script>
				    $(window).ready(function () {
					    var element_id='#waste-flow-carousel';
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
								    items:1
							    },
							    600:{
								    items:1
							    },
							    1000:{
								    items:2
							    }
						    },
						    navText : ['<i class="fa fa-angle-left g-color-w4c-blue-v1" aria-hidden="true" style="transform: scale(4)"></i>','<i class="fa fa-angle-right g-color-w4c-blue-v1" aria-hidden="true" style="transform: scale(4)"></i>']
					    });

					    //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
					    $(element_id+' .owl-controls').attr('style', 'margin-top: 30px;');
					    var screen_display=<?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
					    // console.log(screen_display);
					    var margin_side=(screen_display-screen_display*(<?= $this->agent->is_mobile() ? '69' : '98.5' ?>)/100)/2;
					    //console.log('screen : '+screen_display+'nav : '+screen_display*<?//= $this->agent->is_mobile() ? '8' : '9' ?>//0/100+'batas : '+margin_side);
					    $(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 295px;width: 74%;right: '+margin_side+'px;')
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
      <?php
    }else{ // DESKTOP
      ?>
      <div>
        <div class="row justify-content-center">
          <?php $i=1; foreach ($flows as $flow): ?>
            <div class="col-md-4">
              <article class="g-transition-0_3">
                <div class="g-color-black g-bg-white--hover text-center g-rounded-10 g-transition-0_3 g-px-20 g-py-10" style="padding: 30px 0 0 0!important;">
                  <img class="img-fluid u-block-hover__main--zoom-v1 mb-3" src="<?= base_url('assets/img/icons/services/flow/'.$i.'.png') ?>" alt="Image Description" style="width: 40%">
                  <div class="g-pa-15">
                    <h2 class="h5 g-color-black g-font-weight-600 mb-4 g-font-size-15" style="margin-bottom: 5px!important;">
                      <?= $flow->flow_name ?>
                    </h2>
                  </div>
                </div>
              </article>
            </div>
          <?php $i++; endforeach; ?>
        </div>
      </div>
      <?php
    } //end desktop
    ?>
  </div>
</section>
<!-- End Mockup Block -->
