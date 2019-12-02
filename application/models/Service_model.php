<?php
/**
* Created by PhpStorm.
* User: Dellicious
* Date: 11/10/2016
* Time: 3:12 PM
*/
class Service_model extends CI_Model
{
  function __construct()
  {
    // Call the Model constructor
    parent::__construct();
  }
  function service_list($lang,$service_target_name=null){
    $this->db->select(['service_target_name','service.service_id','service.service_category_id','service.service_slug','service.service_name','service.service_page_url','service.service_join_url','service.service_thumbnail','service_category_name']);
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_description AND dictionary.language_code="'.$lang.'") as service_description');
    $this->db->from('service');
		$this->db->join('service_category','service_category.service_category_id=service.service_category_id','left');
		$this->db->join('service_target','service_target.service_target_id=service_category.service_target_id','left');
		if ($service_target_name!=null){
		  $this->db->where('service_target_name',$service_target_name);
    }
    return $this->db->get()->result();
  }
  function get_service($lang,$service_slug){
    $this->db->select(['service.service_id','service.service_category_id','service.service_parent_id','service_client_name','service.service_slug','service.service_name','service.service_page_url','service.service_join_url','service.service_proposal_url','service.service_portofolio_url','service.service_about_image','service.service_thumbnail','service_category_name']);
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_name AND dictionary.language_code="'.$lang.'" limit 1) as service_name');
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_subcategory_name AND dictionary.language_code="'.$lang.'" limit 1) as service_subcategory_name');
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_description AND dictionary.language_code="'.$lang.'" limit 1) as service_description');
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_slogan AND dictionary.language_code="'.$lang.'" limit 1) as service_slogan');
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_about AND dictionary.language_code="'.$lang.'" limit 1) as service_about');
    $this->db->from('service');
    $this->db->join('service_category','service_category.service_category_id=service.service_category_id','left');
    $this->db->where('service_slug',$service_slug);
    return $this->db->get()->row();
  }
  function service_recomendation($lang,$service_id){
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=recomendation.recomendation_name AND dictionary.language_code="'.$lang.'") as name');
    $this->db->select(['recomendation_color color']);
    $this->db->from('service_recomendation');
    $this->db->join('recomendation','recomendation.recomendation_id=service_recomendation.recomendation_id','left');
    $this->db->where('service_recomendation.service_id',$service_id);
    return $this->db->get()->result();
  }
  function benefit_list($lang,$service_id){
    $this->db->select(['service.service_id','service.service_category_id','service.service_slug','service.service_name','service.service_page_url','service.service_join_url','service.service_thumbnail','service_category_name']);
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_description AND dictionary.language_code="'.$lang.'") as service_description');
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_slogan AND dictionary.language_code="'.$lang.'") as service_slogan');
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_about AND dictionary.language_code="'.$lang.'") as service_about');
    $this->db->from('service');
    $this->db->join('service_category','service_category.service_category_id=service.service_category_id','left');
    return $this->db->get()->result();
  }
}
?>
