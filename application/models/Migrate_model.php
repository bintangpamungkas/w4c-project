<?php

class Migrate_model extends CI_Model
{
  function service_detail($service_id,$lang)
  {
    $this->db->select('service_id');
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_name AND dictionary.language_code="' . $lang . '" limit 1) as service_name');
    $this->db->select('service_short_name');
    $this->db->select('service_page_url');
    $this->db->select('service_thumbnail_image service_thumbnail');
    $this->db
      ->from('service')
      ->where('service_id', $service_id);

    return $this->db->get()->row();
  }
  function service2_detail($service_id,$lang)
  {
    $this->db->select(['service_portfolio_url','service_slug','service_header_image','service_about_image']);
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_description AND dictionary.language_code="' . $lang . '" limit 1) as service_description');
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_slogan AND dictionary.language_code="' . $lang . '" limit 1) as service_slogan');
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_about AND dictionary.language_code="' . $lang . '" limit 1) as service_about');
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_client_name AND dictionary.language_code="' . $lang . '" limit 1) as service_client_name');
    $this->db
      ->from('service')
      ->where('service_id', $service_id);

    return $this->db->get()->row();
  }

  function service_meta($service_id,$lang)
  {
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_meta_title AND dictionary.language_code="' . $lang . '" limit 1) as title');
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_meta_description AND dictionary.language_code="' . $lang . '" limit 1) as description_1');
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_meta_description AND dictionary.language_code="' . $lang . '" limit 1) as description_2');
		$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_meta_keyword AND dictionary.language_code="' . $lang . '" limit 1) as keyword');
    $this->db
      ->from('service')
      ->where('service_id', $service_id);

    return $this->db->get()->row();
  }
}
