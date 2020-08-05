<?php

	class Career extends MY_Controller
	{
		function __construct()
		{
			parent::__construct();
			$this->load->model('crud_model');
		}

		public function index()
		{
      $lang = $this->get_language();

			$data['title'] = get_lang('career');
			$data['id'] = 'site';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'general';
			$data['page_heading'] = APP_NAME;
      $data['is_bilingual'] = true;

      $data['breadcrumb'] = [
				[
					'title' => $this->get_lang('home'),
					'url' => '',
					'active' => false
				],
				[
					'title' => $this->get_lang('career'),
					'url' => 'career',
					'active' => true
				]
      ];

      //language, section, general info (title, subtitle, order), item (specific content)
      $data['copy'] = json_decode(file_get_contents(base_url('database/json/career/career_page_'.$lang.'.json')));
			$data['jobs'] = json_decode(file_get_contents(base_url('database/json/career/job_'.$lang.'.json')));
      $data['job_category'] = json_decode(file_get_contents(base_url('database/json/career/job_category.json')));
			$data['job_type'] = json_decode(file_get_contents(base_url('database/json/career/job_type.json')));
			$data['meta_data'] = [
				'site_url' => 'career',
				'title_1' => 'Waste4Change - ' . ucwords(lang('career')),
				'description_1' => $data['copy']->banner->title,
				'title_2' => 'Waste4Change - ' . ucwords(lang('career')),
				'description_2' => $data['copy']->banner->title,
			];
      $this->render_page('careers/main/index', $data, 'services');
		}

		public function job_list()
		{
      $lang = $this->get_language();
			
			$data['title'] = get_lang('Job List');
			$data['id'] = 'site';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'general';
			$data['page_heading'] = APP_NAME;
      $data['is_bilingual'] = true;

      $data['breadcrumb'] = [
				[
					'title' => $this->get_lang('home'),
					'url' => '',
					'active' => false
				],
				[
					'title' => $this->get_lang('career'),
					'url' => 'career',
					'active' => false
				],
				[
					'title' => $this->get_lang('Job List'),
					'url' => 'career/job',
					'active' => true
				]
      ];
			$data['position'] = $this->input->get('position');
			$data['location'] = $this->input->get('location');
			$data['type'] = $this->input->get('type');
			$data['category'] = $this->input->get('category');
      //language, section, general info (title, subtitle, order), item (specific content)
      $data['copy'] = json_decode(file_get_contents(base_url('database/json/career/job_list_'.$lang.'.json')));
      $data['jobs'] = json_decode(file_get_contents(base_url('database/json/career/job_'.$lang.'.json')));
      $data['job_category'] = json_decode(file_get_contents(base_url('database/json/career/job_category.json')));
			$data['job_type'] = json_decode(file_get_contents(base_url('database/json/career/job_type.json')));
			$data['meta_data'] = [
				'site_url' => 'career/job',
				'title_1' => 'Waste4Change - Job List',
				'description_1' => json_decode(file_get_contents(base_url('database/json/career/career_page_'.$lang.'.json')))->banner->title,
				'title_2' => 'Waste4Change - Job List',
				'description_2' => json_decode(file_get_contents(base_url('database/json/career/career_page_'.$lang.'.json')))->banner->title,
			];
      $this->render_page('careers/job_list/index', $data, 'services');
		}
		
		public function job_detail($slug)
		{
      $lang = $this->get_language();

			$job = json_decode(file_get_contents(base_url('database/json/career/job_'.$lang.'.json')));
			$data['job'] = $job->{$slug};
			$data['job_slug'] = $slug;
			
			if (empty($data['job']) || empty($data['job']->talentaUrl)){
				redirect('career/job_list');
			}

			$data['title'] = $data['job']->title;
			$data['id'] = 'site';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'general';
			$data['page_heading'] = APP_NAME;
      $data['is_bilingual'] = true;

      $data['breadcrumb'] = [
				[
					'title' => $this->get_lang('home'),
					'url' => '',
					'active' => false
				],
				[
					'title' => $this->get_lang('career'),
					'url' => 'career',
					'active' => false
				],
				[
					'title' => $this->get_lang('Job List'),
					'url' => 'career/job',
					'active' => false
				],
				[
					'title' => $this->get_lang('Job Detail'),
					'url' => 'career/job',
					'active' => true
				]
			];
		
      //language, section, general info (title, subtitle, order), item (specific content)
      $data['copy'] = json_decode(file_get_contents(base_url('database/json/career/job_detail_'.$lang.'.json')));
      $data['jobs'] = json_decode(file_get_contents(base_url('database/json/career/job_'.$lang.'.json')));
      $data['job_category'] = json_decode(file_get_contents(base_url('database/json/career/job_category.json')));
			$data['job_type'] = json_decode(file_get_contents(base_url('database/json/career/job_type.json')));

			$data['meta_data'] = [
				'site_url' => 'career/job/'.$slug,
				'title_1' => 'Waste4Change - ' . $data['job']->title,
				'description_1' => $data['job']->title.' - '. json_decode(file_get_contents(base_url('database/json/career/career_page_'.$lang.'.json')))->banner->title,
				'title_2' => 'Waste4Change - ' . $data['job']->title,
				'description_2' => $data['job']->title.' - '. json_decode(file_get_contents(base_url('database/json/career/career_page_'.$lang.'.json')))->banner->title,
				'image' => SITE_URL . DIR_BG . 'career/' . $data['job_category']->{$data['job']->category}->image,
			];
      $this->render_page('careers/detail/index', $data, 'services');
		}
	}
?>

