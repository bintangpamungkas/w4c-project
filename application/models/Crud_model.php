<?php
/**
 * Created by PhpStorm.
 * User: Dellicious
 * Date: 11/10/2016
 * Time: 3:12 PM
*/
class CRUD_model extends CI_Model
{
    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }

    function insert($table, $param){
        return $this->db->insert(PREFIX_TABLE.$table,$param);
    }

    function update($table, $field, $value, $param){
        $this->db->where($field, $value);
        return $this->db->update(PREFIX_TABLE.$table,$param);
    }

    function delete($table, $param){
        return $this->db->delete(PREFIX_TABLE.$table, $param);
    }

    function select($table, $where=null, $join=null){
        $this->db->from(PREFIX_TABLE.$table);
        foreach ($join as $module=>$array) {
            foreach ($array as $param2=>$value2){
                $this->db->join(PREFIX_TABLE.$param2.' '.$param2, $param2.'.'.$value2.'= '.$module.'.'.$value2, 'left');
            }
        }
        foreach ($where as $param=>$value) {
            $this->db->where($param, $value);
        }
        $query = $this->db->get();
        return $query->result();
    }

}
?>