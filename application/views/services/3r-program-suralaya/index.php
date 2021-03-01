<?php
foreach ($sections as $section_slug => $section) {
	$data['section_slug'] = $section_slug;
	$data['section'] = $section;
	$this->load->view('services/3r-program-suralaya/details/' . $section->section_template, $data);
}
if ($service_id != 'personal-waste-management'):

  $contact = '6282111100170';
  $wa_message = [
     "id"=>"Halo%20Waste4Change.%20%0A%0ASaya%20ingin%20bertanya%20terkait%20layanan%20".$service->service_name.".%20%0A%0AMohon%20informasinya.%20%0ATerima%20kasih.",
     "en"=>"Hello%20Waste4Change%2C%20%0A%0AI%20would%20like%20to%20ask%20regarding%20the%20".$service->service_name."%20service.%0A%0ACould%20you%20please%20provide%20further%20information%20regarding%20this%20matter%3F%0AThank%20you."
 ];
 ?>
 <div class="" style="position: fixed; bottom:65px; right:15px; z-index:99">
   <a class="btn btn-success g-rounded-50" href="https://api.whatsapp.com/send/?phone=<?= $contact ?>&text=<?= $wa_message[$lang]?>" target="__blank" style="padding:7px 15px">
     <img class="g-pr-5" src="<?= get_image(DIR_ICON.'whatsapp.png') ?>" alt="WhatsApp icon" style="width:30px">
     <?= get_lang('contact-us') ?>
   </a>
 </div>
 
 <?php endif; ?>
 