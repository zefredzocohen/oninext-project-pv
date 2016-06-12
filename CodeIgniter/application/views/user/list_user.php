
<div class="panel panel-default">
	<div class="panel-heading">Recent Oreders</div>
	<div class="panel-body">
		<div class="alert alert-dismissible alert-success">
			<button type="button" class="close" data-dismiss="alert"><i class="fa fa-close"></i></button>
			<strong>Well done!</strong> You successfully read <a href="#" class="alert-link">this important alert message</a>.
		</div>
		<?php
		// var_dump($data['data_contain']);die();
		// var_dump($data['data_contain']);die();
		// if($data['type']=='1') echo 'trường hợp 1 user';else echo '2 user';die();
		$html = '
		<table class="table table-hover">
			<tr>
				<th>#</th>
				<th>username</th>
				<th>email</th>
				<th>quyền hạn</th>
			</tr>';
			$i = 0;
			if($data['type']=='1'){
					$i++;
					$html .='
						<tr>
							<th scope="row">'.$i.'</th>
							<td>'.$data['data_contain']['username'].'</td>
							<td>'.$data['data_contain']['email'].'</td>
							<td>'.$data['data_contain']['level'].'</td>
						</tr>';
			}
			else{
				// var_dump($data['data_contain']);die();
				foreach ($data['data_contain'] as $key => $value) {
					$i++;
						$html .='
					<tr>
						<th scope="row">'.$i.'</th>
						<td>'.$value['username'].'</td>
						<td>'.$value['email'].'</td>
						<td>'.$value['level'].'</td>
					</tr>';
					// echo $key.' : '.$value.'<br/>';;
				}
			}
			$html.='</table';
			// var_dump($data['data_contain']);
			echo $html;
		?>
	</div>
</div>