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

	function service_list($lang, $service_target_name = null)
	{
		$this->db->select(['service_target_name', 'service.service_id', 'service.service_category_id', 'service.service_slug', 'service.service_name', 'service.service_page_url', 'service.service_join_url', 'service.service_thumbnail_image', 'service_category_name']);
		$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_description AND dictionary.language_code="' . $lang . '") as service_description');
		$this->db->from('service');
		$this->db->join('service_category', 'service_category.service_category_id=service.service_category_id', 'left');
		$this->db->join('service_target', 'service_target.service_target_id=service_category.service_target_id', 'left');
		if ($service_target_name != null) {
			$this->db->where('service_target_name', $service_target_name);
		}
		return $this->db->get()->result();
	}

	function get_service($lang, $service_slug)
	{
		$this->db->select(['service.service_id', 'service.service_category_id', 'service.service_parent_id', 'service.service_subcategory_name', 'service_client_name', 'service.service_slug', 'service.service_name', 'service.service_page_url', 'service.service_join_url', 'service.service_proposal_url', 'service.service_portfolio_url', 'service.service_about_image', 'service.service_thumbnail_image', 'service_category_name']);
		$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_name AND dictionary.language_code="' . $lang . '" limit 1) as service_name');
		$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_subcategory_name AND dictionary.language_code="' . $lang . '" limit 1) as service_subcategory_name');
		$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service_category.service_category_name AND dictionary.language_code="' . $lang . '" limit 1) as service_category_name');
		$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_description AND dictionary.language_code="' . $lang . '" limit 1) as service_description');
		$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_slogan AND dictionary.language_code="' . $lang . '" limit 1) as service_slogan');
		$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_about AND dictionary.language_code="' . $lang . '" limit 1) as service_about');
		$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_client_name AND dictionary.language_code="' . $lang . '" limit 1) as service_client_name');
		$this->db->from('service');
		$this->db->join('service_category', 'service_category.service_category_id=service.service_category_id', 'left');
		$this->db->where('service_slug', $service_slug);
		return $this->db->get()->row();
	}

	function service_recomendation($lang, $service_id)
	{
		$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=recomendation.recomendation_name AND dictionary.language_code="' . $lang . '") as name');
		$this->db->select(['recomendation_color color']);
		$this->db->from('service_recomendation');
		$this->db->join('recomendation', 'recomendation.recomendation_id=service_recomendation.recomendation_id', 'left');
		$this->db->where('service_recomendation.service_id', $service_id);
		return $this->db->get()->result();
	}

	function service_list_by_coverage($lang, $city_name = null, $province_name = null, $target_id = null, $is_new = null)
	{
		$this->db->select(['service.service_id', 'service_category.service_target_id']);
		$this->db->select(['service.service_id', 'service.service_slug', 'city_name', 'service.service_page_url', 'service.service_thumbnail_image', 'service.has_page']);
		$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_name AND dictionary.language_code="' . $lang . '" limit 1) as service_name');
		$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_description AND dictionary.language_code="' . $lang . '" limit 1) as service_description');
		$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service_category.service_category_name AND dictionary.language_code="' . $lang . '" limit 1) as service_category_name');
		$this->db->from('service');
		$this->db->join('service_category', 'service_category.service_category_id=service.service_category_id', 'left');
		$this->db->join('service_coverage', 'service_coverage.service_id=service.service_id', 'left');
		$this->db->join('place_city', 'place_city.city_id=service_coverage.city_id', 'left');
		$this->db->join('place_province', 'place_province.province_id=place_city.province_id', 'left');
//			$this->db->where('service.has_page',1);
		$this->db->where('service_parent_id', null);
		$this->db->group_by('service.service_id');

		if ($is_new != null) {
			$this->db->where('service.is_new', 1);
		}

		if ($city_name != null) {
			$this->db->group_start();
			$this->db->like('place_city.city_name', $city_name);
			$this->db->or_where('place_city.city_name', 'Seluruh Kota di Indonesia');

			if ($province_name != null) {
				$this->db->or_group_start();
				$this->db->like('place_province.province_name', $province_name);
				$this->db->group_end();
			}
			$this->db->group_end();
		}

		if ($target_id != null) {
			$this->db->where('service_category.service_target_id', $target_id);
		}
		return $this->db->get()->result();
	}

	function unique_coverage_city()
	{
		$this->db->select(['service_coverage_city']);
		$this->db->group_by('service_coverage_city');
//			$this->db->distinct('city_name');
		$this->db->from('service_coverage');
		return $this->db->get()->result();

	}

	function check_city($city_name, $province_name = null)
	{
		$this->db->select('city_name');
		$this->db->from('place_city');
		$this->db->join('place_province', 'place_province.province_id=place_city.province_id', 'left');
		$this->db->like('city_name', $city_name);
		if ($province_name != null) {
			$this->db->or_group_start();
			$this->db->like('province_name', $province_name);

			$this->db->group_end();
		}

		return $this->db->get()->row();
	}
}

?>
