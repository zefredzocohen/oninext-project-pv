<?php
	defined('BASEPATH') OR exit('No direct script access allowed');
	class M_items extends CI_Model
	{
            var $table = 'items';
            var $key   = 'item_id';
            public function __construct(){
                parent::__construct();
            }
            
            function getItem($query){
                $this->db->or_where($this->key,$query);
                $this->db->or_like('LOWER(name)',  strtolower($query));
                $this->db->limit(15);
                return $this->db->get($this->table)->result_array();
            }
            
            function getItem_ob($query){
                $this->db->or_where($this->key,$query);
                $this->db->limit(1);
                return $this->db->get($this->table);
            }
            function getListItem(){
                return $this->db->get($this->table)->result_array();
            }
            function update_info($id,$data){
                $this->db->where($this->key, $id);
                $this->db->update($this->table, array('name_ascii' => $data));
            }
            
            function get_list_customer(){
                return $this->db->query("SELECT * "
                                ." FROM `sales` "
                                . " join `people` on people.person_id= sales.customer_id  "
                                . " GROUP by `customer_id` ");
            }
            
            function search($item_id, $start_date, $end_date,$type){
                if($item_id !=''){
                    if($type>1){
                        $where_item_id = "("
                                        . " `items_id` = '".$item_id."' or "
                                        . " `items_id` like '".$item_id.",%' or "
                                        . " `items_id` like '%,".$item_id."' or "
                                        . " `items_id` like '%,".$item_id.",%' )";
                    }
                    else{
                        $where_item_id = "(";
                        $item_ids = $this->get_item_id_from_name($item_id);
                        $i = count($item_ids);
                        foreach ($item_ids as $key => $value){
                            $i--;
                             $where_item_id .= ""
                                        . " `items_id` = '".$value["item_id"]."' or "
                                        . " `items_id` like '".$value["item_id"].",%' or "
                                        . " `items_id` like '%,".$value["item_id"]."' or "
                                        . " `items_id` like '%,".$value["item_id"].",%' ";
                             if($i>0)$where_item_id.='or';
                        }
                        $where_item_id .= ")";
                        if($where_item_id =="")$where_item_id = '1';
                    }
                    if($start_date!=''){
                    $where_start_date = " and sale_time >= '".$start_date."'";
                    }else $where_start_date = '';
                    if($end_date!=''){
                        $where_end_date = " and sale_time <= '".$end_date."'";
                    }else $where_end_date = '';
                }else{
                    $where_item_id = " 1  ";
                    if($start_date!='' && $end_date !=''){
                    $where_start_date = " sale_time >= '".$start_date."'";
                    $where_end_date = " and sale_time <= '".$end_date."'";
                    }elseif ($start_date !='') {
                        $where_start_date = " and sale_time >= '".$start_date."'";
                        $where_end_date = '';
                    }elseif ($end_date !='') {
                        $where_start_date = '';
                        $where_end_date = " and sale_time <= '".$end_date."'";
                    } 
                }
                if($where_item_id ==''&&$where_start_date ==''&& $where_end_date =='')$where_item_id = '1';
                return $this->db->query("SELECT * "
                                ." FROM `sales` "
                                . " join `people` on people.person_id= sales.customer_id  WHERE $where_item_id $where_start_date $where_end_date"
                                . " GROUP by `customer_id` ");
            }
            function count_by_item_id(){
                
            }
            function get_item_id_from_name($strName){
                $this->db->like('LOWER(name_ascii)',  strtolower(vn_str_filter($strName)));
                $this->db->limit(15);
                return $this->db->get($this->table)->result_array();
            }
	}
?>