<?php

	class Test extends MY_Controller
	{
		function __construct()
		{
			parent::__construct();
			$this->load->model('crud_model');
		}

		public function index()
		{
			echo 11;
	die();
			$data['title'] = '';
			$data['id'] = 'site';
			$data['subtitle'] = 'information';
			$data['data_mode'] = 'general';
			$data['page_heading'] = APP_NAME;
			$data['is_bilingual'] = true;
		}
	}
?>

