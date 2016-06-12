<?php 
	$user =  $this->session->userdata("username");
echo '<h1>Chào mừng '.$user.'đến với trang quản trị</h1>';
?>

<div class="block search">

    <div class="col-md-12" id="info-customer"><h3>Danh sách các mặt hàng đã mua theo thời gian mua</h3></div>
    <div id="test_manager">
        <?php if(isset($manage_table)&&$manage_table != ''){
            echo $manage_table;
        }
?>
    </div>

<script type="text/javascript">
    $(function () {
        $('#checkin').datetimepicker({
            format: 'D-M-YYYY',
        });
        $('#checkout').datetimepicker({
            format: 'D-M-YYYY',
            useCurrent: false //Important! See issue #1075
        });
        $("#checkin").on("dp.change", function (e) {
            $('#checkout').data("DateTimePicker").minDate(e.date);
        });
        $("#checkout").on("dp.change", function (e) {
            $('#checkin').data("DateTimePicker").maxDate(e.date);
        });
    });
</script>
 
 
    </div>
<style>
    #info-customer{
        color: blue;
    }
</style>