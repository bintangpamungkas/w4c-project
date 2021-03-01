<?php
foreach ($sections as $section) {
	if ($section->section_id!=''){
		$data['section_name']=$section->section_name;
		$data['section_slug']=$section->section_slug;
		$this->load->view('services/sections/'.$section->section_slug,$data);
	}
}
if ($service_id != 'personal-waste-management'):

 $contact = '6282111100170';
 $wa_message = [
    "id"=>"Halo%20Waste4Change.%20%0A%0ASaya%20ingin%20bertanya%20terkait%20layanan%20".$service->service_name.".%20%0A%0AMohon%20informasinya.%20%0ATerima%20kasih.",
    "en"=>"Hello%20Waste4Change%2C%20%0A%0AI%20would%20like%20to%20ask%20regarding%20the%20".$service->service_name."%20service.%0A%0ACould%20you%20please%20provide%20further%20information%20regarding%20this%20matter%3F%0AThank%20you."
];
?>
<style type="text/css">
  #mc_embed_signup {
    background: #fff;
    clear: left;
    font: 14px Asap;
  }
  /* Add your own Mailchimp form style overrides in your site stylesheet or in this style block.
	   We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
</style>
<!-- Modal -->
<div class="modal fade form_subs" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
	#mc_embed_signup{background:#fff; clear:left; font:14px Asap; }
	/* Add your own Mailchimp form style overrides in your site stylesheet or in this style block.
	   We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
</style>
<div id="mc_embed_signup">
<div class="container">
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
	<label for="mce-FNAME"> <?= lang('name') ?>  <span class="asterisk">*</span>
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
		<div class="response" id="mce-error-response" style="display:none"></div>
		<div class="response" id="mce-success-response" style="display:none"></div>
	</div>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
    <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_d3a7d181f9882f5cee63b57c0_c62f586bfd" tabindex="-1" value=""></div>
    <div class="clear"><input type="submit" value="<?= lang('subscriber') ?>" name="subscribe" id="mc-embedded-subscribe" style="background:#17A2B8;width:96%;border-radius:18px;font-size: 14px;font-weight: 600" class="button btn btn-default"></div>
    </div>
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


<div class="" style="position: fixed; bottom:15px; right:15px; z-index:9">
  <a class="btn btn-success g-rounded-50" href="https://api.whatsapp.com/send/?phone=<?= $contact ?>&text=<?= $wa_message[$lang]?>" target="__blank" style="padding:7px 15px">
    <img class="g-pr-5" src="<?= get_image(DIR_ICON.'whatsapp.png') ?>" alt="WhatsApp icon" style="width:30px">
    <?= get_lang('contact-us') ?>
  </a>
</div>

<?php if($this->agent->is_mobile()) : ?>
<div class="container">
	<div id="card_subscriber" class="" style="position: fixed; bottom:130px; right:15px; z-index:99; width : 100%;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);">
		<div class="card" style="width:95%;height:100%;margin-left: 24px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);">
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
	<div id="card_subscriber" class="" style="position: fixed; bottom:130px; right:15px; z-index:99">
		<div class="card" style="width:270px;height:100%;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);">
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

<div class="" style="position: fixed; bottom:70px; right:15px; z-index:99">
  <a id="button_subscriber" class="btn btn-default g-rounded-50" style="padding:7px 15px;background:#17A2B8;width:48px;height:48px">
    <img class="icon_newsletter" src="<?= get_image(DIR_ICON.'newsletter.png') ?>" alt="Subscriber icon" style="width:30px;margin-top:3px;margin-left:-5px">
  </a>
</div>
<script
  type="text/javascript"
  src="https://s3.amazonaws.com/downloads.mailchimp.com/js/mc-validate.js"
></script>
<script>
$("#mc-embedded-subscribe").on("click", function() {
  if ($("#mce-error-response").css("display") != "none") {
      setTimeout(() => {
      Swal.fire({
        imageUrl: "<?= get_image(DIR_ICON.'thanks.png') ?>",
        title: '<?= lang('thanks') ?>',
        text: '<?= lang('content_alert') ?>',
        showConfirmButton: true,
        confirmButtonText : "CLOSE",
        showCloseButton : "true"
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
  var modal = $('.form_subs');
  button.hide();
  card.show();

  close.on("click", function(){
		$(".icon_newsletter").attr("src", "<?= get_image(DIR_ICON.'newsletter.png') ?>");
		button.show();
		card.hide();
	});

	button.on("click", function() {
		card.toggle();
		if ($("#card_subscriber").css("display") == "block" ) {
			$(".icon_newsletter").attr("src", "<?= get_image(DIR_ICON.'Vector.png') ?>");
		} else {
			$(".icon_newsletter").attr("src", "<?= get_image(DIR_ICON.'newsletter.png') ?>");
		}
	});

	subs.on("click", function() {
		card.hide();
	});
		
	$('.close_modal').on("click", function() {
		card.show();
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







<?php endif; ?>
