<form action="" method = "POST" data-toggle="validator" role="form" id="form-submit" enctype = "multipart/form-data">

	<label for="" class="text-uppercase text-sm">Your Username </label>
	<input name="anuname" type="text" id="form-control-text" placeholder="Username" class="form-control mb required">

	<label for="" class="text-uppercase text-smd">Password</label>
	<input name = "anupass" type="password" id="form-control-pass" placeholder="Password" class="form-control mb required">
	
	<label for="" class="text-uppercase text-sm">email</label>
	<input name = "anuemail" type="email" id="form-control-email" placeholder="email" class="form-control mb required">

	<label for="" class="text-uppercase text-sm">Avatar</label>
	<input name = "anuavatar" type="file" id="form-control-image" placeholder="avatar" class="form-control mb" accept="image/gif, image/jpeg">
	
	<select name="level" id="" class="form-control mb">
		<option value="">chọn quyền truy cập</option>
		<option value="1">quyền quản trị - 1</option>
		<option value="2">quyền user - 2</option>
		<option value="3">other - 3</option>
	</select>
	<button class="btn btn-primary btn-block" id="btn-submit" type="submit">Submit</button>
</form>