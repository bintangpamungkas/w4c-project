<?php

	class Internship extends MY_Controller
	{
		function __construct()
		{
			parent::__construct();
			$this->load->model('crud_model');
		}

		public function index()
		{
      $lang = $this->get_language();

			$data['title'] = get_lang('internship');
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
					'title' => $this->get_lang('internship'),
					'url' => 'career',
					'active' => true
				]
      ];

      //language, section, general info (title, subtitle, order), item (specific content)
      	$data['copy'] = json_decode(file_get_contents(base_url('database/json/internship/internship_page_'.$lang.'.json')));		
      	$data['internship_category'] = json_decode(file_get_contents(base_url('database/json/internship/internship_category_'.$lang.'.json')));
		$data['jobs'] = json_decode(file_get_contents(base_url('database/json/internship/intern_'.$lang.'.json')));
		$data['job_type'] = json_decode(file_get_contents(base_url('database/json/internship/intern_type.json')));

			$data['meta_data'] = [
				'site_url' => 'internship',
				'title' => 'Waste4Change - ' . ucwords(lang('internship')),
				'description_1' => $data['copy']->banner->title,
				'description_2' => $data['copy']->banner->title,
				'keywords' => 'magang, program magang, magang startup, magang startup persampahan, manajemen sampah, intern, internship, internship experience, internship waste4change, magang waste4change',
			];
      $this->render_page('internship/index', $data, 'services');
		}

		public function intern_list()
		{
      $lang = $this->get_language();
			
			$data['title'] = get_lang('Intern List');
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
					'title' => $this->get_lang('internship'),
					'url' => 'internship',
					'active' => false
				],
				[
					'title' => $this->get_lang('Intern List'),
					'url' => 'internship/intern-list',
					'active' => true
				]
      ];
			$data['position'] = $this->input->get('position');
			$data['location'] = $this->input->get('location');
			// $data['type'] = $this->input->get('type');
			$data['category'] = $this->input->get('category');
      //language, section, general info (title, subtitle, order), item (specific content)
      $data['copy'] = json_decode(file_get_contents(base_url('database/json/internship/intern_list_page_'.$lang.'.json')));
			$data['interns'] = json_decode(file_get_contents(base_url('database/json/internship/intern_'.$lang.'.json')));

      $data['internship_category'] = json_decode(file_get_contents(base_url('database/json/internship/internship_category_'.$lang.'.json')));
			$data['intern_type'] = json_decode(file_get_contents(base_url('database/json/internship/intern_type.json')));
			$data['meta_data'] = [
				'site_url' => 'internship/intern-list',
				'title' => 'Waste4Change - Internship List',
				'description_1' => json_decode(file_get_contents(base_url('database/json/internship/internship_page_'.$lang.'.json')))->banner->title,
				'description_2' => json_decode(file_get_contents(base_url('database/json/internship/internship_page_'.$lang.'.json')))->banner->title,
			];
      $this->render_page('internship/intern_list/index', $data, 'services');
		}

		public function intern_detail($slug)
		{
      $lang = $this->get_language();

			$job = json_decode(file_get_contents(base_url('database/json/internship/intern_'.$lang.'.json')));
			$data['job'] = $job->{$slug};
			$data['job_slug'] = $slug;
			
			if (empty($data['job'])){
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
					'title' => $this->get_lang('Internsip'),
					'url' => 'career',
					'active' => false
				],
				[
					'title' => $this->get_lang('Job List'),
					'url' => 'internship/intern-list',
					'active' => false
				],
				[
					'title' => $this->get_lang('Job Detail'),
					'url' => 'internship/intern-list',
					'active' => true
				]
			];
		
      //language, section, general info (title, subtitle, order), item (specific content)
      $data['copy'] = json_decode(file_get_contents(base_url('database/json/internship/intern_detail_page_'.$lang.'.json')));
      $data['jobs'] = json_decode(file_get_contents(base_url('database/json/internship/intern_'.$lang.'.json')));
      $data['job_category'] = json_decode(file_get_contents(base_url('database/json/internship/internship_category_'.$lang.'.json')));
			$data['job_type'] = json_decode(file_get_contents(base_url('database/json/internship/intern_type.json')));

			$data['meta_data'] = [
				'site_url' => 'internship/intern-list/'.$slug,
				'title' => 'Waste4Change - ' . $data['job']->title,
				'description_1' => $data['job']->title.' - '. json_decode(file_get_contents(base_url('database/json/internship/internship_page_'.$lang.'.json')))->banner->title,
				'description_2' => $data['job']->title.' - '. json_decode(file_get_contents(base_url('database/json/internship/internship_page_'.$lang.'.json')))->banner->title,
				'image' => SITE_URL . DIR_BG . 'internship/' . $data['job_category']->{$data['job']->category}->image,
			];
      $this->render_page('internship/detail/index', $data, 'services');
		}

	}		
?>

