<?php
// $this->load->view('services/details/sections/welcome');
// $this->load->view('services/details/sections/about');

foreach ($sections as $section) {
  if ($section->section_slug=='cta' || $section->section_slug=='recomended-for' || $section->section_slug=='our-client' || $section->section_slug=='our-client' || $section->section_slug=='waste-flow' || $section->section_slug=='what-you-get' || $section->section_slug=='benefit' || $section->section_slug=='welcome' || $section->section_slug=='about') {
    $this->load->view('services/details/sections/'.$section->section_slug);
  }
}
// $this->load->view('services/details/sections/welcome');
?>


<?php //$this->load->view('services/'.$service_id.'/sections/counter'); ?>
<!-- <div style="height: <?= $this->agent->is_mobile() ? '150px' : '75px' ?>" class="g-bg-white d-none"></div> -->
<?php
// $this->load->view('services/'.$service_id.'/sections/about');
// $this->load->view('services/'.$service_id.'/sections/feature');
// $this->load->view('services/'.$service_id.'/sections/facility');
// $this->load->view('services/'.$service_id.'/sections/client');
// $this->load->view('services/'.$service_id.'/sections/target');
// $this->load->view('services/'.$service_id.'/sections/cta');
?>
