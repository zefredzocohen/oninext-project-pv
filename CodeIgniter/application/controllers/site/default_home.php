<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Default_home extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('m_items');
    }

    public function index() {
        $data['template'] = 'site/index/index';
        $list_customer = $this->m_items->get_list_customer();
        $sum_record = $list_customer->num_rows();
        $data['manage_table'] =  get_people_manage_table($list_customer, $sum_record>0?$sum_record:0, $this);
        $this->load->view('site/layout', $data);
    }


    public function search() {
        $item_id='';
        $checkin = '';
        $checkout = '';
        $product = '';
        
        if(isset($_POST['product'])&&trim($_POST['product'])==''&&
        isset($_POST['checkin'])&& trim($_POST['checkin'])==''&&
        isset($_POST['checkout'])&&trim($_POST['checkout'])=='') 
        {
            echo json_encode(array(
                'url'=> base_url().'user/index',
            ));
            exit();
        }
        if(isset($_POST['product'])&&(trim($_POST['product'])!=''))$product = trim($_POST['product']);
        if(isset($_POST['checkin'])&&(trim($_POST['checkin'])!=''))$checkin = trim($_POST['checkin']);
        if(isset($_POST['checkout'])&&(trim($_POST['checkout'])!=''))$checkout = trim($_POST['checkout']);
        $special = $this->get_special(vn_str_filter($product));
        if($special==1){
            if($checkin!=''){
                if(date('d-m-Y',strtotime($checkin)))$checkin=  date('Y-m-d',strtotime($checkin)); ;
            }
            if($checkout!=''){
                if(date('d-m-Y',strtotime($checkout)))$checkout=  date('Y-m-d',strtotime($checkout)); ;
            }
            $search_data = $this->m_items->search($product,$checkin,$checkout,$special);
//            echo json_encode($search_data->result_array());
//            echo $this->db->last_query();
//            exit();
        }elseif ($special==2) {
            if($checkin!=''){
                if(date('d-m-Y',strtotime($checkin)))$checkin=  date('Y-m-d',strtotime($checkin)); ;
            }
            if($checkout!=''){
                if(date('d-m-Y',strtotime($checkout)))$checkout=  date('Y-m-d',strtotime($checkout)); ;
            }
            $search_data = $this->m_items->search($product,$checkin,$checkout,$special);
//            echo $this->db->last_query();
//            echo json_encode($search_data->result_array());
//            exit();
        }else{
            if($checkin!=''){
                if(date('d-m-Y',strtotime($checkin))) $checkin=  date('Y-m-d',strtotime($checkin)); ;
            }
            if($checkout!=''){
                if(date('d-m-Y',strtotime($checkout)))$checkout=  date('Y-m-d',strtotime($checkout)); ;
            }
            $item_id = explode('-', $product)[1];
            $search_data = $this->m_items->search($item_id,$checkin,$checkout,$special);
//            echo $this->db->last_query();
//            echo json_encode($search_data->result_array());
//            exit();
        }
        $sum_record = $search_data->num_rows();
        $data['manage_table'] =  get_people_manage_table($search_data, $sum_record>0?$sum_record:0, $this);
        echo json_encode($data['manage_table']);
    }
    
    public function autocomplete(){
        $query = trim($_POST['query']);
        if($query !=NULL ){
            $item=$this->m_items->getItem(vn_str_filter($query));
        }
        if($item !=null &&count($item)>0){
            foreach ($item as $key =>$value){
                $result[$key] = $value['name'].'-'.$value['item_id'];
            }
            echo json_encode($result);
        }
        
    }
    //        $listItem = $this->m_items->getListItem();
//        foreach ($listItem as $key => $value){
//            $listName[$value['item_id']] = array('name'=>$value['name'],'name_ascii'=>vn_str_filter($value['name']));
//            
//        }
//        foreach ($listName as $key => $value){
//            $this->m_items->update_info($key,$value['name_ascii']);
//        }
    
    public function get_form_width(){
        return 500;
    }
    public function get_special($str){
        //trường hợp số
        if (preg_match('/^[0-9]+$/', $str)) $return = 2;
        // trường hợp hỗn hợp
        elseif(preg_match('/-/', $str))$return =3;
        // trường hợp chữ
        else $return = 1;
        return $return;
    }
}
