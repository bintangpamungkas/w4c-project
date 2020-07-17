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
      $data['copy'] = json_decode(file_get_contents(base_url('database/json/career_page_'.$lang.'.json')));
			$data['jobs'] = json_decode(file_get_contents(base_url('database/json/job_'.$lang.'.json')));
      $data['job_category'] = json_decode(file_get_contents(base_url('database/json/job_category.json')));
			$data['job_type'] = json_decode(file_get_contents(base_url('database/json/job_type.json')));
      $this->render_page('careers/index', $data, 'services');
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
					'url' => 'carrer/joblist',
					'active' => true
				]
      ];

      //language, section, general info (title, subtitle, order), item (specific content)
      $data['copy'] = json_decode(file_get_contents(base_url('database/json/job_list_'.$lang.'.json')));
      $data['jobs'] = json_decode(file_get_contents(base_url('database/json/job_'.$lang.'.json')));
      $data['job_category'] = json_decode(file_get_contents(base_url('database/json/job_category.json')));
			$data['job_type'] = json_decode(file_get_contents(base_url('database/json/job_type.json')));
      $this->render_page('careers/job_list', $data, 'services');
		}
	}
?>

