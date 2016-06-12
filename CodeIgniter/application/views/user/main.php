<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	
	<title><?php echo isset($title)?$title:"trang quản trị" ;?></title>

	<!-- Font awesome -->
	<link rel="stylesheet" href="<?php echo base_url().'public/css/font-awesome.min.css';?>">
	<!-- Sandstone Bootstrap CSS -->
	<link rel="stylesheet" href="<?php echo base_url().'public/css/bootstrap.min.css';?>">
        
        <link rel="stylesheet" href="<?php echo base_url().'public/css/jquery-ui.min.css';?>">
        <link rel="stylesheet" href="<?php echo base_url().'public/css/jquery-ui.theme.min.css';?>">
        <link rel="stylesheet" href="<?php echo base_url().'public/css/datepicker.css';?>">
        <link rel="stylesheet" href="<?php echo base_url().'public/css/prettify-1.0.css';?>">
	<!-- Bootstrap Datatables -->
	<link rel="stylesheet" href="<?php echo base_url().'public/css/dataTables.bootstrap.min.css';?>">
	<!-- Bootstrap social button library -->
	<link rel="stylesheet" href="<?php echo base_url().'public/css/bootstrap-social.css';?>">
	<!-- Bootstrap select -->
	<link rel="stylesheet" href="<?php echo base_url().'public/css/bootstrap-select.css';?>">
	<!-- Bootstrap file input -->
	<link rel="stylesheet" href="<?php echo base_url().'public/css/fileinput.min.css';?>">
	<!-- Awesome Bootstrap checkbox -->
	<link rel="stylesheet" href="<?php echo base_url().'public/css/awesome-bootstrap-checkbox.css';?>">
	<!-- Admin Stye -->
	<link rel="stylesheet" href="<?php echo base_url().'public/css/style.css';?>">
        <script src="<?php echo base_url().'public/js/jquery-1.12.4.min.js';?>"></script>
        <script src="<?php echo base_url().'public/js/jquery-ui.min.js';?>"></script>
        <script src="<?php echo base_url().'public/js/moment.min.js';?>"></script>
        
	<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<?php $this->load->view('layout/header');
?>
<body>

	<div class="ts-main-content">
		<?php  $this->load->view('layout/sidebar');?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">
						<?php
						$data = isset($data['template'])?$data['template']:'errors/html/error_404';
						$this->load->view($data);
						?>
						</div>

					</div>
				</div>

			</div>
		</div>
	</div>


	<!-- Loading Scripts -->
	<script src="<?php echo base_url().'public/js/jquery-1.12.4.min.js';?>"></script>
        <script src="<?php echo base_url().'public/js/jquery-ui.min.js';?>"></script>
        <script src="<?php echo base_url().'public/js/moment.min.js';?>"></script>
        <script src="<?php echo base_url().'public/js/bootstrap-datetimepicker-1.js';?>"></script>
	<script src="<?php echo base_url().'public/js/bootstrap-select.min.js';?>"></script>
	<script src="<?php echo base_url().'public/js/bootstrap.min.js';?>"></script>
	<script src="<?php echo base_url().'public/js/jquery.dataTables.min.js';?>"></script>
	<script src="<?php echo base_url().'public/js/dataTables.bootstrap.min.js';?>"></script>
	<script src="<?php echo base_url().'public/js/Chart.min.js';?>"></script>
	<script src="<?php echo base_url().'public/js/fileinput.js';?>"></script>
	<script src="<?php echo base_url().'public/js/chartData.js';?>"></script>
	<script src="<?php echo base_url().'public/js/main.js';?>"></script>
	<script src="<?php echo base_url().'public/js/jquery.validate.min.js';?>"></script>
	<script src="<?php echo base_url().'public/js/jquery.validation.js';?>"></script>

</body>

</html>