<style type="text/css">
  #mc_embed_signup {
    background: #fff;
    clear: left;
    font: 14px Asap;
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
<div class="container">
<form action="https://waste4change.us14.list-manage.com/subscribe/post?u=d3a7d181f9882f5cee63b57c0&amp;id=c62f586bfd" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
    <div id="mc_embed_signup_scroll">
    <h2 style="color:#17A2B8;text-align:center;margin-top:-10px"><?= lang('join') ?></h2>
	<p class="text-center" style="font-size:14px;color:#00000, 50%;font-family:'Asap'"><?= lang('subtitle_newsletter') ?></p>
<div class="mc-field-group">
	<label for="mce-EMAIL" style="font-family:'Asap'"><?= lang('email') ?>  <span class="asterisk">*</span>
</label>
	<input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL">
</div>
<div class="mc-field-group">
	<label for="mce-FNAME" style="font-family:'Asap'"> Name/ Nama  <span class="asterisk">*</span>
</label>
	<input type="text" value="" name="FNAME" class="required" id="mce-FNAME">
</div>
<div class="mc-field-group">
	<label for="mce-CITY" style="font-family:'Asap'">City/ Kota  <span class="asterisk">*</span>
</label>
	<input type="text" value="" name="CITY" class="required" id="mce-CITY">
</div>
<div class="mc-field-group">
	<label for="mce-OCCUPATION" style="font-family:'Asap'"> Occupation/ Jabatan </label>
	<input type="text" value="" name="OCCUPATION" class="" id="mce-OCCUPATION">
</div>
<div class="indicates-required text-left mb-2" style="font-family:'Asap'"><span class="asterisk">*</span> required</div>
	<div id="mce-responses" class="clear">
		<div class="response" id="mce-error-response" ></div>
		<div class="response" id="mce-successs-response" ></div>
    </div>
	</div>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
    <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_d3a7d181f9882f5cee63b57c0_c62f586bfd" tabindex="-1" value=""></div>
    <div class="clear"><input type="submit" value="<?= lang('subscriber') ?>" name="subscribe" id="mc-embedded-subscribe" style="background:#17A2B8;width:96%;border-radius:18px;font-size: 14px;font-weight: 600;font-family:'Asap'" class="button btn btn-default"></div>
    </div>
</form>
</div>
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
		<div class="card" style="width:95%;height:100%;margin-left: 24px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);">
			<div class="card-header text-right" style="padding:0px 10px 0px 10px;background:white;border:none;cursor: pointer;">
				<a class="btn btn-default close_button" style="font-weight:bold;font-size:17px;color:#C4C4C4;">
				<i class="fa fa-close" ></i>
				</a>
			</div>
			<div class="card-body text-center" style="margin-top:-30px">
			<h5 style="font-weight:bold;font-size:16px;color:#17A2B8"><?= lang('join') ?></h5>
			<p style="font-weight:400;font-size:10px"><?= lang('subtitle_newsletter') ?></p>
			<button type="button" class="btn btn-default" href="#"  style="border-radius:20px;background:#17A2B8;width:236px;color:#FFFFFF" data-toggle="modal" data-target="#exampleModal">
				<?= lang('subscriber') ?>
			</button>
			</div>
		</div>
	</div>
</div>

<?php else : ?>
	<div id="card_subscriber" class="" style="position: fixed; bottom:75px; right:15px; z-index:99;">
		<div class="card" style="width:270px;height:100%;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);">
			<div class="card-header text-right" style="padding:0px 10px 0px 10px;background:white;border:none;cursor: pointer;">
				<a class="btn btn-default close_button" style="font-weight:bold;font-size:17px;color:#C4C4C4;">
				<i class="fa fa-close" ></i>
				</a>
			</div>
			<div class="card-body text-center" style="margin-top:-30px">
			<h5 style="font-weight:bold;font-size:16px;color:#17A2B8"><?= lang('join') ?></h5>
			<p style="font-weight:400;font-size:10px"><?= lang('subtitle_newsletter') ?></p>
			<button type="button" class="btn btn-default subs" href="#"  style="border-radius:20px;background:#17A2B8;width:236px;color:#FFFFFF" data-toggle="modal" data-target="#exampleModal">
				<?= lang('subscriber') ?>
			</button>
			</div>
		</div>
	</div>
<?php endif; ?>
<div class="" style="position: fixed; bottom:-10px; right:-10px; z-index:99">
  <a id="button_subscriber" class="btn btn-default g-rounded-50">
    <img class="icon_newsletter" src="<?= get_image(DIR_ICON.'subs.png') ?>" style="width :80px" alt="Subscriber icon" >
  </a>
</div>
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
  var close_pwm = $(".close");
  var subs = $(".subs");
  var tes = $(".tes");
    card.hide();
 
  close_pwm.on("click", function() {
    card.show();
  })
  
  $("#PopUpModal").on("click", function() {
    card.show();
  })



  close.on("click", function(){
      $(".icon_newsletter").attr("src", "<?= get_image(DIR_ICON.'subs_email.png') ?>");
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
</script>

