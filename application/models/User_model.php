<?php
/**
 * Created by PhpStorm.
 * User: Dellicious
 * Date: 11/10/2016
 * Time: 3:12 PM
*/
class User_model extends CI_Model
{
    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }

    function users($limit=null, $month=NULL, $year=NULL, $search=NULL){
        $this->db->from(PREFIX_TABLE.'user user');
        if($month!=''){
            $this->db->where('MONTH(when_register)='.$month);
        }
        if($year!=''){
            $this->db->where('YEAR(when_register)='.$year);
        }
        if($search!=''){
            $this->db->where('name LIKE "%'.$search.'%" OR email LIKE "%'.$search.'%" OR telephone LIKE "%'.$search.'%"');
        }
        $this->db->limit($limit);
        $this->db->order_by('user.user_id', 'DESC');
        $query = $this->db->get();
        return $query->result();
    }

    function detail($field, $param){
        $this->db->from(PREFIX_TABLE.'user user');
        $this->db->where('user.'.$field, $param);
        $query = $this->db->get();
        return $query->row();
    }

    function addresses($param){
        $this->db->select('*');
        $this->db->select('address.address_id address_id');
        $this->db->from(PREFIX_TABLE.'address address');
        $this->db->join(PREFIX_TABLE.'place_kelurahan kelurahan', 'kelurahan.kelurahan_id = address.kelurahan_id', 'left');
        $this->db->join(PREFIX_TABLE.'place_kecamatan kecamatan', 'kecamatan.kecamatan_id = kelurahan.kecamatan_id', 'left');
        $this->db->join(PREFIX_TABLE.'place_city city', 'city.city_id = kecamatan.city_id', 'left');
        $this->db->join(PREFIX_TABLE.'place_province province', 'province.province_id = city.province_id', 'left');
        $this->db->where('address.user_id', $param);
        $this->db->where('address_status', 1);
        $query = $this->db->get();
        return $query->result();
    }

    function address($address_id){
        $this->db->from(PREFIX_TABLE.'address address');
        $this->db->join(PREFIX_TABLE.'place_province province', 'province.province_id = address.province_id', 'left');
        $this->db->join(PREFIX_TABLE.'place_city city', 'city.city_id = address.city_id', 'left');
        $this->db->join(PREFIX_TABLE.'place_kecamatan kecamatan', 'kecamatan.kecamatan_id = address.kecamatan_id', 'left');
        $this->db->join(PREFIX_TABLE.'place_kelurahan kelurahan', 'kelurahan.kelurahan_id = address.kelurahan_id', 'left');
        $this->db->where('address_id', $address_id);
        $query = $this->db->get();
        return $query->row();
    }

}
?>