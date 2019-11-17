<?php
/**
* @property \User_model $user_model
*/
class Service extends MY_Controller
{
  function __construct(){
    parent::__construct();
    $this->load->model('account_model');
    $this->load->model('service_model');
    $this->load->model('crud_model');
  }

  public function index(){
    if (empty($this->session->userdata('language'))) {
      $lang = 'id';
    }else {
      $lang = $this->session->userdata('language');
    }
    $services=$this->service_model->service_list($lang);
    foreach ($services as $service) {
      $rec=$this->service_model->service_recomendation($lang,$service->service_id);
      $service->recomendation=$rec;
      $serv[]=$service;
    }
    $data['services']=$serv;
    $data['service_targets']=$this->crud_model->select('service_target',QUERY_RESULT,['dictionary.dictionary_content service_target_name','service_target_icon'],['language_code'=>$lang,'deleted_at'=>null],['service_target'=>['dictionary'=>'dictionary_slug=service_target_name']]);
//     print_r($data['services']);
// die();
    $data['title']='';
    $data['id']='site';
    $data['subtitle']='information';
    $data['data_mode']='general';
    $data['page_heading']='services_title';
    $data['is_bilingual']=true;

    $this->render_page('services/index', $data, 'general');
  }

  public function epr(){
    $data['title']='';
    $data['id']='site';
    $data['subtitle']='information';
    $data['data_mode']='general';
    $data['page_heading']='services_esr_tab';
    $data['is_bilingual']=true;

    $this->render_page('services/epr', $data, 'general');
  }

  public function detail($param){
    $data['title']='';
    $data['id']='service';
    $data['subtitle']='information';
    $data['data_mode']='general';
    $data['service_id']=$param;
    $data['service_name']=str_replace('-', ' ', lang($data['service_id']));
    $data['page_heading']=$data['service_name'];
    $data['is_bilingual']=false;

    $data['subnav']='custom';


    $data['subnav']=[
      [
        'title' => lang('about_general'),
        'url' => '#about',
        'type' => 'link',
      ],
      [
        'title' => lang('solution'),
        'url' => '#feature',
        'type' => 'link',
      ],
      [
        'title' => lang('facility'),
        'url' => '#facility',
        'type' => 'link',
      ],
      [
        'title' => lang('client_only_title'),
        'url' => '#client',
        'type' => 'link',
      ],
      [
        'title' => lang('recomended_user'),
        'url' => '#recomended_for',
        'type' => 'link',
      ],
      [
        'title' => lang('get_started'),
        'url' => '#cta',
        'type' => 'button',
        'option' => [
          'btn-color' => 'btn-info',
          'icon' => 'fa fa-chevron-right',
          'option-class' => 'd-none animated bounceInRight toggle-hide',
        ],
      ],
    ];


    $this->render_page('services/'.$param.'/index', $data, 'general');
  }

  public function join($param){
    $data['title']='';
    $data['id']='service';
    $data['subtitle']='information';
    $data['data_mode']='general';
    $data['service_id']=$param;
    $data['service_name']=str_replace('-', ' ', lang($data['service_id']));
    $data['page_heading']=$data['service_name'];
    $data['is_bilingual']=false;

    $data['subnav']='custom';


    $data['subnav']=[
      [
        'title' => lang('about_general'),
        'url' => '#about',
        'type' => 'link',
      ],
      [
        'title' => lang('solution'),
        'url' => '#feature',
        'type' => 'link',
      ],
      [
        'title' => lang('facility'),
        'url' => '#facility',
        'type' => 'link',
      ],
      [
        'title' => lang('client_only_title'),
        'url' => '#client',
        'type' => 'link',
      ],
      [
        'title' => lang('recomended_user'),
        'url' => '#recomended_for',
        'type' => 'link',
      ],
      [
        'title' => lang('get_started'),
        'url' => '#cta',
        'type' => 'button',
        'option' => [
          'btn-color' => 'btn-info',
          'icon' => 'fa fa-chevron-right',
          'option-class' => 'd-none animated bounceInRight toggle-hide',
        ],
      ],
    ];


    $this->render_page('services/'.$param.'/join', $data, 'general');
  }

}
