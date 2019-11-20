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
    $lang = $this->get_language();

    $services=$this->service_model->service_list($lang);
    foreach ($services as $service) {
      $rec=$this->service_model->service_recomendation($lang,$service->service_id);
      $service->recomendation=$rec;
      $serv[]=$service;
    }
    $data['services']=$serv;
    $data['service_targets']=$this->crud_model->select('service_target',QUERY_RESULT,['dictionary.dictionary_content service_target_name','service_target_icon'],['language_code'=>$lang,'deleted_at'=>null],['service_target'=>['dictionary'=>'dictionary_slug=service_target_name']]);
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

  public function detail($service_slug){
    $lang = $this->get_language();

    $service=$this->service_model->get_service($lang,$service_slug);
    $subnav=$this->crud_model->select('service_section',QUERY_RESULT,['section.section_id','section_slug','(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=section_menu_name AND dictionary.language_code="'.$lang.'") as section_menu_name','(SELECT dictionary_content FROM dictionary WHERE dictionary.dictionary_slug=section_name AND dictionary.language_code="'.$lang.'") as section_name'],['service_id'=>$service->service_id],['service_section'=>['section'=>'section_id']]);

    $data['title']='';
    $data['id']='service';
    $data['subtitle']='information';
    $data['data_mode']='general';
    $data['service_id']=$service_slug;
    $data['service_name']=str_replace('-', ' ', lang($data['service_id']));
    $data['page_heading']=$data['service_name'];
    $data['is_bilingual']=true;
    // print_r($service);
    // print_r($subnav);
    // die();
    $data['subnav']=$subnav;
    // $data['subnav']=
    // [
    //   [
    //     'title' => lang('about_general'),
    //     'url' => '#about',
    //     'type' => 'link',
    //   ],
    //   [
    //     'title' => lang('solution'),
    //     'url' => '#feature',
    //     'type' => 'link',
    //   ],
    //   [
    //     'title' => lang('facility'),
    //     'url' => '#facility',
    //     'type' => 'link',
    //   ],
    //   [
    //     'title' => lang('client_only_title'),
    //     'url' => '#client',
    //     'type' => 'link',
    //   ],
    //   [
    //     'title' => lang('recomended_user'),
    //     'url' => '#recomended_for',
    //     'type' => 'link',
    //   ],
    //   [
    //     'title' => lang('get_started'),
    //     'url' => '#cta',
    //     'type' => 'button',
    //     'option' => [
    //       'btn-color' => 'btn-info',
    //       'icon' => 'fa fa-chevron-right',
    //       'option-class' => 'd-none animated bounceInRight toggle-hide',
    //     ],
    //   ],
    // ];

    $data['service']=$service;
    $data['sections']=$subnav;
    // $achievement=$this->crud_model->select('achievement',QUERY_RESULT,['(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=section_name AND language_code="'.$lang.'") as section_name','(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=section_menu_name AND language_code="'.$lang.'") as section_menu_name'],['service_section.service_id'=>$service->service_id,'service_section.deleted_at'=>null],['service_section'=>['section'=>'section_id']]);
    $data['benefit']=$this->crud_model->select('benefit',QUERY_RESULT,['benefit_icon','(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=benefit_name AND language_code="'.$lang.'") as benefit_name'],['service_id'=>$service->service_id,'deleted_at'=>null]);
    $data['facility']=$this->crud_model->select('facility',QUERY_RESULT,['facility_icon','(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=facility_name AND language_code="'.$lang.'") as facility_name'],['service_id'=>$service->service_id,'deleted_at'=>null]);
    $data['flow']=$this->crud_model->select('flow',QUERY_RESULT,['flow_icon','(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=flow_name AND language_code="'.$lang.'") as flow_name'],['service_id'=>$service->service_id,'deleted_at'=>null]);
    $data['photofolio']=$this->crud_model->select('photofolio',QUERY_RESULT,'',['service_id'=>$service->service_id,'deleted_at'=>null]);
    $data['client']=$this->crud_model->select('client',QUERY_RESULT,'',['service_id'=>$service->service_id,'deleted_at'=>null]);
    $data['recomendation']=$this->crud_model->select('service_recomendation',QUERY_RESULT,['recomendation_icon','recomendation_color','(SELECT dictionary_content FROM dictionary WHERE dictionary_slug=recomendation_name AND language_code="'.$lang.'") as recomendation_name'],['service_recomendation.service_id'=>$service->service_id,'service_recomendation.deleted_at'=>null],['service_recomendation'=>['recomendation'=>'recomendation_id']]);


    $this->render_page('services/details/index', $data, 'services');
  }

  public function text(){

    $service_target=$this->crud_model->select('service_target',QUERY_RESULT,['service_target_id','dictionary.dictionary_content service_target_name','service_target_icon'],['language_code'=>$lang,'deleted_at'=>null],['service_target'=>['dictionary'=>'dictionary_slug=service_target_name']]);
    $targets=[];
    foreach ($service_target as $target) {
      $service_category=$this->crud_model->select('service_category',QUERY_RESULT,['service_category_id', 'service_category_name','service_category_icon','service_target_id'],['service_category.service_target_id'=>$target->service_target_id]);

      $categories=[];
      foreach ($service_category as $category) {
        $services=$this->crud_model->select('service',QUERY_RESULT,['service_id','service_slug','service_name','service_category_id'],['service_id'=>$category->service_category_id]);
        $category->services=$services;
        $categories[]=$category;
      }

      $target->category=$categories;
      $targets[]=$target;
    }
    print_r($targets);
    die();
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
