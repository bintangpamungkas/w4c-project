<?php

/**
 * Created by PhpStorm.
 * User: Dellicious
 * Date: 12/13/2016
 * Time: 3:56 PM
 */
class Company_model extends CI_Model
{
    function company($data=null){
        if($data!=''){
            $this->db->select($data);
        }
        $this->db->from(PREFIX_TABLE.'company company');
        $query = $this->db->get();
        return $query->row();
    }


}