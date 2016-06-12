
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>login page </title>
	<link rel="stylesheet" href="<?php echo base_url().'public/css/font-awesome.min.css';?>">
	<link rel="stylesheet" href="<?php echo base_url().'public/css/bootstrap.min.css';?>">
	<link rel="stylesheet" href="<?php echo base_url().'public/css/awesome-bootstrap-checkbox.css';?>">
	<link rel="stylesheet" href="<?php echo base_url().'public/css/style.css';?>">
        <script type="text/javascript">
            var base_url = '<?php echo base_url();?>';
        </script>
</head>

<body>
	
	<div class="login-page bk-img" style="background-image: url(<?php echo base_url().'public/img/login-bg.jpg';?>);">
		<div class="form-content">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<h1 class="text-center text-bold text-light mt-4x">Sign in</h1>
						<div class="well row pt-2x pb-3x bk-light">
							<div class="col-md-8 col-md-offset-2">
								<div class="error"></div>
								<form action="" method="POST" data-toggle="validator" role="form" class="mt" id="mt" >

									<label for="" class="text-uppercase text-sm">Your Username or Email</label>
									<input type="text" name="name" id="form-control-text" placeholder="Username" class="form-control mb required">
									<p id = "p1"></p>
									<label for="" class="text-uppercase text-sm">Password</label>
									<input type="password" name="password" id="form-control-pass" placeholder="Password" class="form-control mb required">
									<p id = "p2"></p>
									<div class="checkbox checkbox-circle checkbox-info">
										<input id="checkbox7" name "checkbox" type="checkbox" checked aria-label="Checkbox for following text input">
										<label for="checkbox7">
											Keep me signed in
										</label>
									</div>

									<button class="btn btn-primary btn-block" id="btn-submit" type="submit">LOGIN</button>

								</form>
							</div>
						</div>
						<div class="text-center text-light">
							<a href="#" class="text-light">Forgot password?</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Loading Scripts -->
	<script src="<?php echo base_url().'public/js/jquery-1.12.4.min.js';?>"></script>
	<script src="<?php echo base_url().'public/js/bootstrap.min.js';?>"></script>
	<script src="<?php echo base_url().'public/js/jquery.validate.min.js';?>"></script>
	<script src="<?php echo base_url().'public/js/jquery.validation.js';?>"></script>
<!-- jquery.validate.min.js -->

</body>

</html>