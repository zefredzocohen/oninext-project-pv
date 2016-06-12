<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User extends CI_Controller {
	 var $_data;
	public function __construct(){
		parent::__construct();
		$this->load->model("m_user");
                $this->load->model('m_items');
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
	public function show(){
		// echo 'function show';die();
		$this->load->model('muser');
		$data_view = $this->muser->show();
		$_data=array(
			'titlePage'		=>	'show page user',
			'select-menu'	=>	'active',
			'contain'		=>	$data_view
			);
		$this->_data=array_merge($this->_data,$_data);
		$this->load->view('user/main',$this->_data);

	}
	public function add(){
		$this->load->model('muser');
		$data_view = $this->muser->add();

	}
	public function update(){
		$_id = $this->input->get("id",true);
		$this->load->model('muser');
		$data_view = $this->muser->update($_id);
		$_data=array(
			'titlePage'		=>	'update page user',
			'select-menu'	=>	'active',
			'contain'		=>	$data_view
			);
		$this->_data=array_merge($this->_data,$_data);
		$this->load->view('user/main',$this->_data);

	}
	public function dell(){
		$this->load->model('muser');
		$data_view = $this->muser->dell();

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
	public function show_detail(){
		$data_contain = $this->muser->loadlist();
		$data = array(
			'page_title'			=>		'thông tin cá nhân',
			'data_contain'			=>		$data_contain,
			'sidebar'				=>		'Dashboard-active',
			'template'				=>		'user/list_user',
			'type'					=>		'2',
			);
		$_data['data']=$data;
		$this->load->view('user/main',$_data);
	}

	public function show_test(){
		$data_contain = $this->muser->loadlist();
		$data = array(
			'page_title'			=>		'th ông tin cá nhân',
			'data_contain'			=>		$data_contain,
			'sidebar'				=>		'Dashboard-active',
			'template'				=>		'user/list_user'
			);
		$_data['data']=$data;
		$this->load->view('user/main',$_data);
	}

	public function checkuser(){
		if(!$this->session->userdata('user_name')){
			return false;
		}
		else return true;
	}
	public function show_myaccount(){
		// echo 'show_myaccount';
		// echo $this->session->userdata('id');die();
		// if(!$this->checkuser())redirect(base_url()."authentication/index");
		$data_contain = array(
			'id'					=>		$this->session->userdata('id'),
			'username'				=>		$this->session->userdata('username'),
			'email'					=>		$this->session->userdata('email'),
			'password'				=>		$this->session->userdata('password'),
			'level'					=>		$this->session->userdata('level'),
			);
		$data['data'] = array(
			'title'					=>		'Trang quản trị',
			'page_title'			=>		'bảng chức năng',
			'data_contain'			=>		$data_contain,
			'sidebar'				=>		'Dashboard-active',
			'template'				=>		'user/list_user',
			'type'					=>		'1'

			);
		$this->load->view('user/main',$data);
	}


	public function add_new_user(){
		$data_contain = array(
			'id'					=>		$this->session->userdata('id'),
			'username'				=>		$this->session->userdata('username'),
			'email'					=>		$this->session->userdata('email'),
			'password'				=>		$this->session->userdata('password'),
			'level'					=>		$this->session->userdata('level'),
			);
		$data['data'] = array(
			'title'					=>		'Trang quản trị',
			'page_title'			=>		'bảng chức năng',
			'data_contain'			=>		$data_contain,
			'sidebar'				=>		'Dashboard-active',
			'template'				=>		'user/add_new_user',
			'type'					=>		'1'

			);
		$this->load->view('user/main',$data);
	}

	public function logout(){
		$this->session->sess_destroy();
		redirect(base_url().'authentication');
	}

	public function register_user(){
		// isregister:true,user:username,pass:password,email:email
		$isregister = $_POST['isregister'];
		$user = $_POST['user'];
		$pass = $_POST['pass'];
		$email = $_POST['email'];
		$level = $_POST['level'];
		$data_result = array();
		if($isregister==true&&$user!=''&&$pass!=''&&$email!=''&&$level!=''){
			$data=array(
			"username"			=>		$user,
			"password"			=>		$pass,
			"email"				=>		$email,
			"level"				=>		$level,

			);
		// $this->db->insert("user",$data);
		$data_result['user_register'] = true;
		echo json_encode($data_result);exit();
		}else{
			$data_result['user_register'] = false;
			echo json_encode($data_result);exit();
		}
		exit();
		// echo "yes";die();
		
		// redirect(base_url()."user/show_detail");
		// echo '<br/>'.$username;
		// echo '<br/>'.$pass;
		// echo '<br/>'.$email;
		// echo '<br/>'.$level;

	}

	public function check_upload($file){
		$file_type = $_FILES['foreign_character_upload']['type']; //returns the mimetype

		$allowed = array("image/jpeg", "image/gif", "application/pdf");
		if(!in_array($file_type, $allowed)) {
		  $error_message = 'Only jpg, gif, and pdf files are allowed.';
		  $error = 'yes';
		}
	}
	
        public function get_form_width(){
            return 550;
        }

}

/* End of file user.php */
/* Location: ./application/controllers/user.php */