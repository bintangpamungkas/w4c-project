<?php

/**
 * @property \User_model $user_model
 */
class Product extends MY_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('service_model');
		$this->load->model('crud_model');
	}



	public function detail($service_slug)
	{
		$lang = $this->get_language();
        if($service_slug != 'composting-tools-supplies' && $service_slug != 'produk-black-soldier-fly' && $service_slug != 'custom-waste-bin') {
            redirect (site_url('service'));
        } elseif ($service_slug == 'produk-black-soldier-fly') {

			$service = json_decode(file_get_contents(base_url('database/json/service/service_detail/produk-black-soldier-fly/' . $service_slug . '-' . $lang . '.json')));
			$sections=$service->sections;
			$data['service'] = $service;
			$data['sections'] = $sections;
			// Page Information
			$data['meta_data'] = [
				'site_url' => $service->service_meta->site_url,
				'description_1' => $service->service_meta->description_1,
				'title' => $service->service_meta->title,
				'description_2' => $service->service_meta->description_2,
				'keywords' => $service->service_meta->keywords,
			];
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
				],
				[
					'title' => $service->service_name,
					'url' => '#welcome',
					'active' => true
				]
			];

			$data['subnav'] = [];
			foreach ($sections as $section_slug => $sec) {
				$data['subnav'][] = (object)[
					'deleted_at' => '',
					'service_id' => $service->service_id,
					'section_id' => $section_slug,
					'section_slug' => $section_slug,
					'section_menu_name' => $sec->section_menu_title,
					'section_name' => $sec->section_title,
				];
			}
				
				$data['title'] = $service->service_name;
				$data['id'] = 'service';
				$data['subtitle'] = 'information';
				$data['data_mode'] = 'service';
				$data['service_id'] = $service_slug;
				$data['service_name'] = $service->service_name;
				$data['page_heading'] = $service->service_name;
				$data['is_bilingual'] = true;

			$this->render_page('services/details/index', $data, 'services');
		
		}  else {
			$service = $this->service_model->get_service($lang, $service_slug);
			if (empty($service)) {
				show_404();
			}
			$sections = $this->crud_model->select('service_section', QUERY_RESULT, ['service_section.deleted_at', 'service_section.service_id', 'section.section_id', 'section_slug', '(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=section_menu_name AND dictionary.language_code="' . $lang . '") as section_menu_name', '(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=section_name AND dictionary.language_code="' . $lang . '") as section_name'], ['service_section.service_id' => $service->service_id, 'service_section.deleted_at' => null], ['service_section' => ['section' => 'section_id']], ['section_order' => 'asc', 'section.section_id' => 'asc']);

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
				if ($section->section_slug == 'what-you-get' || $section->section_slug == 'whatyouget') {
					$data['facilities'] = $this->crud_model->select('facility', QUERY_RESULT, ['facility_icon', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=facility_name AND language_code="' . $lang . '" limit 1) as facility_name'], ['service_id' => $service->service_id, 'deleted_at' => null]);
				}
				if ($section->section_slug == 'waste-flow' || $section->section_slug == 'waste-bin-option') {
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
					$data['clients'] = $this->crud_model->select('service_client', QUERY_RESULT, ['client_name', 'client_logo'], ['service_client.service_id' => $service->service_id, 'service_client.deleted_at' => null, 'client.deleted_at' => null], ['service_client' => ['client' => 'client_id']]);
				}
				if ($section->section_slug == 'recommended-for') {
					$data['recommendations'] = $this->crud_model->select('service_recomendation', QUERY_RESULT, ['recomendation_icon', 'recomendation_color', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=recomendation_name AND language_code="' . $lang . '" limit 1) as recomendation_name'], ['service_recomendation.service_id' => $service->service_id, 'service_recomendation.deleted_at' => null], ['service_recomendation' => ['recomendation' => 'recomendation_id']]);
				}
			}
			$data['service'] = $service;
			$data['sections'] = $sections;
			// Page Information
			$data['meta_data'] = [
				'site_url' => $service->service_page_url,
				'description_1' => $service->service_meta_description,
				'title' => $service->service_meta_title,
				'description_2' => $service->service_meta_description,
				'keywords' => $service->service_meta_title,
			];
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
			$data['subnav'] = $sections;

            $getQueryFromUrl = $_SERVER['QUERY_STRING'];
            
			$data['title'] = $service->service_name;
			$data['id'] = 'service';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'service';
			$data['service_id'] = $service_slug;
			$data['service_name'] = $service->service_name;
			$data['page_heading'] = $data['service_name'];
			$data['is_bilingual'] = true;
			$data['query_from_url'] = $getQueryFromUrl;

			$this->render_page('services/detail', $data, 'services');
		}
	}

}