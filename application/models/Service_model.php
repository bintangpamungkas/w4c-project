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
  function service_list($lang){
    $this->db->select(['service.service_id','service.service_category_id','service.service_slug','service.service_name','service.service_page_url','service.service_join_url','service.service_thumbnail','service_category_name']);
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_description AND dictionary.language_code="'.$lang.'") as service_description');
    // $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service_category.service_category_name AND dictionary.language_code="'.$lang.'") as service_category_name');
    $this->db->from('service');
    $this->db->join('service_category','service_category.service_category_id=service.service_category_id','left');
    // $this->db->select('(SELECT * FROM service_category WHERE service_category.service_target_id=2) as service_category');
    // $this->db->from('service_target target');
    return $this->db->get()->result();
  }
  function service_recomendation($lang,$service_id){
    $this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=recomendation.recomendation_name AND dictionary.language_code="'.$lang.'") as name');
    $this->db->select(['recomendation_color color']);
    $this->db->from('service_recomendation');
    $this->db->join('recomendation','recomendation.recomendation_id=service_recomendation.recomendation_id','left');
    $this->db->where('service_recomendation.service_id',$service_id);
    return $this->db->get()->result();
  }
}
?>
