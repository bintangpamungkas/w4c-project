<?php

/**
 * Created by PhpStorm.
 * User: Dellicious
 * Date: 12/13/2016
 * Time: 3:56 PM
 */
class Account_model extends CI_Model
{
    function user_login_session($table, $field, $param){
        $this->db->from(PREFIX_TABLE.$table.' user');
        $this->db->where('user.'.$field, $param);
        $query = $this->db->get();
        return $query->row();
    }

}