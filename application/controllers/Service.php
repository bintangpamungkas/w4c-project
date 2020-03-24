<?php

	/**
	 * @property \User_model $user_model
	 */
	class Service extends MY_Controller
	{
		function __construct()
		{
			parent::__construct();
			$this->load->model('service_model');
			$this->load->model('crud_model');
		}

		public function index()
		{
			$lang = $this->get_language();
			$target = $this->input->get('target');
			$input_city = $this->input->get('city');

			$temp_input_city = explode(', ', $input_city);
			$city_name = $temp_input_city[0];

			if (empty($temp_input_city[1])) {
				$province_name = $temp_input_city[0];
			} else {
				$province_name = $temp_input_city[1];
			}

			if (empty($target)) {
				$service_target_id = '';
			} else {
				if ($target == 'all') {
					$service_target_id = '';
				} else {
					$service_target = $this->crud_model->select('service_target', QUERY_ROW, ['service_target_id'], ['service_target_name' => $target]);
					if (empty($service_target)) {
						$service_target_id = '';
						$target = 'all';
					} else {
						$service_target_id = $service_target->service_target_id;
					}
				}
			}

			//check input city
			$check_city = $this->service_model->check_city($city_name, $province_name);

			if (empty($check_city)) { // input city tidak ditemukan
				$message = $this->crud_model->select('dictionary', QUERY_ROW, ['dictionary_content'], ['dictionary_slug' => 'no-result-found-for', 'language_code' => $lang], '', '', 1)->dictionary_content . ': <span class="g-font-weight-700">' . $input_city . '</span>.<br> <small>Mohon masukkan nama kota yang valid.</small>';
			} else { // city tersedia
				$services = $this->service_model->service_list_by_coverage($lang, $city_name, '', $service_target_id);
				if (empty($services)) {
					$services = $this->service_model->service_list_by_coverage($lang, '', $province_name, $service_target_id);
				}
				$service_list = [];
				foreach ($services as $service) {
					$recommendations = $this->service_model->service_recomendation($lang, $service->service_id);
					$service->recomendation = $recommendations;
					$service_list[] = $service;
				}
				$data['services'] = $service_list;

				if (empty($data['services'])) {
					$message = $this->crud_model->select('dictionary', QUERY_ROW, ['dictionary_content'], ['dictionary_slug' => 'no-result-found-for', 'language_code' => $lang], '', '', 1)->dictionary_content . ': <span class="g-font-weight-700">' . $input_city . '</span>';
				} else {
					$message = $this->crud_model->select('dictionary', QUERY_ROW, ['dictionary_content'], ['dictionary_slug' => 'showing-result-for', 'language_code' => $lang], '', '', 1)->dictionary_content . ': <span class="g-font-weight-700">' . $input_city . '</span>';
				}
			}

			$data['service_targets'] = $this->crud_model->select('service_target', QUERY_RESULT, ['service_target_name service_target_slug', 'dictionary.dictionary_content service_target_name', 'service_target_icon'], ['language_code' => $lang, 'deleted_at' => null], ['service_target' => ['dictionary' => 'dictionary_slug=service_target_name']]);
			$data['coverage_cities'] = $this->crud_model->select('place_city', QUERY_RESULT, ['city_name', 'province_name'], '', ['place_city' => ['place_province' => 'province_id']]);
			if (!empty($input_city)) {
				$data['search_message'] = $message;
			}
			$data['input_city'] = $input_city;

			$data['title'] = '';
			$data['id'] = 'site';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'general';
			$data['page_heading'] = 'services_title';
			$data['is_bilingual'] = true;
			$data['service_target'] = $target;

			$this->render_page('services/index', $data, 'services');
		}

		public function detail($service_slug)
		{
			if ($service_slug == 'feasibility-study'){
				redirect(site_url('service/solid-waste-management-research'));
			}elseif ($service_slug == 'program-pendampingan-optimalisasi-tps3r'){
				redirect(site_url('service/3r-school-program'));
			}elseif ($service_slug == 'zero-waste-to-landfill-management'){
				redirect(site_url('service/zero-waste-to-landfill'));
			}elseif ($service_slug == 'akademi-bijak-sampah' || $service_slug=='edukasi-bijak-sampah'){
				redirect(site_url('service/akabis-waste-management-academy'));
			}elseif ($service_slug == 'extended-producer-responsibility'){
				redirect(site_url('service/in-store-recycling'));
			}
			$lang = $this->get_language();

			$service = $this->service_model->get_service($lang, $service_slug);
			if (empty($service)) {
				show_404();
			}
			$sections = $this->crud_model->select('service_section', QUERY_RESULT, ['service_section.deleted_at', 'service_section.service_id', 'section.section_id', 'section_slug', '(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=section_menu_name AND dictionary.language_code="' . $lang . '") as section_menu_name', '(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=section_name AND dictionary.language_code="' . $lang . '") as section_name'], ['service_section.service_id' => $service->service_id, 'service_section.deleted_at' => null], ['service_section' => ['section' => 'section_id']], ['section_order' => 'asc', 'section.section_id' => 'asc']);
			$data['breadcrumb'] = [
				[
					'title' => $this->get_lang('home'),
					'url' => '',
					'active' => false
				],
				[
					'title' => $this->get_lang('all-services'),
					'url' => 'service',
					'active' => false
				]
			];
			if (!empty($service->service_parent_id)) {
				$parent_service = $this->crud_model->select('service', QUERY_ROW, ['service_slug', 'service_short_name', 'service_portfolio_url', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=service_name AND language_code="' . $lang . '" limit 1) as service_name'], ['service_id' => $service->service_parent_id]);
				$data['parent_service'] = $parent_service;
				$data['breadcrumb'][] =
					[
						'title' => $parent_service->service_name,
						'url' => 'service/' . $parent_service->service_slug,
						'active' => false
					];
			}

			$data['breadcrumb'][] =
				[
					'title' => $service->service_name,
					'url' => '#welcome',
					'active' => true
				];

			$data['title'] = $service->service_name;
			$data['id'] = 'service';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'service';
			$data['service_id'] = $service_slug;
			$data['service_name'] = $service->service_name;
			$data['page_heading'] = $data['service_name'];
			$data['is_bilingual'] = true;

			$data['subnav'] = $sections;
			foreach ($sections as $section) {
				if ($section->section_slug == 'our-achievement' || $section->section_slug == 'achievement-deliverable') {
					$data['achievements'] = $this->crud_model->select('achievement', QUERY_RESULT, ['achievement_count', 'achievement_icon', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=achievement_name AND language_code="' . $lang . '" limit 1) as achievement_name'], ['achievement.service_id' => $service->service_id, 'achievement.deleted_at' => null]);
				}
				if ($section->section_slug == 'we-offer') {
					$data['offers'] = $this->crud_model->select('offer', QUERY_RESULT, ['offer_icon', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=offer_name AND language_code="' . $lang . '" limit 1) as offer_name', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=offer_description AND language_code="' . $lang . '" limit 1) as offer_description'], ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'activities') {
					$data['activities'] = $this->crud_model->select('activity', QUERY_RESULT, ['activity_icon', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=activity_name AND language_code="' . $lang . '" limit 1) as activity_name', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=activity_description AND language_code="' . $lang . '" limit 1) as activity_description'], ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'benefit' || $section->section_slug == 'output-benefit') {
					$data['benefits'] = $this->crud_model->select('benefit', QUERY_RESULT, ['benefit_icon', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=benefit_category AND language_code="' . $lang . '" limit 1) as benefit_category', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=benefit_name AND language_code="' . $lang . '" limit 1) as benefit_name'], ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'expertise-and-experience') {
					$data['expertises'] = $this->crud_model->select('expertise', QUERY_RESULT, ['(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=expertise_name AND language_code="' . $lang . '" limit 1) as expertise_name'], ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'what-you-get') {
					$data['facilities'] = $this->crud_model->select('facility', QUERY_RESULT, ['facility_icon', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=facility_name AND language_code="' . $lang . '" limit 1) as facility_name'], ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'waste-flow' || $section->section_slug == 'waste-bin-option' || $section->section_slug == 'whatyouget') {
					$data['flows'] = $this->crud_model->select('flow', QUERY_RESULT, ['flow_category', 'flow_icon', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=flow_name AND language_code="' . $lang . '" limit 1) as flow_name'], ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'program-highlight' || $section->section_slug == 'research-highlight') {
					$data['projects'] = $this->crud_model->select('service', QUERY_RESULT, ['service_slug', 'service_thumbnail_image', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=service_subcategory_name AND language_code="' . $lang . '" limit 1) as service_subcategory_name'], ['service_parent_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'portfolio-highlight') {
					$data['portfolios'] = $this->crud_model->select('portfolio', QUERY_RESULT, '', ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'similar-project') {
					$data['projects'] = $this->crud_model->select('service', QUERY_RESULT, ['service_slug', 'service_thumbnail_image', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=service_subcategory_name AND language_code="' . $lang . '" limit 1) as service_subcategory_name'], ['service_parent_id' => $service->service_parent_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'our-client') {
					$data['clients'] = $this->crud_model->select('client', QUERY_RESULT, '', ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'recommended-for') {
					$data['recommendations'] = $this->crud_model->select('service_recomendation', QUERY_RESULT, ['recomendation_icon', 'recomendation_color', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=recomendation_name AND language_code="' . $lang . '" limit 1) as recomendation_name'], ['service_recomendation.service_id' => $service->service_id, 'service_recomendation.deleted_at' => null], ['service_recomendation' => ['recomendation' => 'recomendation_id']]);
				}
				if ($section->section_slug == 'our-coverage') {
					$child_service = $this->crud_model->select('service', QUERY_RESULT, ['service_id'], ['service_parent_id' => $service->service_id]);
					$data['records'] = $this->crud_model->select('service_record', QUERY_RESULT, ['city_name', 'city_coordinate'], ['service_record.service_id' => $service->service_id, 'service_record.deleted_at' => null], ['service_record' => ['place_city' => 'city_id']]);
					$second_coverages = [];
					foreach ($child_service as $index => $child) {
						$sec_cov = $this->crud_model->select('service_record', QUERY_RESULT, ['city_name', 'city_coordinate'], ['service_record.service_id' => $child->service_id, 'service_record.deleted_at' => null], ['service_record' => ['place_city' => 'city_id']]);
						if (!empty($sec_cov)) {
							foreach ($sec_cov as $cov) {
								$second_coverages[] = $cov;
							}
						}
					}
					$data['second_records'] = $second_coverages;
					$data['areas'] = $this->crud_model->select('service_coverage', QUERY_RESULT, '', ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
			}
			$data['service'] = $service;
			$data['sections'] = $sections;

			$this->render_page('services/details/index', $data, 'services');
		}


		public function join($service_slug)
		{
			if ($service_slug == 'feasibility-study'){
				redirect(site_url('service/solid-waste-management-research/join'));
			}elseif ($service_slug == 'program-pendampingan-optimalisasi-tps3r'){
				redirect(site_url('service/3r-school-program/join'));
			}elseif ($service_slug == 'zero-waste-to-landfill-management'){
				redirect(site_url('service/zero-waste-to-landfill/join'));
			}elseif ($service_slug == 'akademi-bijak-sampah' || $service_slug=='edukasi-bijak-sampah'){
				redirect(site_url('service/akabis-waste-management-academy/join'));
			}elseif ($service_slug == 'extended-producer-responsibility'){
				redirect(site_url('service/in-store-recycling/join'));
			}
			$lang = $this->get_language();

			$service = $this->service_model->get_service($lang, $service_slug);
			if (empty($service)) {
				show_404();
			}
			$sections = $this->crud_model->select('service_section', QUERY_RESULT, ['service_section.deleted_at', 'service_section.service_id', 'section.section_id', 'section_slug', '(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=section_menu_name AND dictionary.language_code="' . $lang . '") as section_menu_name', '(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=section_name AND dictionary.language_code="' . $lang . '") as section_name'], ['service_section.service_id' => $service->service_id, 'service_section.deleted_at' => null], ['service_section' => ['section' => 'section_id']]);

			$data['title'] = $service->service_name;
			$data['id'] = 'service';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'service';
			$data['service_id'] = $service_slug;
			$data['service_name'] = $service->service_name;
			$data['page_heading'] = $data['service_name'];
			$data['is_bilingual'] = true;

			$data['subnav'] = $sections;
			$data['service'] = $service;

			$this->render_page('services/join', $data, 'services');
		}
	}
