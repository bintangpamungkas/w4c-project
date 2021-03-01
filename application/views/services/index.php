
<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
	<div class="divimage dzsparallaxer--target w-100" style="height: 130%; background-image: url(<?= base_url(DIR_BG . 'bg_header.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
	<div style="background:radial-gradient(circle farthest-side at 80% 60%, rgba(66,195,120,0.67), rgba(14,105,148,0.92))">
		<div class="container g-pt-100 g-pb-120">
			<br>
			<div class="row no-gutters g-font-size-<?= $this->agent->is_mobile() ? '25' : '35' ?> g-color-white mb-0 g-line-height-1_2">
				<div class="col-12 g-font-size-23 g-letter-spacing-2 g-font-weight-600 text-uppercase g-mb-20"> <?= lang('services_all_services') ?> </div>
				<div class="col-<?= $this->agent->is_mobile() ? '12' : '4' ?> g-font-size-30 g-font-weight-900 g-line-height-1_2"> <?= ucfirst(strtolower(get_lang('choose-the-right-solution'))) ?> </div>
			</div>
		</div>
	</div>
</section>

<section class="g-bg-secondary g-pt-50">
	<div class="container">
		<div class="row">
			<!-- Services target navivation -->
			<div class="col-md-7 col-xs-12">
				<div class="row justify-content-center g-ma-0">
					<div class="col<?= $this->agent->is_mobile() ? '' : '' ?> text-center g-px-0 tab-shadow align-self-end">
						<a class="my_tab_2 g-cursor-pointer nav-link text-uppercase g-font-weight-700 g-font-size-<?= $this->agent->is_mobile() ? '14 g-py-10  g-px-5' : '15 g-py-12 g-px-30' ?> <?= (empty($service_target) || $service_target == 'all') ? 'tab-active' : '' ?> " href="<?= site_url('service?city=' . $input_city . '&target=all') ?>" style="<?= $this->agent->is_mobile() ? 'min-height: 40px' : 'min-height: 50px' ?> ; color:#aaa">
							<?= get_lang('all') ?>
						</a>
					</div>
					<?php
					foreach ($service_targets as $target) :
					?>
					<?php if(isset($target->services)) : ?>
						<div class="col<?= $this->agent->is_mobile() ? '' : '' ?> text-center g-px-0 align-self-end">
							<a class="my_tab_2 g-cursor-pointer nav-link text-uppercase g-font-weight-700 g-font-size-<?= $this->agent->is_mobile() ? '14 g-py-10 g-px-5 ' : '15 g-py-12  g-px-20' ?> <?= $service_target == strtolower($target->service_target_slug) ? 'tab-active' : '' ?>" href="<?= site_url('service?city=' . $input_city . '&target=' . strtolower($target->service_target_slug)) ?>" style="<?= $this->agent->is_mobile() ? 'min-height: 40px' : 'min-height: 50px' ?> ; color:#aaa">
								<?= $target->title ?>
							</a>
						</div>
					<?php endif; ?>
					<?php
					endforeach;
					?>
				</div>
			</div>
			<!-- END Services target navivations -->

			<!-- Search location -->
			<div class="col-md-5 col-xs-12">
				<?php if ($this->agent->is_mobile()) : ?>
					<h4 class="g-font-asap g-font-weight-700 g-color-w4c-blue-v1 mb-3 g-mt-30"><?= get_lang('available-services-for-your-location') ?></h4>
				<?php endif; ?>
				<div style="<?= $this->agent->is_mobile() ?: 'position: absolute;bottom: 0;left: 0;width: calc(100% - 15px);' ?>">
					<form id="search-form" action="<?= site_url('service') ?>" method="get">
						<div class="autocomplete">
							<div class="input-group pull-right">
								<div class="input-group-prepend" style="z-index: 1; margin-right: -29px;">
									<span class="input-group-text rounded-0 g-bg-white g-color-gray-light-v1 g-pa-10 border-right-0" style="border:1px solid #0B90B9;"><i class="fa fa-map-marker"></i></span>
								</div>
								<input id="search-input" class="form-control form-control-md border-left-0 rounded-0 g-pa-10 pl-0 border-right-0 g-box-shadow-none g-pl-30" type="text" name="city" value="<?= $input_city ?>" style="border:1px solid #0B90B9; border-radius:0px" placeholder="<?= get_lang('enter-the-name-of-your-city') ?>" autocomplete="off">
								<input type="hidden" name="target" value="<?= $service_target ?>">
								<div id="search-clear" class="input-group-append" style="display: none">
									<span class="input-group-text rounded-0 g-bg-white g-color-gray-light-v1 g-pa-10 border-left-0" style="border:1px solid #0B90B9;"><i class="fa fa-times"></i></span>
								</div>
								<div class="input-group-btn">
									<button id="search-button" class="btn btn-info g-py-10 g-px-30 g-letter-spacing-2 border-left-0" type="button" style="border:1px solid #0B90B9;border-radius:0px">
										<?= $this->agent->is_mobile() ? '<i class="icon icon-magnifier  g-font-size-20"></i>' : strtoupper(get_lang('search')) ?>
									</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- End Search location -->
		</div>
	</div>
	<div class="g-bg-secondary">
		<div class="container">
			<div class="g-font-size-20 g-mt-30"><?= empty($search_message) ? '' : $search_message ?></div>
			<?php
			if (empty($services)) {
				//				echo '<div class="g-font-size-25 g-font-weight-600 g-my-20">' . get_lang('no-service-found') . '</div>';
				echo '<div class="g-font-size-25 g-font-weight-600 g-my-50"></div>';
			} else {
				$i = 0;
				$service_id = 0;
				foreach ($services as $service) {
					if ($service->service_id != $service_id && $service->service_slug != "inorganic-waste-management" && $service->service_slug != "composting-tools-supplies" &&  $service->service_slug != "custom-waste-bin" && $service->service_slug != "produk-black-soldier-fly") {
						if ($this->agent->is_mobile()) { //mobile view
			?>
							<div class="bg-white g-my-20 box-shadow-down">
							<!-- <img class="img-fluid w-100 h-100" src="<?= get_image(DIR_SERVICE . $service->service_slug . '/bg/' . $service->service_thumbnail_image, base_url(DIR_IMG . 'error/1x2.png')) ?>" alt="<?= $service->service_name . ' image' ?>" style="-webkit-mask-image: -webkit-gradient(linear, <?= $i % 2 == 1 ? 'right top, left top,' : 'left top, right top,' ?> from(rgba(0,0,0,1)), to(rgba(0,0,0,0)));mask-image: linear-gradient(to left, rgba(0,0,0,1), rgba(0,0,0,0));"> -->

								<div style="height: 200px;background: url(<?= get_image(DIR_SERVICE . $service->service_slug . '/bg/' . $service->service_thumbnail_image, base_url(DIR_IMG . 'error/1x2.png')) ?>);background-size: cover;"></div>
								<!-- <img class="img-fluid w-100" src="<?= get_image(DIR_SERVICE . $service->service_slug . '/bg/thumbnail.jpg', base_url(DIR_IMG . 'error/1x2.png')) ?>" alt="<?= $service->service_name . ' image' ?>"> -->
								<div class="bg-white g-mx-20 g-pa-20" style=" margin-top: -40px;">
									<span class="g-color-black-opacity-0_8 g-font-weight-600 g-font-size-12 text-uppercase"><?= strtolower($service->service_category_name) == strtolower($service->service_name) ? 'GENERAL' : $service->service_category_name ?></span>
									<h2 class="h4 g-color-black g-font-weight-600 g-mb-25 g-line-height-1_2">
										<?= $service->service_name ?>
									</h2>
									<p class="g-color-black-opacity-0_8"><?= $service->service_description ?></p>
									<a class="g-font-size-12 g-color-w4c-blue-v1 g-font-weight-700 mb-3 g-letter-spacing-1_5 text-uppercase <?= empty($service->service_page_url) ? 'd-none' : '' ?>" href="<?= get_url($service->service_page_url) ?>"><?= get_lang('learn-more') ?> <i class="fa fa-angle-right g-font-size-14 g-font-weight-700 g-ml-10" style="width: 20px; margin-top: -10px;"></i> </a>
									<hr class="mb-1">
									<div class="g-mt-10">
										<div class="g-font-size-12 g-mb-5"><?= ucfirst(get_lang('recommended-for')) ?></div>
										<?php
										foreach ($service->recomendation as $recomendation) :
										?>
														<span class="u-label u-label--sm g-rounded-20 g-font-size-10 g-px-20 g-py-7 g-mb-5 g-mr-10 g-my-5 g-brd-0" style="color:<?= empty($recomendation->color) ? '#4489a2' :$recomendation->color ?>; background-color:<?= empty($recomendation->color) ? '#4489a2' :$recomendation->color ?>20"><?= empty($recomendation->name) ? $recomendation->item_title : $recomendation->name ?></span>

										<?php
										endforeach;
										?>
									</div>
								</div>
							</div>
						<?php

						} else { //desktop view
						?>
							<div id="asd<?= $i ?>" class="bg-white g-my-20 box-shadow-down">
								<div class="g-pa-40">
									<div class="row">
										<div class="col-6 <?= $i % 2 == 1 ? 'order-3' : 'order-1' ?>">
											<img class="img-fluid w-100 h-100" src="<?= get_image(DIR_SERVICE . $service->service_slug . '/bg/' . $service->service_thumbnail_image, base_url(DIR_IMG . 'error/1x2.png')) ?>" alt="<?= $service->service_name . ' image' ?>" style="-webkit-mask-image: -webkit-gradient(linear, <?= $i % 2 == 1 ? 'right top, left top,' : 'left top, right top,' ?> from(rgba(0,0,0,1)), to(rgba(0,0,0,0)));mask-image: linear-gradient(to left, rgba(0,0,0,1), rgba(0,0,0,0));object-fit: cover">
										</div>
										<div class="col-6 order-2">
											<span class="g-font-weight-600 g-font-size-12 text-uppercase"><?= strtolower($service->service_category_name) == strtolower($service->service_name) ? 'GENERAL' : $service->service_category_name ?></span>
											<div class="">
												<h2 class="'h1 g-color-black g-font-weight-600 g-mb-25 g-line-height-1_2">
													<?= $service->service_name ?>
												</h2>
												<p class="g-color-black-opacity-0_9 g-font-size-16"><?= $service->service_description ?></p>
												<a class="g-color-w4c-blue-v1 g-font-weight-700 mb-3 text-uppercase <?= empty($service->service_page_url) ? 'd-none' : '' ?>" href="<?= get_url($service->service_page_url) ?>"><?= get_lang('learn-more') ?>
													<i class="fa fa-angle-right g-ml-10 g-font-size-20"></i>
												</a>
												<div class="g-mt-20">
													<div class="g-font-size-12 g-mb-5"><?= get_lang('recommended-for') ?></div>
													<?php
													foreach ($service->recomendation as $recomendation) :
													?>
														<span class="u-label u-label--sm g-rounded-20 g-font-size-12 g-px-20 g-py-7 g-mb-5 g-mr-10 g-my-5" style="color:<?= empty($recomendation->color) ? '#4489a2' :$recomendation->color ?>; background-color:<?= empty($recomendation->color) ? '#4489a2' :$recomendation->color ?>20"><?= empty($recomendation->name) ? $recomendation->item_title : $recomendation->name ?></span>
													<?php
													endforeach;
													?>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
						
			<?php
						} // End desktop view
						$service_id = $service->service_id;
						$i++;
					} // end if ($service->service_id!=$service)
					
				} // End foreach ($services as $service)
			}
			?>
			
		</div>
		<div class="g-bg-gray-light-v4 g-py-40">
			<div class="container">
				<div class="row no-gutters justify-content-between">
					<div class="col-xs-12 col-sm-12 col-md-auto">
						<h3 class=" <?= $this->agent->is_mobile() ? 'h5 mb-4' : 'h3' ?> g-font-weight-700"><?= lang('services_not_found') ?></h3>
					</div>
					<div class="col-xs-auto col-sm-auto col-md-1 col-lg-1"></div>
					<div class="col-xs-12 col-sm-12 col-md-4 col-lg-auto <?= $this->agent->is_mobile() ? 'text-center' : 'text-right' ?>">
						<a class="btn btn-outline-info btn-block g-brd-2 g-font-size-13 g-rounded-50 g-pl-25 g-pr-25 g-py-9 text-uppercase" href="<?= site_url('contact') ?>"><?= lang('services_talk_to_expert') ?></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<style type="text/css">
  #mc_embed_signup {
    background: #fff;
    clear: left;
    font: 14px Helvetica, Arial, sans-serif;
  }
  .swal2-confirm {
    width : 200px;
    background-color : #FFFFFF!important;
    color : #17A2B8!important;
    border : solid!important;
    border-color : #17A2B8!important;
    border-radius :26px!important;
  }

  .swal2-confirm:hover {
    background-color : #17A2B8!important;
    color : #FFFFFF!important;
  }

  .swal2-title {
    color : #17A2B8!important;
  }
  /* Add your own Mailchimp form style overrides in your site stylesheet or in this style block.
	   We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
</style>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header border-0">
        <h5 class="modal-title text-center mx-auto" id="exampleModalLabel">
            
        </h5>
        <button type="button" class="close close_modal" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <div class="modal-body">
            <!-- Begin Mailchimp Signup Form -->
<link href="//cdn-images.mailchimp.com/embedcode/classic-10_7.css" rel="stylesheet" type="text/css">
<style type="text/css">
	#mc_embed_signup{background:#fff; clear:left; font:14px Helvetica,Arial,sans-serif; }
	/* Add your own Mailchimp form style overrides in your site stylesheet or in this style block.
	   We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
</style>
<div id="mc_embed_signup">
<form action="https://waste4change.us14.list-manage.com/subscribe/post?u=d3a7d181f9882f5cee63b57c0&amp;id=c62f586bfd" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
    <div id="mc_embed_signup_scroll">
    <h2 style="color:#17A2B8;text-align:center;margin-top:-10px"><?= lang('join') ?></h2>
	<p class="text-center" style="font-size:14px;color:#00000, 50%"><?= lang('subtitle_newsletter') ?></p>
<div class="mc-field-group">
	<label for="mce-EMAIL"><?= lang('email') ?>  <span class="asterisk">*</span>
</label>
	<input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL">
</div>
<div class="mc-field-group">
	<label for="mce-FNAME"> <?= lang('name') ?> <span class="asterisk">*</span>
</label>
	<input type="text" value="" name="FNAME" class="required" id="mce-FNAME">
</div>
<div class="mc-field-group">
	<label for="mce-CITY"><?= lang('city') ?>  <span class="asterisk">*</span>
</label>
	<input type="text" value="" name="CITY" class="required" id="mce-CITY">
</div>
<div class="mc-field-group">
	<label for="mce-OCCUPATION"> <?= lang('occupation') ?> </label>
	<input type="text" value="" name="OCCUPATION" class="" id="mce-OCCUPATION">
</div>
<div class="indicates-required text-left mb-2"><span class="asterisk">*</span> <?= lang('required') ?></div>
	<div id="mce-responses" class="clear">
		<div class="response" id="mce-error-response" ></div>
		<div class="response" id="mce-successs-response" ></div>
	</div>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
    <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_d3a7d181f9882f5cee63b57c0_c62f586bfd" tabindex="-1" value=""></div>
    <div class="clear"><input type="submit" value="<?= lang('subscriber') ?>" name="subscribe" id="mc-embedded-subscribe" style="background:#17A2B8;width:96%;border-radius:18px;font-size: 14px;font-weight: 600;margin-top : <?= $this->agent->is_mobile() ? '-30px' : '' ?> " class="button btn btn-default"></div>
    </div>
</form>
</div>
<script type='text/javascript' src='//s3.amazonaws.com/downloads.mailchimp.com/js/mc-validate.js'></script><script type='text/javascript'>(function($) {window.fnames = new Array(); window.ftypes = new Array();fnames[0]='EMAIL';ftypes[0]='email';fnames[1]='FNAME';ftypes[1]='text';fnames[3]='CITY';ftypes[3]='text';fnames[4]='OCCUPATION';ftypes[4]='text'; }(jQuery));var $mcj = jQuery.noConflict(true);</script>
<!--End mc_embed_signup-->
        </div>
      </div>
    </div>
  </div>
</div>

<?php if($this->agent->is_mobile()) : ?>
<div class="container">
	<div id="card_subscriber" class="" style="position: fixed; bottom:75px; right:15px; z-index:99; width : 100%">
		<div class="card" style="width:95%;height:100%;margin-left: 24px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.1);">
			<div class="card-header text-right" style="padding:0px 10px 0px 10px;background:white;border:none;cursor: pointer;">
				<a class="btn btn-default close_button" style="font-weight:bold;font-size:17px;color:#C4C4C4;">
				<i class="fa fa-close" ></i>
				</a>
			</div>
			<div class="card-body text-center" style="margin-top:-30px">
			<h5 style="font-weight:bold;font-size:16px;color:#17A2B8"><?= lang('join') ?></h5>
			<p style="font-weight:400;font-size:14px"><?= lang('subtitle_newsletter') ?></p>
			<button type="button" class="btn btn-default subs" href="#"  style="border-radius:20px;background:#17A2B8;width:236px;color:#FFFFFF" data-toggle="modal" data-target="#exampleModal">
				<?= lang('subscriber') ?>
			</button>
			</div>
		</div>
	</div>
</div>

<?php else : ?>
	<div id="card_subscriber" class="" style="position: fixed; bottom:75px; right:15px; z-index:99">
		<div class="card" style="width:270px;height:100%;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.1);">
			<div class="card-header text-right" style="padding:0px 10px 0px 10px;background:white;border:none;cursor: pointer;">
				<a class="btn btn-default close_button" style="font-weight:bold;font-size:17px;color:#C4C4C4;">
				<i class="fa fa-close" ></i>
				</a>
			</div>
			<div class="card-body text-center" style="margin-top:-30px">
			<h5 style="font-weight:bold;font-size:16px;color:#17A2B8"><?= lang('join') ?></h5>
			<p style="font-weight:400;font-size:14px"><?= lang('subtitle_newsletter') ?></p>
			<button type="button" class="btn btn-default subs" href="#"  style="border-radius:20px;background:#17A2B8;width:236px;color:#FFFFFF" data-toggle="modal" data-target="#exampleModal">
				<?= lang('subscriber') ?>
			</button>
			</div>
		</div>
	</div>
<?php endif; ?>

<div class="" style="position: fixed; bottom:-15px; right:-10px; z-index:99">
  <a id="button_subscriber" class="btn btn-default g-rounded-50">
    <img class="icon_newsletter" src="<?= get_image(DIR_ICON.'subs.png') ?>" style="width :80px" alt="Subscriber icon" >
  </a>
</div>

</section>
<!-- END List Product -->
<script
  type="text/javascript"
  src="https://s3.amazonaws.com/downloads.mailchimp.com/js/mc-validate.js"
></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script>

  $("#mc-embedded-subscribe").on("click", function() {
  if ($("#mce-error-response").css("display") == "none") {
      setTimeout(() => {
      $(".icon_newsletter").attr("src", "<?= get_image(DIR_ICON.'subs_email.png') ?>");
      $(".modal").removeClass("show");
      $(".modal-backdrop").removeClass("show");
      Swal.fire({
        imageUrl: "<?= get_image(DIR_ICON.'thanks.png') ?>",
        title: '<?= lang('thanks') ?>',
        text: '<?= lang('content_alert') ?>',
        showConfirmButton: true,
        confirmButtonText : "CLOSE",
        showCloseButton : "true"
      }),then(function() {
        $("#exampleModal").modal("hide");
      });
      }, 1000);
  } else {
    $(".swal2-container").hide();
  }
});

  var card = $("#card_subscriber");
  var button = $("#button_subscriber");
  var close = $(".close_button");
  var icon_newsletter = $(".icon_newsletter");
  var subs = $('.subs');
  card.show();
  

	close.on("click", function(){
		$(".icon_newsletter").attr("src", "<?= get_image(DIR_ICON.'subs_email.png') ?>");
		button.show();
		card.hide();
	});

	button.on("click", function() {
		card.toggle();
		if ($("#card_subscriber").css("display") == "block" ) {
			$(".icon_newsletter").attr("src", "<?= get_image(DIR_ICON.'subs.png') ?>");
		} else {
			$(".icon_newsletter").attr("src", "<?= get_image(DIR_ICON.'subs_email.png') ?>");
		}
	});

	subs.on("click", function() {
		card.hide();
	});

	$('.close_modal').on("click", function() {
		card.show();
	});
	
	$('.close_modal').on("click", function(){
		card.hide();
		$(".icon_newsletter").attr("src", "<?= get_image(DIR_ICON.'subs_email.png') ?>");
	});

  (function ($) {
    window.fnames = new Array();
    window.ftypes = new Array();
    fnames[0] = "EMAIL";
    ftypes[0] = "email";
    fnames[1] = "FNAME";
    ftypes[1] = "text";
    fnames[3] = "CITY";
    ftypes[3] = "text";
    fnames[4] = "OCCUPATION";
    ftypes[4] = "text";
  })(jQuery);
  var $mcj = jQuery.noConflict(true);
  var success = $("mce-success-response")
  if (success.css('display') == 'block')
  {
     document.getElementById("mce-success-response").innerHTML = "Paragraph changed!";
  } else {
    // false
  }

	$(document).on('click', '.my_tab_2', function() {
		
		var tab_target = $(this).data('tab');
		$('.my_tab_2').removeClass('tab-active');
		$(this).addClass('tab-active');
		$('.my_tab_content').addClass('d-none');
		$(tab_target).removeClass('d-none');
	});
	var city_list = [
		<?php foreach ($coverage_cities as $city) {
			echo '"' . $city->city_name . ', ' . $city->province_name . '",';
		}
		?>
	];

	$(function() {
		$("#search-input").autocomplete({
			source: city_list,
			select: function(event, ui) {
				$('#search-button').attr('disabled', false);
			}
		});
	});

	$('#search-input').keydown(function(e) {
		if (e.keyCode == 13) {
			e.preventDefault();
			check_autocomplete_input($(this).val(), city_list);
		}
		$('#search-button').attr('disabled', true);
	});

	$('#search-input').keyup(function(e) {
		if ($(this).val().length > 0) {
			$('#search-clear').show();
		} else {
			$('#search-clear').hide();
		}
	});

	$('#search-button').click(function() {
		let input_city = $('#search-input').val();
		check_autocomplete_input(input_city, city_list);

	});

	$('#search-clear').click(function() {
		$('#search-input').val('');
		$(this).hide();
	});

	function check_autocomplete_input(input_city, list) {
		let testCase, count_similarity = 0,
			i;
		if (input_city.length !== 0) {
			for (i = 0; i < list.length; i++) {
				testCase = list[i];
				if (input_city === testCase) {
					count_similarity++;
					$('#search-button').attr('disabled', false);
				}
			}
		}
		if (count_similarity > 0) {
			$('#search-input').attr('readonly', true);
			$('#search-button').attr('disabled', true);
			$('#search-form').submit();
		}
	}
</script>