<?php
foreach ($sections as $section) {
	if ($section->section_id!=''){
		$data['section_name']=$section->section_name;
		$data['section_slug']=$section->section_slug;
		$this->load->view('services/sections/'.$section->section_slug,$data);
	}
}
?>
<?php $contact = '6282111100170' ?>
<div class="" style="position: fixed; bottom:65px; right:15px;">
  <a class="btn btn-success g-rounded-50" href="https://api.whatsapp.com/send/?phone=<?= $contact ?>" style="padding:7px 15px">
    <img class="g-pr-5" src="<?= get_image(DIR_ICON.'whatsapp.png') ?>" alt="WhatsApp icon" style="width:30px">
    <?= get_lang('contact-us') ?>
  </a>
</div>

