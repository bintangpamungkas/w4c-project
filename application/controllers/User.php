<?php

/**
 * @property \User_model $user_model
 * @property \Transaction_model $transaction_model
 * @property \Location_model $location_model
 * @property \Item_model $item_model
 * @property \CRUD_model $crud_model
 */
class User extends MY_Controller
{
    function __construct(){
        parent::__construct();
        $this->load->model('account_model');
    }

    public function password(){
        $data['title']='password';
        $data['subtitle']='password';

        $data['is_edit']='true';

        $this->load->model('user_model');
        $data['user']=$this->user_model->detail('user_id', $this->session->userdata('login_user_id'));

        $this->render_page('users/password', $data);
    }

    public function edit(){
        $this->is_logged();
        $data['title']='edit profil';
        $data['subtitle']='index';
        $data['data_mode']='user';

        $this->load->model('user_model');
        $data['user']=$this->user_model->detail('user_id', $this->session->userdata('login_user_id'));

        $this->render_page('users/edit', $data);
    }

    public function detail($param){
        $this->is_logged();
        $data['title']='user';
        $data['subtitle']='index';
        $data['data_mode']='user';

        $this->load->model('user_model');
        $data['user']=$this->user_model->detail('user_id', $param);

        $this->render_page('users/detail', $data);
    }

    public function index(){
        $this->is_logged();
        $data['title']='profil';
        $data['subtitle']='profile';
        $data['data_mode']='user';
        $data['parent']='';

        $this->load->model('user_model');
        $data['user']=$this->user_model->detail('user_id', $this->session->userdata('login_user_id'));

        $this->render_page('users/index', $data);
    }

    public function address(){
        $this->is_logged();
        $data['title']='address';
        $data['subtitle']='address';
        $data['data_mode']='user';
        $data['parent']='user';

        $this->load->model('user_model');
        $data['addresses']=$this->user_model->addresses($this->session->userdata('login_user_id'));

        $this->load->model('location_model');
        $data['provinces']=$this->location_model->province();

        $this->render_page('users/address', $data);
    }

    public function updateUser(){

        $this->load->model('user_model');
        $this->load->model('crud_model');
        $this->load->helper('string');
        $account_key=random_string('alnum', 16);
        $unique_id=random_string('alnum', 4);

        $form_mode=$this->input->post('form_mode');
        $user_id=$this->input->post('user_id');
        $email=$this->input->post('email');

        $explode=explode('@', $email);
        $username=array_shift($explode).$unique_id;

        $password=$this->input->post('password');
        $full_name=$this->input->post('full_name');
        $telephone=$this->view_telephone($this->input->post('telephone'), false);
        $birth_date=$this->input->post('birth_date');
        $gender=$this->input->post('gender');
        $when_register=date('Y-m-d H:i:s');
        $last_update=date('Y-m-d H:i:s');
        $address_id=$this->input->post('address_id');

        $where=array(
            'username' => $username,
        );

        $email_check = $this->check_data('user',$where)->row();

        $where=array(
            'telephone' => $telephone,
        );

        $telephone_check = $this->check_data('user',$where)->row();

        if(count($email_check)>0 && count($telephone_check)>0){
            if(count($email_check)>0){
                $error_email='Email already exist';
                $this->session->set_flashdata('error_email', $this->alert_text_color('red', 'icon-info', $error_email));
            }
            if(count($telephone_check)>0){
                $error_telephone='Telephone already exist';
                $this->session->set_flashdata('error_telephone', $this->alert_text_color('red', 'icon-info', $error_telephone));
            }
            redirect($this->agent->referrer());
        }else{

            $param=array(
                'user_id' => $user_id,
                'username' => $username,
                'email' => $email,
                'password' => $password,
                'full_name' => $full_name,
                'telephone' => $telephone,
                'birth_date' => $birth_date,
                'gender' => $gender,
                'when_register' => $when_register,
                'last_update' => $last_update,
                'address_id' => $address_id,
                'account_key' => $account_key,
            );

            if($form_mode=='edit'){
                $this->crud_model->update('user', 'user_id', $user_id, $param);
            }else{

                $this->crud_model->insert('user', $param);
                $user_id=$this->db->insert_id();

                $param = array(
                    'user_id' => $user_id,
                    'address' => $this->input->post('address'),
                    'kecamatan_id' => $this->input->post('kecamatan_id'),
                    'city_id' => $this->input->post('city_id'),
                    'province_id' => $this->input->post('province_id'),
                    'country' => $this->input->post('country'),
                );

                $this->user_model->add_address($param);
                $address_id=$this->db->insert_id();

                $param = array(
                    'address_id' => $address_id,
                );

                $this->crud_model->update('user', 'user_id', $user_id, $param);

            }

            $message='User added';
        }

    }

    public function updateProfile(){

        $this->load->model('user_model');
        $this->load->model('crud_model');
        $this->load->helper('string');

        $user_id=$this->input->post('user_id');

        $username=$this->input->post('username');
        $full_name=$this->input->post('full_name');
        $telephone=$this->view_telephone($this->input->post('telephone'), false);
        $birth=$this->input->post('birth');
        $gender=$this->input->post('gender');
        $when_register=date('Y-m-d H:i:s');
        $last_update=date('Y-m-d H:i:s');

        $where=array(
            'telephone' => $telephone,
        );

        $telephone_check = $this->check_data('user',$where)->row();

        if(count($telephone_check)>1){
            $error_telephone='Telephone already exist';
            $this->session->set_flashdata('error_telephone', $this->alert_text_color('red', 'icon-info', $error_telephone));
            redirect($this->agent->referrer());
        }else {

            $param=array(
                'user_id' => $user_id,
                'username' => $username,
                'full_name' => $full_name,
                'telephone' => $telephone,
                'birth' => $birth,
                'gender' => $gender,
                'when_register' => $when_register,
                'last_update' => $last_update,
            );


            $this->crud_model->update('user', 'user_id', $user_id, $param);


            $message= '
            <div class="userProfile" style="padding-top: 10px">
                <div class="innerWrapper text-center no-margin no-border no-padding">
                    <div class="clearfix">
                        <i class="icon-check" style="font-size: 50px;color: #a2c403"></i>
                        <h3 style="margin-top: 25px">Update Sukses!</h3>
                        <p style="margin-bottom: 10px">Profil Anda berhasil diperbarui</p>
                        <button data-dismiss="modal" class="btn btn-lg btn-primary-filled btn-pill no-text-transform">OK</button>
                        <br>
                        <br>
                    </div>
                </div>
            </div>';

            $this->session->set_flashdata('user_message', $this->alert_modal($message));


        }

        redirect($this->agent->referrer());

    }

    public function updateAddress(){

        $this->load->model('user_model');
        $this->load->model('crud_model');

        $address_id=$this->input->post('address_id');
        $user_id=$this->session->userdata('login_user_id');
        $address=$this->input->post('address');
        $kelurahan_id=$this->input->post('kelurahan_id');
        $kecamatan_id=$this->input->post('kecamatan_id');
        $city_id=$this->input->post('city_id');
        $province_id=$this->input->post('province_id');
        $country=$this->input->post('country');
        $address_name=$this->input->post('address_name');

        $when_post=date('Y-m-d H:i:s');
        $last_update=date('Y-m-d H:i:s');

        $param=array(
            'address_id' => $address_id,
            'user_id' => $user_id,
            'address' => $address,
            'kelurahan_id' => $kelurahan_id,
            'kecamatan_id' => $kecamatan_id,
            'city_id' => $city_id,
            'province_id' => $province_id,
            'country' => $country,
            'address_name' => $address_name,
            'last_update' => $last_update,
            'when_post' => $when_post,
            'address_status' => 1,
        );


        $this->crud_model->update('address', 'address_id', $address_id, $param);

        redirect($this->agent->referrer());

    }

    public function addAddress(){

        $this->load->model('user_model');
        $this->load->model('crud_model');

        $address_id=$this->input->post('address_id');
        $user_id=$this->session->userdata('login_user_id');
        $address=$this->input->post('address');
        $kelurahan_id=$this->input->post('kelurahan_id');
        $kecamatan_id=$this->input->post('kecamatan_id');
        $city_id=$this->input->post('city_id');
        $province_id=$this->input->post('province_id');
        $country=$this->input->post('country');
        $address_name=$this->input->post('address_name');

        $when_post=date('Y-m-d H:i:s');
        $last_update=date('Y-m-d H:i:s');

        $param=array(
            'address_id' => $address_id,
            'user_id' => $user_id,
            'address' => $address,
            'kelurahan_id' => $kelurahan_id,
            'kecamatan_id' => $kecamatan_id,
            'city_id' => $city_id,
            'province_id' => $province_id,
            'country' => $country,
            'address_name' => $address_name,
            'last_update' => $last_update,
            'when_post' => $when_post,
            'address_status' => 1,
        );


        $this->crud_model->insert('address', $param);

        $message= '
            <div class="userProfile" style="padding-top: 10px">
                <div class="innerWrapper text-center no-margin no-border no-padding">
                    <div class="clearfix">
                        <i class="icon-check" style="font-size: 50px;color: #a2c403"></i>
                        <h3>Congratulation!</h3>
                        <p style="margin-bottom: 10px">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis turpis nunc, ultrices malesuada arcu euismod a</p>
                        <button data-dismiss="modal" class="btn btn-lg btn-primary-filled btn-pill no-text-transform">Ok, Go It</button>
                        <br>
                        <br>
                    </div>
                </div>
            </div>';

        $this->session->set_flashdata('user_message', $this->alert_modal($message));

        redirect($this->agent->referrer());

    }

    public function deleteAddress(){

        $this->load->model('user_model');
        $this->load->model('crud_model');

        $address_id=$this->input->post('id');
        $last_update=date('Y-m-d H:i:s');

        $param=array(
            'address_status' => -1,
            'last_update' => $last_update,
        );

        $this->crud_model->update('address', 'address_id', $address_id, $param);

    }

    public function uploadImage() {
        //$this->is_logged();

        $this->load->model('crud_model');

        $param_id=$this->input->post('user_id');

        $this->load->helper('string');
        $unique_id=random_string('alnum', 4);

        $original_file_extension = strtolower(pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION));

        $new_file_name=$unique_id.'_img_user_'.$param_id.'.'.$original_file_extension;

        //header('Content-Type: application/json');
        $config['upload_path']   = 'assets/img/users/';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size']      = 1024;
        $config['file_name']     = $new_file_name;
        $config['overwrite']     = TRUE;

        $this->load->library('upload', $config);
        $this->upload->initialize($config);

        if ($this->upload->do_upload('image'))
        {

            //delete old photos
            $param=array(
                'user_id' => $param_id,
            );

            $file = $this->check_data('user',$param)->row();
            $old_file=$file->photo;

            if($old_file!=''){
                if(file_exists($config['upload_path'].$old_file)){
                    unlink($config['upload_path'].$old_file);
                }
            }

            //----//

            //upload file
            $data=array('upload' => $this->upload->data());

            //update file name @database
            $param=array(
                'photo' => $new_file_name,
            );

            $this->crud_model->update('user', 'user_id', $param_id, $param);

            $respond=1;
        }
        else
        {

            $respond=$this->upload->display_errors();

        }

        echo $respond;


    }

    public function postSubscribe(){

        $secret_key='6LemORkUAAAAAOW_xMpxD8d1_3_majh8sZtSn38r';
        $g_recaptcha_response=$this->input->post('g-recaptcha-response');
        $submit=$this->input->post('submit');

        $this->load->model('user_model');
        $this->load->model('crud_model');

        $email=$this->input->post('email');
        $when_added=date('Y-m-d H:i:s');
        $last_update=date('Y-m-d H:i:s');

        $where_email=array(
            'email' => $email,
        );

        $email_check = $this->check_data('user',$where_email)->row();

        if($submit=='g-recaptcha'){
            if($g_recaptcha_response){
                $api_url = 'https://www.google.com/recaptcha/api/siteverify?secret='.$secret_key.'&response='.$g_recaptcha_response;
                $response = @file_get_contents($api_url);
                $data = json_decode($response, true);

                if($data['success']==1){

                    if(count($email_check)>0){

                        if($email_check->is_subscribe==0){
                            $param=array(
                                'last_update' => $last_update,
                                'when_subscribe' => $when_added,
                                'is_subscribe' => 1,
                            );
                            $this->crud_model->update('user', 'email', $email, $param);
                        }

                    }else{

                        $param=array(
                            'email' => $email,
                            'when_added' => $when_added,
                            'when_subscribe' => $when_added,
                            'last_update' => $last_update,
                            'is_subscribe' => 1,
                            'added_from' => 'subscribe',
                        );

                        $this->crud_model->insert('user', $param);

                    }

                    if(IS_ONLINE==1){
                        //FOR USER
                        $this->send_mail(
                            OFFICIAL_MAIL,
                            APPNAME,
                            $email,
                            'Berlangganan '.APPNAME,
                            $this->email_account('subscribe', '', '', '', 'user')
                        );

                        //FOR ADMIN
                        $this->send_mail(
                            OFFICIAL_MAIL,
                            APPNAME,
                            OFFICIAL_MAIL,
                            'Berlangganan '.APPNAME,
                            $this->email_account('subscribe', '', '', '', 'admin')
                        );
                    }

                    $success = 1;
                }
                else
                {
                    $success = 0;
                }
            }
            else
            {
                $success = 0;
            }

        }else{
            if(count($email_check)>0){
                if($email_check->is_subscribe==0){
                    $param=array(
                        'last_update' => $last_update,
                        'when_subscribe' => $when_added,
                        'is_subscribe' => 1,
                    );

                    $this->crud_model->update('user', 'email', $email, $param);
                }
            }else{
                $param=array(
                    'email' => $email,
                    'when_added' => $when_added,
                    'last_update' => $last_update,
                    'when_subscribe' => $when_added,
                    'is_subscribe' => 1,
                    'added_from' => 'subscribe',
                );

                $this->crud_model->insert('user', $param);
            }

            if(IS_ONLINE==1){
                //FOR USER
                $this->send_mail(
                    OFFICIAL_MAIL,
                    APPNAME,
                    $email,
                    'Berlangganan '.APPNAME,
                    $this->email_account('subscribe', '', '', '', 'user')
                );

                //FOR ADMIN
                $this->send_mail(
                    OFFICIAL_MAIL,
                    APPNAME,
                    OFFICIAL_MAIL,
                    'Berlangganan '.APPNAME,
                    $this->email_account('subscribe', '', '', '', 'admin')
                );
            }
            $success = 1;
        }

        echo $success;

    }

}