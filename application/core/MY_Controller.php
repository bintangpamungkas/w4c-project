<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
date_default_timezone_set('Asia/Jakarta');
	/**
	 * Class MY_Controller
	 * @property \Company_model $company_model
	 * @property \Account_model $account_model
	 * @property \User_model $user_model
	 * @property \Service_model $service_model
	 * @property \CRUD_model $crud_model
	 */
	class MY_Controller extends CI_Controller
	{
		
		function __construct()
		{
			parent::__construct();
			$this->load->helper('my_helper');
			$this->load->helper('date');

			$this->lang->load('this', $this->session->userdata('language') ? ($this->session->userdata('language') == 'id' ? 'indonesia' : 'english') : 'indonesia');
		}
		
		function getCompany($data)
		{
			$this->load->model('Site_model');
			$dataku = $this->company_model->company($data);
			foreach ($dataku as $data => $field) {
				$value = $field;
			}
			return $value;
		}
		
		function render_page($content, $data = NULL, $template = NULL)
		{
			if (IS_ONLINE == 1) {
				if (empty($_SERVER['HTTPS'])) {
					redirect('https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']);
				}
			}
			$lang = $this->get_language();
			
			// GET service as menu
			$service_target = $this->crud_model->select('service_target', QUERY_RESULT, ['service_target_id', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=service_target_name AND language_code="' . $lang . '" limit 1) as title', 'service_target_icon icon'], ['deleted_at' => null]);
			$targets = [];
			foreach ($service_target as $target) {
				$service_category = $this->crud_model->select('service_category', QUERY_RESULT, ['service_category_id', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=service_category_name AND language_code="' . $lang . '" limit 1) as title', 'service_category_icon icon', 'service_target_id'], ['service_category.service_target_id' => $target->service_target_id]);
				$categories = [];
				foreach ($service_category as $category) {
					$services = $this->crud_model->select('service', QUERY_RESULT, ['service_id', 'service_page_url url', '(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=service_name AND language_code="' . $lang . '" limit 1) as title', 'service_category_id', 'has_page'], ['service_category_id' => $category->service_category_id, 'deleted_at' => null, 'service_parent_id' => null,'service.has_page'=>1]);
					
					$category->menu = $services;
					$categories[] = $category;
				}
				
				$target->menu = $categories;
				$targets[] = $target;
			}
			//END GET service
//			 print_r($targets);
//			 die();
			$data['template'] = empty($template) ? 'general' : $template;
			$data['lang'] = $lang;
			
			$data['navigation_array_individu'] = $this->navigation_menu_array_segment('individual');
			$data['navigation_array_corporate'] = $this->navigation_menu_array_segment('corporate');
//		 $data['service_targets']=$targets;
			$data['navigation_array'] = [
					[
							'title' => strtoupper(lang('service')),
							'for' => 'menu',
							'visible' => $this->agent->is_mobile() ? false : true,
							'number' => '1',
							'url' => '#mega-menu-1',
							'type' => 'mega-menu',
							'submenu_type' => 'column',
							'icon' => '',
							'is_new' => false,
							'menu' => $targets
					],
					[
							'title' => lang('about_only'),
							'for' => 'menu',
							'visible' => true,
							'number' => '5',
							'url' => W4C_URL . 'about',
							'type' => '',
							'submenu_type' => 'list',
							'icon' => '',
							'is_new' => false,
							'menu' => '',
					],
					[
							'title' => 'BLOG',
							'for' => 'menu',
							'visible' => true,
							'number' => '6',
							'url' => 'https://waste4change.com/blog',
							'type' => '',
							'submenu_type' => 'list',
							'icon' => '',
							'is_new' => false,
							'menu' => '',
					],
					[
							'title' => lang('contact'),
							'for' => 'menu',
							'visible' => true,
							'number' => '7',
							'url' => site_url('site/contact'),
							'type' => '',
							'submenu_type' => 'list',
							'icon' => '',
							'is_new' => false,
							'menu' => '',
					],
			];
			if ($this->session->userdata('login_email')) {
				//$login_value = $this->session->userdata('login_email');
				//$this->load->model('account_model');
				//$data['login_user'] = $this->account_model->user_login_session('user', 'email', $login_value);
			}
			
			$data['languages']=$this->crud_model->select('language',QUERY_RESULT,['language_code','language_flag','language_name'],'');

			if ($this->agent->is_mobile()) {
				if ($this->uri->segment(1) == 'email') {
					$render = '';
				} else {
					//set mobile
					$render = '';
				}
			} else {
				$render = '';
			}
			
			//PAGE
			//$data['is_bilingual']=false;
			$data['asset_head'] = $this->load->view('templates/asset_head', $data, TRUE);
			$data['header'] = $this->load->view('templates/header', $data, TRUE);
			
			// $data['breadcrumb'] = $this->load->view('templates/breadcrumb', $data, TRUE);
			$data['content'] = $this->load->view($render . $content, $data, TRUE);
			
			$data['asset_footer'] = $this->load->view('templates/asset_footer', $data, TRUE);
			$data['footer'] = $this->load->view($render . 'templates/footer', $data, TRUE);
			
			$this->load->view('templates/index', $data);
		}
		
		function navigation_menu_array_segment($user_target)
		{
			
			$data['service_individual'] = [
					[
							'number' => 1,
							'visible' => true,
							'category' => 'General',
							'title' => 'Send Your Waste',
							'content' => lang('send_your_waste'),
							'icon' => 'default.png',
							'image' => 'syw.jpg',
							'recomendation' => ['General'],
							'url' => W4C_URL . 'service/send-your-waste',
							'is_new' => false,
					],
					[
							'number' => 2,
							'visible' => true,
							'category' => 'General',
							'title' => 'Dropbox',
							'content' => lang('services_dropbox'),
							'icon' => 'default.png',
							'image' => 'dropbox.jpg',
							'recomendation' => ['General'],
							'url' => W4C_URL . 'service/dropbox',
							'is_new' => false,
					],
			];
			
			$data['service_corporate'] = [
					[
							'title' => 'Zero Waste to Landfill',
							'url' => W4C_URL . 'service/zero-waste-to-landfill',
							'icon' => 'default.png',
							'is_new' => false,
							'category' => 'Responsible Waste Management',
							'number' => 1,
							'content' => lang('services_zero_waste_to_landfill'),
							'recomendation' => ['General'],
							'image' => 'zwtl.jpg',
							'visible' => true,
					],
					[
							'number' => 2,
							'visible' => true,
							'category' => 'general',
							'title' => 'Solid Waste Management Research',
							'content' => lang('services_solid_waste_management_research'),
							'icon' => 'default.png',
							'image' => 'swmr.jpg',
							'recomendation' => ['General'],
							'url' => W4C_URL . 'service/solid-waste-management-research',
							'is_new' => false,
					],
					[
							'number' => 3,
							'visible' => true,
							'category' => 'Extended Producer Responsibilities',
							'title' => 'In-Store Recycling',
							'content' => lang('services_in_store_recycling'),
							'icon' => 'default.png',
							'image' => 'in_store_recycling.jpg',
							'recomendation' => ['General'],
							'url' => W4C_URL . 'service/in-store-recycling',
							'is_new' => false,
					],
					[
							'number' => 4,
							'visible' => true,
							'category' => 'Training',
							'title' => 'AKABIS (Waste Management Academy)',
							'content' => lang('services_akabis'),
							'icon' => 'default.png',
							'image' => 'akabis.jpg',
							'recomendation' => ['General'],
							'url' => W4C_URL . 'service/akabis-waste-management-academy',
							'is_new' => false,
					],
					[
							'number' => 5,
							'visible' => true,
							'category' => 'Community Development',
							'title' => '3R School Program',
							'content' => lang('services_3r_school_program'),
							'icon' => 'default.png',
							'image' => '3rschool.jpg',
							'recomendation' => ['General'],
							'url' => W4C_URL . 'service/3r-school-program',
							'is_new' => false,
					],
			];
			
			return $data['service_' . $user_target];
		}
		
		public function is_logged()
		{
			
			$redirect = uri_string() . '?' . $_SERVER['QUERY_STRING'];
			$uri_string = uri_string();
			$latest_url = $this->input->get('redirect');
			
			if ($this->session->userdata('login_email')) {
				if ($uri_string == 'account/sign' || $uri_string == 'account/login' || $uri_string == 'account/register') {
					redirect(site_url());
				}
			} else {
				if ($_SERVER['QUERY_STRING'] == '') {
					$string = '';
				} else {
					$string = '
        <script>
        $(window).load(function(){
          $("#loginAlert").modal("show");
        })
        </script>
        ';
				}
				
				$this->session->set_flashdata('is_login_message', $string);
				
				if ($uri_string != 'account/sign' && $uri_string != 'account/login' && $uri_string != 'account/register') {
					
					redirect(site_url('account/sign?' . $redirect));
				}
			}
			
		}
		
		public function send_mail($from = null, $name = null, $to = null, $subject = null, $message = null)
		{
			
			$mg_api_key = 'key-54fc7af36b0227c7f35f0d28d2d13e18';
			$mg_dns = 'mg.sampahmuda.com';
			
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
			curl_setopt($ch, CURLOPT_USERPWD, 'api:' . $mg_api_key);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
			curl_setopt($ch, CURLOPT_URL,
					'https://api.mailgun.net/v3/' . $mg_dns . '/messages');
			
			curl_setopt($ch, CURLOPT_POSTFIELDS,
					array('from' => $name . ' <' . $from . '>',
							'to' => '<' . $to . '>',
							'subject' => $subject,
							'html' => $message
					));
			
			/*
			curl_setopt($ch, CURLOPT_POSTFIELDS,
			array(
			'from' => $name.' <'.$from.'>',
			'to' => '<'.$to.'>',
			'subject' => $subject,
			'text' => $message
		));
		*/
			
			$result = curl_exec($ch);
			curl_close($ch);
			return $result;
			
		}
		
		public function email_account($activity, $customer_fullname = null, $account_key = null, $user_activity = null, $for = null, $activity_id = null)
		{
			
			$this->load->model('Site_model');
			$data['company'] = $this->company_model->company();
			
			$data['activity'] = $activity;
			$data['account_key'] = $account_key;
			$data['customer_fullname'] = $customer_fullname;
			$data['activity_id'] = $activity_id;
			$data['user_activity'] = $user_activity;
			$data['for'] = $for;
			return $this->load->view('emails/' . $for . '/account', $data, TRUE);
		}

		
		function check_data($table, $where)
		{
			return $this->db->get_where(PREFIX_TABLE . $table, $where);
		}
		
		function send_sms($recipient, $content)
		{
			return 'sms://' . $recipient . '?body=' . $content;
		}
		
		public function alert_small($alert_color, $icon, $message, $button)
		{
			if ($button == true) {
				$show_button = '<button type="button" class="close" data-dismiss="alert" aria-hidden="true" style="line-height: 0.75;"><i class="fa fa-times" style="font-size: 14px"></i></button>';
			} else {
				$show_button = '';
			}
			return '<div class="alert alert-' . $alert_color . ' fade in alert-dismissable">' . $show_button . '<i class="' . $icon . ' fa-before hidden"></i> ' . $message . '</div>';
		}
		
		public function alert_text_color($alert_color, $icon, $message)
		{
			return '<p class="text-' . $alert_color . '"><i class="' . $icon . ' fa-before"></i>' . $message . '</p>';
		}
		
		public function alert_plain($string)
		{
			return $string;
		}
		
		public function view_money($nominal)
		{
			return APP_CURRENCY . '. ' . number_format($nominal, 0, ',', '.');
		}
		
		public function view_telephone($string, $to_rules)
		{
			$telephone_first_code = substr($string, 0, 3);
			$telephone_first_zero = substr($string, 0, 1);
			if ($telephone_first_code == PHONE_AREA_ID) {
				$number = substr($string, 3, 999);
			} else if ($telephone_first_zero == '0') {
				$number = substr($string, 1, 999);
			} else {
				$number = $string;
			}
			
			if ($to_rules == 'true') {
				return PHONE_AREA_ID . $number;
			} else {
				return '0' . $number;
			}
			
		}
		
		public function alert_modal($content)
		{
			return '
  <script type="text/javascript">
  $(window).load(function(){
    $("#modalNotif").modal("show");
  });
  </script>
  <div class="modal fade" id="modalNotif" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
  <div class="modal-content round-xs">
  <div class="modal-body" style="min-height: 200px">
  <div class="clearfix text-center" style="padding-top: 0">' . $content . '</div>

  <button type="button" class="close hidden" data-dismiss="modal" aria-label="Close">
  <span aria-hidden="true">&times;</span>
  </button>
  </div>
  </div>
  </div>
  <div class="close-modal"></div>

  </div>
  ';
		}
		
		public function view_time($time, $with_second = NULL)
		{
			$with_second == TRUE ? $format = "H:i:s" : $format = "H:i";
			$view_time = date($format, strtotime($time));
			return $view_time;
		}
		
		public function view_trashpay($currency, $nominal)
		{
			return number_format(floor($nominal), 0, ',', '.') . ' <small>' . $currency . '</small>';
		}
		
		public function jenis_tempat()
		{
			$jenis_tempat = array(
					'rumah' => 'Rumah',
					'kos' => 'Kos',
					'kantor' => 'Kantor',
					'sekolah' => 'Sekolah',
					'bank sampah' => 'Bank Sampah',
					'hotel' => 'Hotel',
					'industri' => 'Industri',
					'lain' => 'Lain-lain',
			);
			return $jenis_tempat;
		}
		
		public function admin_email()
		{
			$email = array(
					'admin@sampahmuda.com' => 'Admin',
					'suciwulandari34@gmail.com' => 'Suci',
			);
			return $email;
		}
		
		public function get_language()
		{
			if (empty($this->session->userdata('language'))) {
				$lang = 'id';
			} else {
				$lang = $this->session->userdata('language');
			}
			return $lang;
		}
	}
