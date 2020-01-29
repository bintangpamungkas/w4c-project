<?php
/**
* Created by PhpStorm.
* User: Dellicious
* Date: 11/10/2016
* Time: 3:12 PM
*/
class Crud_model extends CI_Model
{
  function __construct()
  {
    // Call the Model constructor
    parent::__construct();
  }
  function insert($table, $param){
    return $this->db->insert(PREFIX_TABLE.$table,$param);
  }

  function create($table, $param){
    return $this->db->insert(PREFIX_TABLE.$table,$param);
  }

  function read($table, $where=null, $select=null,$order=null){
    if ($select != null) {
      $this->db->select($select);
    }else {
      $this->db->select('*');
    }
    $this->db->from(PREFIX_TABLE.$table);
    if ($where !=null) {
      $this->db->where($where);
    }
    if ($order !=null) {
      $this->db->order_by($order);
    }
    return $this->db->get();
  }

  function select($table,$query=null, $select=null, $where=null, $join_from=null, $order_by=null, $limit=null){
    if($select!=null){
      $this->db->select($select);
    }else{
      $this->db->select('*');
    }
    // $this->db->select($table.'.'.$table.'_id id');
    $this->db->from(PREFIX_TABLE.$table.' '.$table);
    if ($join_from!=null) {
      foreach ($join_from as $table_from=>$on) {
        foreach ($on as $table_to=>$on){
          $param=explode("=", $on,2);

          if (count($param)==1) {
            $this->db->join(PREFIX_TABLE.$table_to.' '.$table_to, $table_to.'.'.$param[0].'= '.$table_from.'.'.$param[0], 'left');
          }else{
            $this->db->join(PREFIX_TABLE.$table_to.' '.$table_to, $table_to.'.'.$param[0].'= '.$table_from.'.'.$param[1], 'left');
          }
        }
      }
    }
    if ($where!=null) {
      $this->db->where($where);
    }
    if($order_by!=null){
      foreach ($order_by as $key=>$value){
        $this->db->order_by($key.' '.$value);
      }
    }
    if ($limit!=null) {
      $this->db->limit($limit);
    }
    if ($query!=null) {
      return $this->db->get()->$query();
    }else {
      return $this->db->get()->result();
    }
  }

  function query($table, $where=null, $select=null){
    if ($select != null) {
      $this->db->select($select);
    }else {
      $this->db->select('*');
    }
    $this->db->from(PREFIX_TABLE.$table);
    if ($where !=null) {
      $this->db->where($where);
    }
    return $this->db->get_compiled_select();
  }

  function count($table, $where){
    $this->db->from(PREFIX_TABLE.$table);
    $this->db->where($where);
    return $this->db->count_all_results();
  }

  function update($table, $where, $data){
    $this->db->where($where);
    return $this->db->update(PREFIX_TABLE.$table,$data);
  }

  function delete($table, $where, $data){
    $this->db->where($where);
    return $this->db->update(PREFIX_TABLE.$table,$data);
  }

  function destroy($table, $data){
    return $this->db->delete(PREFIX_TABLE.$table, $data);
  }

}
?>
