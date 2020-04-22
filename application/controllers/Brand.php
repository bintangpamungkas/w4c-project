<?php

	/**
	 * @property \User_model $user_model
	 */
	class Brand extends MY_Controller
	{
		function __construct()
		{
			parent::__construct();
			$this->load->model('account_model');
			$this->load->model('crud_model');
		}

		public function index($brand_slug)
		{
			$data['brand_id'] = $brand_slug;
			$data['brand_name'] = $brand_slug == 'tetrapak' ? 'tetra pak' : ($brand_slug == 'cocacola' ? 'Coca-Cola' : '');
			$data['title'] = 'brand';
			$data['id'] = 'brand';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'general';
			$data['page_heading'] = $data['brand_name'] . ' :: ' . lang('sustainability_page');
			$data['is_bilingual'] = false;

			$data['subnav'] = [
				[
					'title' => lang('nav_achievement_a') . '<div><small>' . lang('nav_achievement_b') . '</small></div>',
					'url' => '#counter',
				],
				[
					'title' => lang('nav_story_a') . '<div><small>' . lang('nav_story_b') . '</small></div>',
					'url' => '#story',
				],
				[
					'title' => lang('nav_program_a') . '<div><small>' . lang('nav_program_b') . '</small></div>',
					'url' => '#program',
				],
				[
					'title' => lang('nav_what_a') . '<div><small>' . lang('nav_what_b') . '</small></div>',
					'url' => '#waste',
				],
				[
					'title' => lang('nav_treat_a') . '<div><small>' . lang('nav_treat_b') . '</small></div>',
					'url' => '#treat',
				],
				[
					'title' => lang('nav_where_a') . '<div><small>' . lang('nav_where_b') . '</small></div>',
					'url' => '#where',
				],
			];

			if ($brand_slug == 'cocacola' || $brand_slug == 'tetrapak') {
				$this->render_page('brands/' . $brand_slug . '/index', $data, 'brand');
			} else {
				show_404();
			}
		}

		public function join()
		{
			$data['title'] = APP_NAME;
			$data['id'] = 'brand';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'general';
			$data['page_heading'] = 'Join Program';

			$this->render_page('brands/join', $data);
		}

	}
