<?php
	
	/**
	 * @property \User_model $user_model
	 */
	class Site extends MY_Controller
	{
		function __construct()
		{
			parent::__construct();
			$this->load->model('account_model');
			$this->load->model('crud_model');
		}
		
		public function index()
		{
			if (empty($this->session->userdata('language'))) {
				$lang = 'id';
			} else {
				$lang = $this->session->userdata('language');
			}
			$data['title'] = '';
			$data['id'] = 'site';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'general';
			$data['page_heading'] = APPNAME;
			$data['is_bilingual'] = true;
			
			$this->render_page('sites/index', $data, 'index');
		}
		
		
		public function about()
		{
			$data['title'] = APPNAME;
			$data['id'] = 'site';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'general';
			$data['page_heading'] = 'about_us';
			$data['is_bilingual'] = true;
			
			$this->render_page('sites/about', $data, 'services');
		}
		
		public function contact()
		{
			$data['title'] = APPNAME;
			$data['id'] = 'brand';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'general';
			$data['page_heading'] = 'contact';
			$data['is_bilingual'] = true;
			$data['breadcrumb'] =
					[
							[
									'title' => 'Home',
									'is_active' => false,
									'url' => W4C_URL
							],
							[
									'title' => lang('contact'),
									'is_active' => true,
									'url' => site_url('send')
							],
					];
			
			
			$this->render_page('sites/contact', $data, 'services');
		}
		
		public function career()
		{
			$data['title'] = APPNAME;
			$data['id'] = 'brand';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'general';
			$data['page_heading'] = 'career';
			$data['is_bilingual'] = true;
			$data['breadcrumb'] =
					[
							[
									'title' => 'Home',
									'is_active' => false,
									'url' => W4C_URL
							],
							[
									'title' => lang('contact'),
									'is_active' => true,
									'url' => site_url('career')
							],
					];
			
			$this->render_page('sites/career', $data);
		}
		
		public function id()
		{
			$this->session->set_userdata(['language' => 'id']);
			redirect($this->agent->referrer());
			
		}
		
		public function en()
		{
			$this->session->set_userdata(['language' => 'en']);
			redirect($this->agent->referrer());
			
		}
		
		public function join()
		{
			$data['title'] = APPNAME;
			$data['id'] = 'brand';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'general';
			$data['page_heading'] = 'join';
			$data['is_bilingual'] = true;
			$data['breadcrumb'] =
					[
							[
									'title' => 'Home',
									'is_active' => false,
									'url' => W4C_URL
							],
							[
									'title' => lang('join'),
									'is_active' => true,
									'url' => site_url('send')
							],
					];
			
			
			$this->render_page('services/join', $data, 'index');
		}
		
		public function verify()
		{
			echo 'google-site-verification: google39e6cec569c4087b.html';
			redirect($this->agent->referrer());
		}
		
		function test()
		{
			$directory = 'assets/img/service/dropbox/bg/thumbnail.jpg';
			echo get_image($directory);
			
		}
	}
