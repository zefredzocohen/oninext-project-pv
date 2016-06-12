<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_user extends CI_Model {
    var $table = 'people';
    var $key = 'person_id';
    public function __construct()
	{
		parent::__construct();
	}
	public function loadlist(){
		$query = $this->db->get($this->table);
		
		$result =  $query->result_array();
		return $result;
	}
	public function show(){
		$query = $this->db->get($this->table);
		$result =  $query->result_array();
		return $result;
	}
	public function add(){
		$this->db->select("*");
	}
	public function update($id){
		$this->db->select("*");
		$this->db->where($this->key,$id);
		$query = $this->db->get($this->table);
		$result =  $query->result_array();
		return $result;
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