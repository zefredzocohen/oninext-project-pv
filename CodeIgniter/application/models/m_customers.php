<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_customers extends CI_Model {
    var $table = 'people';
    var $key = 'person_id';
    public function __construct()
	{
		parent::__construct();
	}
        public function getListCustomerSales($customer_id){
            $this->db->from('sales');
            $this->db->join('people','people.person_id = sales.customer_id');
            $this->db->where('sales.customer_id',"$customer_id");
            return $this->db->get();
        }

}

/* End of file muser.php */
/* Location: ./application/models/muser.php */