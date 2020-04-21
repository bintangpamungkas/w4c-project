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
			$this->db->select(['service.service_id', 'service.service_category_id', 'service.service_parent_id', 'service.service_subcategory_name', 'service.service_short_name', 'service_client_name', 'service.service_slug', 'service.service_name', 'service.service_page_url', 'service.service_join_url', 'service.service_proposal_url', 'service.service_portfolio_url', 'service.service_about_image', 'service.service_header_image', 'service.service_thumbnail_image', 'service_category_name']);
			$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_name AND dictionary.language_code="' . $lang . '" limit 1) as service_name');
			$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_subcategory_name AND dictionary.language_code="' . $lang . '" limit 1) as service_subcategory_name');
			$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service_category.service_category_name AND dictionary.language_code="' . $lang . '" limit 1) as service_category_name');
			$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_description AND dictionary.language_code="' . $lang . '" limit 1) as service_description');
			$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_slogan AND dictionary.language_code="' . $lang . '" limit 1) as service_slogan');
			$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_about AND dictionary.language_code="' . $lang . '" limit 1) as service_about');
			$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_client_name AND dictionary.language_code="' . $lang . '" limit 1) as service_client_name');
			$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_meta_title AND dictionary.language_code="' . $lang . '" limit 1) as service_meta_title');
			$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_meta_description AND dictionary.language_code="' . $lang . '" limit 1) as service_meta_description');
			$this->db->select('(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=service.service_meta_keyword AND dictionary.language_code="' . $lang . '" limit 1) as service_meta_keyword');
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
			$this->db->join('service_record', 'service_record.service_id=service.service_id', 'left');
			$this->db->join('place_city', 'place_city.city_id=service_record.city_id', 'left');
			$this->db->join('place_province', 'place_province.province_id=place_city.province_id', 'left');
//			$this->db->where('service.has_page',1);
			$this->db->where('service_parent_id', null);
			$this->db->group_by('service.service_id');
			$this->db->where('service.deleted_at', null);

			if ($is_new != null) {
				$this->db->where('service.is_new', 1);
			}

			if ($city_name != null && $province_name != null) {
				$this->db->group_start();
				$this->db->like('place_city.city_name', $city_name);
				$this->db->or_where('place_city.city_name', 'Seluruh Kota di Indonesia');

				$this->db->or_group_start();
				$this->db->like('place_province.province_name', $province_name);
				$this->db->group_end();
				$this->db->group_end();
			} else {
				if ($city_name != null) {
					$this->db->group_start();
					$this->db->like('place_city.city_name', $city_name);
					$this->db->or_where('place_city.city_name', 'Seluruh Kota di Indonesia');
					$this->db->group_end();
				}
				if ($province_name != null) {
					$this->db->group_start();
					$this->db->like('place_province.province_name', $province_name);
					$this->db->or_where('place_city.city_name', 'Seluruh Kota di Indonesia');
					$this->db->group_end();
				}
			}


			if ($target_id != null) {
				$this->db->where('service_category.service_target_id', $target_id);
			}
			return $this->db->get()->result();
		}

		function unique_coverage_city()
		{
			$this->db->select(['service_record_city']);
			$this->db->group_by('service_record_city');
//			$this->db->distinct('city_name');
			$this->db->from('service_record');
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

		function get_service_coverage($service_id){
			$this->db->select(['service_id', 'service_coverage_color','service_coverage_icon',	'service_coverage_code','service_coverage_type']);
			$this->db->select('(SELECT province_point FROM place_province WHERE province_id=coverage.service_coverage_code) as province_point');
			$this->db->select('(SELECT province_area FROM place_province WHERE province_id=coverage.service_coverage_code) as province_area');
			$this->db->select('(SELECT province_name FROM place_province WHERE province_id=coverage.service_coverage_code) as province_name');
			$this->db->select('(SELECT city_point FROM place_city WHERE city_id=coverage.service_coverage_code) as city_point');
			$this->db->select('(SELECT city_area FROM place_city WHERE city_id=coverage.service_coverage_code) as city_area');
			$this->db->select('(SELECT city_name FROM place_city WHERE city_id=coverage.service_coverage_code) as city_name');
			$this->db->from('service_coverage coverage');
			$this->db->where('coverage.service_id',$service_id);
			$this->db->where('coverage.deleted_at', null);
			return $this->db->get()->result();
		}

		function get_service_coverage2($service_id, $type){
			$this->db->select(['service_id', 'service_coverage_color','service_coverage_icon',	'service_coverage_code']);
			$this->db->select('(SELECT province_point FROM place_province WHERE province_id=coverage.service_coverage_code) as province_point');
			$this->db->select('(SELECT province_area FROM place_province WHERE province_id=coverage.service_coverage_code) as province_area');
			$this->db->select('(SELECT province_name FROM place_province WHERE province_id=coverage.service_coverage_code) as province_name');
			$this->db->select('(SELECT city_point FROM place_city WHERE city_id=coverage.service_coverage_code) as city_point');
			$this->db->select('(SELECT city_area FROM place_city WHERE city_id=coverage.service_coverage_code) as city_area');
			$this->db->select('(SELECT city_name FROM place_city WHERE city_id=coverage.service_coverage_code) as city_name');
			$this->db->from('service_coverage coverage');
			$this->db->where('coverage.service_id',$service_id);
			return $this->db->get()->result();
		}
	}


?>
