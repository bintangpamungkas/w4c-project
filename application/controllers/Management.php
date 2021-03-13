<?php

	class Management extends MY_Controller
	{
		function __construct()
		{
			parent::__construct();
			$this->api = base_url('service-waste-management');
			$this->load->model('crud_model');
			$this->load->library('curl');
		}

		public function responsibleWasteManagement() {
			$lang = $this->get_language();

			$data['title'] = get_lang('responsibleWasteManagement');
			$data['titleDesc'] = 'Sistem manajemen sampah yang 100% menyeluruh untuk perusahaan, gedung, dan pelaku bisnis dalam rangka mengurangi jumlah timbunan sampah yang berakhir di TPA.';

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
					'title' => $this->get_lang('all-services'),
					'url' => 'waste-management',
					'active' => false
				],
				[
					'title' => $this->get_lang('responsibleWasteManagement'),
					'url' => '',
					'active' => true
				],
					
			];
			$resApi = json_decode($this->curl->simple_get($this->api), true);
			if (!empty($resApi) && ($resApi['success'] == true)) {
				$data['serviceWasteManagement'] = $resApi['data'];
			}
			$this->render_page('management/index', $data, 'services');
		}
	}		
?>

