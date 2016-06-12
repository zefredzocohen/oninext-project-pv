<div class="brand clearfix">
	<a href="<?php echo base_url()."user/index";?>" class="logo"><img src="<?php echo base_url().'public/img/logo.jpg';?>" class="img-responsive" alt=""></a>
	<span class="menu-btn"><i class="fa fa-bars"></i></span>
	<ul class="ts-profile-nav">
		<li><a href="#">Help</a></li>
		<li><a href="#">Settings</a></li>
		<li class="ts-account">
			<a href="#"><img src="<?php echo base_url().'public/img/ts-avatar.jpg';?>" class="ts-avatar hidden-side" alt=""> Account <i class="fa fa-angle-down hidden-side"></i></a>
			<ul>
				<li><a href="<?php echo base_url().'user/show_myaccount'?>">My Account</a></li>
				<li><a href="#">Edit Account</a></li>
				<li><a href="<?php echo base_url()."user/logout";?>">Logout</a></li>
			</ul>
		</li>
	</ul>
</div>