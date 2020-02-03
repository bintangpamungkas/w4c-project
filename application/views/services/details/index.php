<?php

foreach ($sections as $section) {
	if ($section->section_id!=''){
		$data['section_name']=$section->section_name;
		$data['section_slug']=$section->section_slug;
		$this->load->view('services/details/sections/'.$section->section_slug,$data);
	}
}

?>

