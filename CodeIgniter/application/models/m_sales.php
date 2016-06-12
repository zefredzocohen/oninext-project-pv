<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_sales extends CI_Model {
    var $table = 'sales';
    var $key = 'sale_id';
    public function __construct()
	{
		parent::__construct();
	}
        public function getSale($cutomer_id){
            $this->db->where('customer_id',$cutomer_id);
            return $this->db->get($this->table);
        }

        public function dell(){
		
	}
	public function checkuser($_user,$_pass){
		$this->db->select('*');
		$this->db->where('user_name',$_user);
		$this->db->where('password',$_pass);
		$query = $this->db->get($this->table);
		$result = $query->result_array();
		return $result;
	}

}

/* End of file muser.php */
/* Location: ./application/models/muser.php */