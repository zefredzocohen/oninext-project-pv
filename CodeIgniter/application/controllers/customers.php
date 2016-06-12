<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Customers extends CI_Controller {
	 var $_data;
	public function __construct(){
		parent::__construct();
		$this->load->model("m_user");
                $this->load->model('m_items');
                $this->load->model('m_customers');
                $this->load->model('m_sales');
		$_data=array(
			'subview'		=>	'user/index_view',
			'header'		=>	'layout/header',
			'footer'		=>	'layout/footer',
			'select-menu'	=>	'active',
			'css'			=>	'asset/css/user.css',
			'hidden-data'	=>	'false'
			);
		$this->_data=$_data;
	}
        
        public function checkuser(){
		if(!$this->session->userdata('user_name')){
			return false;
		}
		else return true;
	}
	public function index()
	{
            $list_customer = $this->m_items->get_list_customer();
            $sum_record = $list_customer->num_rows();
            $data['manage_table'] =  get_people_manage_table($list_customer, $sum_record>0?$sum_record:0, $this);
		if(!$this->checkuser())redirect(base_url()."authentication/index");
		$data_contain = array(
			'id'                =>		$this->session->userdata('id'),
			'username'          =>		$this->session->userdata('username'),
			'email'             =>		$this->session->userdata('email'),
			'password'          =>		$this->session->userdata('password'),
			'level'             =>		$this->session->userdata('level'),
			);
		$data['data'] = array(
			'title'             =>		'Trang quản trị',
			'page_title'        =>		'bảng chức năng',
			'data_contain'      =>		$data_contain,
			'sidebar'           =>		'Dashboard-active',
			'template'          =>		'user/index_view'
			);
		$this->load->view('user/main',$data);
	}

	public function authentication(){
		$islogin = $_POST['islogin'];
		$user = isset($_POST['user'])&&trim($_POST['user'])!=''?trim($_POST['user']):'';
		$pass = $_POST['pass']&&trim($_POST['pass'])!=''?  md5(trim($_POST['pass'])):'';
		$isRemem = $_POST['isRemember'];
		$data_result = array();
		// redirect('/login/form/');exit();
		if($islogin==true){
			// echo '1234';exit();
			$_getdata= $this->m_user->checkuser($user,$pass);
			if(count($_getdata)==0){
				$data_result['user_login']=false;
				$data_result["info_error"]="tài khoản hoặc pass ko đúng";
			}
			else {
					$data_result = array_merge(['user_login'=>true],$_getdata[0]);
					$this->session->set_userdata($_getdata[0]);
					echo json_encode($data_result);
					exit();
				}
			echo json_encode($data_result);exit();
		}else echo 'no data ajax';
		exit();
	}
	public function test(){
		echo '<br/>'.base_url();die();
		// $data = $this->session->all_userdata();
		$data_contain = array(
			'id'					=>		$this->session->userdata('id'),
			'username'				=>		$this->session->userdata('username'),
			'email'					=>		$this->session->userdata('email'),
			'password'				=>		$this->session->userdata('password'),
			'level'					=>		$this->session->userdata('level'),
			);
		$data = array(
			'title'					=>		'Trang quản trị',
			'page_title'			=>		'bảng chức năng',
			'data_contain'			=>		$data_contain,
			'sidebar'				=>		'Dashboard-active',
			'template'				=>		'user/index_view'

			);
		$this->load->view('user/main',$data);
	}
	public function detail_customer_sale($customer_id=-1){
            if(!$this->checkuser())redirect(base_url()."authentication/index");
            if($customer_id>0){
                $list_customer = $this->m_customers->getListCustomerSales($customer_id);
                $sale_for_customer = $this->m_sales->getSale($customer_id)->result_array();
                $sum_record = count(explode(',', $sale_for_customer[0]['items_id']));
//                pre($this->m_sales->getSale($customer_id)->result_array());die;
                $data['manage_table'] =  get_customer_manage_table($list_customer, $sum_record>0?$sum_record:0, $this);
                    $data_contain = array(
                            'id'                =>		$this->session->userdata('id'),
                            'username'          =>		$this->session->userdata('username'),
                            'email'             =>		$this->session->userdata('email'),
                            'password'          =>		$this->session->userdata('password'),
                            'level'             =>		$this->session->userdata('level'),
                            );
                    $data['data'] = array(
                            'title'             =>		'Trang quản trị',
                            'page_title'        =>		'bảng chức năng',
                            'data_contain'      =>		$data_contain,
                            'sidebar'           =>		'Dashboard-active',
                            'template'          =>		'customers/index_view'
                            );
                    $this->load->view('user/main',$data);
            }
	}
        
        public function get_form_width(){
            return 550;
        }

}

/* End of file user.php */
/* Location: ./application/controllers/user.php */