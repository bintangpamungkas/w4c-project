<?php
	
	/**
	 * @property \User_model $user_model
	 */
	class Site extends MY_Controller
	{
		function __construct()
		{
			parent::__construct();
			$this->load->model('crud_model');
		}
		
		public function index()
		{
			$this->load->model('service_model');
			$input_city=$this->input->get('city');
			
			$lang = $this->get_language();
			
			$targets = $this->crud_model->select('service_target', QUERY_RESULT, ['service_target_id','dictionary.dictionary_content service_target_name', 'service_target_icon'], ['language_code' => $lang, 'deleted_at' => null], ['service_target' => ['dictionary' => 'dictionary_slug=service_target_name']]);
			$service_target=[];
			foreach ($targets as $target){
				if (empty($input_city)){
					$services=$this->service_model->service_list_by_coverage($lang,$input_city, $target->service_target_id,true);
				}else{
					$services=$this->service_model->service_list_by_coverage($lang,$input_city, $target->service_target_id);
				}
				$target->list=$services;
				$service_target[]=$target;
			}
			$data['input_city']=$input_city;
			$data['service_targets']=$service_target;
			$data['coverage_cities'] = $this->service_model->unique_coverage_city();
			
			$data['title'] = '';
			$data['id'] = 'site';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'general';
			$data['page_heading'] = APP_NAME;
			$data['is_bilingual'] = true;
			
			$this->render_page('sites/index', $data, 'index');
		}
		
		
		public function about()
		{
			$data['title'] = APP_NAME;
			$data['id'] = 'site';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'general';
			$data['page_heading'] = 'about_us';
			$data['is_bilingual'] = true;
			
			$this->render_page('sites/about', $data, 'services');
		}
		
		public function contact()
		{
			$data['title'] = APP_NAME;
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
			$data['title'] = APP_NAME;
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
			$data['title'] = APP_NAME;
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
			
			
			$this->render_page('sites/join', $data, 'services');
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
