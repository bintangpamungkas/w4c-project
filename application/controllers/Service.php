<?php
	
	/**
	 * @property \User_model $user_model
	 */
	class Service extends MY_Controller
	{
		function __construct()
		{
			parent::__construct();
			$this->load->model('account_model');
			$this->load->model('service_model');
			$this->load->model('crud_model');
		}
		
		public function index()
		{
			$lang = $this->get_language();
			$service_target = $this->input->get('target');
			if (empty($service_target)) {
				$service_target = 'all';
			}
			if ($service_target == 'all') {
				$services = $this->service_model->service_list($lang);
			} else {
				$services = $this->service_model->service_list($lang, $service_target);
			}
			foreach ($services as $service) {
				$rec = $this->service_model->service_recomendation($lang, $service->service_id);
				$service->recomendation = $rec;
				$serv[] = $service;
			}
			
			$services = $this->service_model->service_list($lang);
			foreach ($services as $service) {
				$rec = $this->service_model->service_recomendation($lang, $service->service_id);
				$service->recomendation = $rec;
				$serv[] = $service;
			}
			$data['services'] = $serv;
			$data['service_targets'] = $this->crud_model->select('service_target', QUERY_RESULT, ['dictionary.dictionary_content service_target_name', 'service_target_icon'], ['language_code' => $lang, 'deleted_at' => null], ['service_target' => ['dictionary' => 'dictionary_slug=service_target_name']]);
			$data['title'] = '';
			$data['id'] = 'site';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'general';
			$data['page_heading'] = 'services_title';
			$data['is_bilingual'] = true;
			$data['service_target'] = $service_target;
			
			$this->render_page('services/index', $data, 'services');
		}
		
		public function detail($service_slug)
		{
			$lang = $this->get_language();
			
			$service = $this->service_model->get_service($lang, $service_slug);
			$sections = $this->crud_model->select('service_section', QUERY_RESULT, ['service_section.deleted_at', 'service_section.service_id', 'section.section_id', 'section_slug', '(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=section_menu_name AND dictionary.language_code="' . $lang . '") as section_menu_name', '(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=section_name AND dictionary.language_code="' . $lang . '") as section_name'], ['service_section.service_id' => $service->service_id, 'service_section.deleted_at' => null], ['service_section' => ['section' => 'section_id']]);
			$data['title'] = $service->service_name;
			$data['id'] = 'service';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'service';
			$data['service_id'] = $service_slug;
			$data['service_name'] = $service->service_name;
			$data['page_heading'] = $data['service_name'];
			$data['is_bilingual'] = true;
			$data['breadcrumb'] = [
					[
							'title' => 'Home',
							'url' => 'official',
							'active' => false
					],
					[
							'title' => 'All Services',
							'url' => 'service',
							'active' => false
					],
					[
							'title' => $service->service_name,
							'url' => '#welcome',
							'active' => true
					]
			];
			
			$data['subnav'] = $sections;
			foreach ($sections as $section) {
				if ($section->section_slug == 'our-achievement' || $section->section_slug == 'achievement-deliverable') {
					$data['achievements'] = $this->crud_model->select('achievement', QUERY_RESULT, ['achievement_count', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=achievement_name AND language_code="' . $lang . '" limit 1) as achievement_name'], ['achievement.service_id' => 1, 'achievement.deleted_at' => null]);
				}
				if ($section->section_slug == 'we-offer') {
				
				}
				if ($section->section_slug == 'activities') {
				
				}
				if ($section->section_slug == 'benefit' || $section->section_slug == 'output-benefit') {
					$data['benefits'] = $this->crud_model->select('benefit', QUERY_RESULT, ['benefit_icon', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=benefit_name AND language_code="' . $lang . '" limit 1) as benefit_name'], ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'expertise-and-experience') {
					$data['expertises'] = $this->crud_model->select('expertise', QUERY_RESULT, ['(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=expertise_name AND language_code="' . $lang . '" limit 1) as expertise_name'], ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'what-you-get') {
					$data['facilities'] = $this->crud_model->select('facility', QUERY_RESULT, ['facility_icon', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=facility_name AND language_code="' . $lang . '" limit 1) as facility_name'], ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'waste-flow') {
					$data['flows'] = $this->crud_model->select('flow', QUERY_RESULT, ['flow_icon', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=flow_name AND language_code="' . $lang . '" limit 1) as flow_name'], ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'project-highlight') {
					$data['projects'] = $this->crud_model->select('project', QUERY_RESULT, ['project_slug', 'project_client', 'project_thumbnail', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=project_name AND language_code="' . $lang . '" limit 1) as project_name', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=project_category AND language_code="' . $lang . '" limit 1) as project_category'], ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'photofolio-highlight') {
					$data['photofolios'] = $this->crud_model->select('photofolio', QUERY_RESULT, '', ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'research-highlight' || $section->section_slug == 'research-highlight') {
					$data['projects'] = $this->crud_model->select('service', QUERY_RESULT, ['service_slug', 'service_thumbnail', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=service_name AND language_code="' . $lang . '" limit 1) as service_name', 'service_subcategory_name'], ['service_parent_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'similar-project') {
					$data['projects'] = $this->crud_model->select('project', QUERY_RESULT, ['project_slug', 'project_client', 'project_thumbnail', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=project_name AND language_code="' . $lang . '" limit 1) as project_name', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=project_category AND language_code="' . $lang . '" limit 1) as project_category'], ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'our-client') {
					$data['clients'] = $this->crud_model->select('client', QUERY_RESULT, '', ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'recomended-for') {
					$data['recomendations'] = $this->crud_model->select('service_recomendation', QUERY_RESULT, ['recomendation_icon', 'recomendation_color', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=recomendation_name AND language_code="' . $lang . '" limit 1) as recomendation_name'], ['service_recomendation.service_id' => $service->service_id, 'service_recomendation.deleted_at' => null], ['service_recomendation' => ['recomendation' => 'recomendation_id']]);
				}
				if ($section->section_slug == 'our-coverage') {
				
				}
			}
			
			$data['service'] = $service;
			$data['sections'] = $sections;
			
			$this->render_page('services/details/index', $data, 'services');
		}
		
		public function project($service_slug)
		{
			$lang = $this->get_language();
			
			$service = $this->service_model->get_service($lang, $service_slug);
			$parent_service = $this->crud_model->select('service', QUERY_RESULT, ['service_slug', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=service_name AND language_code="' . $lang . '" limit 1) as service_name'], ['service_id' => $service->service_parent_id]);
			
			$sections = $this->crud_model->select('service_section', QUERY_RESULT, ['service_section.deleted_at', 'service_section.service_id', 'section.section_id', 'section_slug', '(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=section_menu_name AND dictionary.language_code="' . $lang . '") as section_menu_name', '(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=section_name AND dictionary.language_code="' . $lang . '") as section_name'], ['service_section.service_id' => $service->service_id, 'service_section.deleted_at' => null], ['service_section' => ['section' => 'section_id']]);
			
			$data['title'] = '';
			$data['id'] = 'service';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'general';
			$data['service_id'] = $service_slug;
			$data['service_name'] = str_replace('-', ' ', lang($data['service_id']));
			$data['page_heading'] = $data['service_name'];
			$data['is_bilingual'] = true;
			$data['breadcrumb'] = [
					[
							'title' => 'Home',
							'url' => 'official',
							'active' => false
					],
					[
							'title' => 'All Services',
							'url' => 'service',
							'active' => false
					],
					[
							'title' => $service->service_name,
							'url' => 'service/' . $parent_service->service_slug,
							'active' => false
					],
					[
							'title' => $service->service_name,
							'url' => '#welcome',
							'active' => true
					]
			];
			
			$data['subnav'] = $sections;
			
			$data['service'] = $service;
			$data['sections'] = $sections;
			$data['achievements'] = $this->crud_model->select('achievement', QUERY_RESULT, ['achievement_count', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=achievement_name AND language_code="' . $lang . '") as achievement_name'], ['achievement.service_id' => 1, 'achievement.deleted_at' => null]);
			$data['expertises'] = $this->crud_model->select('expertise', QUERY_RESULT, ['(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=expertise_name AND language_code="' . $lang . '") as expertise_name'], ['service_id' => $service->service_id, 'deleted_at' => null]);
			$data['benefits'] = $this->crud_model->select('benefit', QUERY_RESULT, ['benefit_icon', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=benefit_name AND language_code="' . $lang . '") as benefit_name'], ['service_id' => $service->service_id, 'deleted_at' => null]);
			$data['facilities'] = $this->crud_model->select('facility', QUERY_RESULT, ['facility_icon', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=facility_name AND language_code="' . $lang . '") as facility_name'], ['service_id' => $service->service_id, 'deleted_at' => null]);
			$data['flows'] = $this->crud_model->select('flow', QUERY_RESULT, ['flow_icon', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=flow_name AND language_code="' . $lang . '") as flow_name'], ['service_id' => $service->service_id, 'deleted_at' => null]);
			$data['photofolios'] = $this->crud_model->select('photofolio', QUERY_RESULT, '', ['service_id' => $service->service_id, 'deleted_at' => null]);
			$data['similar_projects'] = $this->crud_model->select('project', QUERY_RESULT, ['project_slug', 'project_client', 'project_thumbnail', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=project_name AND language_code="' . $lang . '" limit 1) as project_name', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=project_category AND language_code="' . $lang . '" limit 1) as project_category'], ['service_id' => $service->service_parent_id, 'deleted_at' => null]);
			$data['clients'] = $this->crud_model->select('client', QUERY_RESULT, '', ['service_id' => $service->service_id, 'deleted_at' => null]);
			$data['recomendations'] = $this->crud_model->select('service_recomendation', QUERY_RESULT, ['recomendation_icon', 'recomendation_color', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=recomendation_name AND language_code="' . $lang . '") as recomendation_name'], ['service_recomendation.service_id' => $service->service_id, 'service_recomendation.deleted_at' => null], ['service_recomendation' => ['recomendation' => 'recomendation_id']]);
			
			$this->render_page('services/details/index', $data, 'services');
		}
		
		public function test()
		{
			
			$service_target = $this->crud_model->select('service_target', QUERY_RESULT, ['service_target_id', 'dictionary.dictionary_content service_target_name', 'service_target_icon'], ['language_code' => $lang, 'deleted_at' => null], ['service_target' => ['dictionary' => 'dictionary_slug=service_target_name']]);
			$targets = [];
			foreach ($service_target as $target) {
				$service_category = $this->crud_model->select('service_category', QUERY_RESULT, ['service_category_id', 'service_category_name', 'service_category_icon', 'service_target_id'], ['service_category.service_target_id' => $target->service_target_id]);
				
				$categories = [];
				foreach ($service_category as $category) {
					$services = $this->crud_model->select('service', QUERY_RESULT, ['service_id', 'service_slug', 'service_name', 'service_category_id'], ['service_id' => $category->service_category_id]);
					$category->services = $services;
					$categories[] = $category;
				}
				
				$target->category = $categories;
				$targets[] = $target;
			}
			print_r($targets);
			die();
		}
		
		public function join($service_slug)
		{
			$lang = $this->get_language();
			
			$service = $this->service_model->get_service($lang, $service_slug);
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
