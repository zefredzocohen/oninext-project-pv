<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Authentication extends CI_Controller {
	public function __construct(){
            parent::__construct();
	}
	public function index(){
            $this->islogin();
            $data = array(
                'meta-title'    =>	'login',
                'active'        =>	'admin_active',
                'template'      =>	'authentication/login',
                    );
            $this->load->view('authentication/index',$data);
	}
	public function islogin(){
		if($this->session->userdata("username")){
			redirect(base_url().'user/index');
		}
	}

}

/* End of file authentication.php */
/* Location: ./application/controllers/authentication.php */