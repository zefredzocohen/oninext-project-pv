$(document).ready(function() {
	$('#mt').validate({
	    rules:{
			'name':{
				required:true,
			},
			"password":{
				required:true,
			}
		},
		messages:{
			'name':{
				required:'name not empty',
			},
			"password":{
				required:'password not empty',
			}
		},
	    submitHandler: function(form) {
			var username = $('#form-control-text').val().trim();
			var password = $('#form-control-pass').val().trim();
			var isRemember = $('#checkbox7:checked').val();
			if(typeof isRemember == "undefined") isRemember = "off";
	        $.ajax({
	            url: base_url+'user/authentication',
	            type: form.method,
	            data: {islogin:true,user:username,pass:password,isRemember:isRemember},
	            success: function(response) {
	            	// alert(response);
//                        console.log(response);return false;
	    			var result = jQuery.parseJSON(response);
					console.log(result.user_login);
					if(result.user_login)window.location = base_url+'user/index';
					else{
						 alert(response);return false;
						$('.error').html(result.info_error);
						$("#form-control-pass").val("");
					}
	            }            
	        });
	    }
	});

	$('#form-submit').validate({
	    rules:{
			'anuname':{
				required:true,
				minlength: 4,
			},
			"anupass":{
				required:true,
			},
			"anuemail":{
				required:true,
			},
		},
		messages:{
			'anuname':{
				required:'name not empty',
				minlength:'min độ dài là 4',
			},
			"anupass":{
				required:'pass not empty',
			},
			"anuemail":{
				required:'email ko đúng',
			},
		},
	    submitHandler: function(form) {
			var username = $('#form-control-text').val().trim();
			var password = $('#form-control-pass').val().trim();
			var email = $('#form-control-email').val().trim();
			var level = $('select[name="level"]').val();
	        $.ajax({
	            url: base_url+'user/register_user',
	            type: form.method,
	            data: {isregister:true,user:username,pass:password,email:email,level:level},
	            success: function(response) {
                        var result = jQuery.parseJSON(response);
                        console.log(result.user_register);
                        if(result.user_register)window.location = base_url+'user/show_detail';
                        else{
                                $('.error').html(result.info_error);
                                $("#form-control-pass").val("");
                        }
	            }            
	        });
	    }
	});
});