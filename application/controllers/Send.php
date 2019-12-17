<?php
/**
 * @property \User_model $user_model
 */
class Send extends MY_Controller
{
    function __construct(){
        parent::__construct();
        $this->load->model('account_model');
    }

    public function index(){
        $data['id']='send';
        $data['title']=APP_NAME;
        $data['subtitle']='information';
        $data['data_mode']='general';
        $data['page_heading']='Send';

        $this->render_page('sends/index', $data);
    }

}
