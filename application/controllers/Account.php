<?php

/**
 * @property \User_model $user_model
 * @property \CRUD_model $crud_model
 */

class Account extends MY_Controller
{

    public function register(){
        $data['title']='';
        $data['id']='account';
        $data['subtitle']='information';
        $data['data_mode']='general';
        $data['page_heading']='register';
        $data['is_bilingual']=true;
        $data['breadcrumb']=
            [
                [
                    'title' => 'Home',
                    'is_active' => false,
                    'url' => site_url('')
                ],
                [
                    'title' => lang('register'),
                    'is_active' => true,
                    'url' => site_url('account/register')
                ],
            ];

        $this->render_page('accounts/register', $data, 'general');
    }

}
