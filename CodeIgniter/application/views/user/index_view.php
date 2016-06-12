<?php 
	$user =  $this->session->userdata("username");
echo '<h1>Chào mừng '.$user.'đến với trang quản trị</h1>';
?>

<div class="block search">
    <div class="row">
        <form id="top-search" action="<?php echo base_url().'site/default_home/search'?>">
    <div class="col-md-3 col-sm-12">
        <input type="text" name="product" id="product" class="form-control" placeholder="Tìm kiếm theo id hoặc tên sản phẩm" />
    </div>
    <script language="JavaScript" type="text/javascript">
    $(document).ready(function($){
            $( "#product" ).autocomplete({
                minLength: 1,
                source: function( request, response ) {
                    $.ajax({
                        url: "<?php echo base_url().'site/default_home/autocomplete'?>",
                        data: { query: request.term},
                        type: "POST",
                        success: function(data){
                            console.log(data);
                            response(data);
                        },
                        error: function(jqXHR, textStatus, errorThrown){
//                                                alert("error handler!");                        
                        },
                      dataType: 'json'
                    });
                }
            });
            $("#top-search").submit(function(e) {
            var url = "<?php echo base_url('site/default_home/search')?>"; 
            $.ajax({
                   type: "POST",
                   url: url,
                   data: $("#top-search").serialize(), 
                   success: function(data){
//                       alert(data);
//                        console.log(data.url);
                        if(typeof  data.url != "undefined"){
                            window.location.href =data.url;
                            return true;
                        }
                        $('#test_manager').html(data);
                        console.log(data);
                   },
                      dataType: 'json'
                 });

            e.preventDefault(); // avoid to execute the actual submit of the form.
});
    });

        </script>
    <div class="col-md-3 col-sm-3 col-xs-12">
        <div class="form-group">
            <div class='input-group date' id='checkin'>
                <input type='text' name= 'checkin' class="form-control" />
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
            </div>
        </div>
    </div>
    <div class="col-md-3 col-sm-3 col-xs-12">
        <div class="form-group">
            <div class='input-group date' id='checkout'>
                <input type='text' name= 'checkout'  class="form-control" />
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
            </div>
        </div>
    </div>
    <div class="col-md-3 col-sm-3 col-xs-12">
        <input type="submit" name="search" id="action-search" class="btn btn-primary" value="Tìm kiếm" />
    </div>
    <div class="clear"></div>
</form>
    </div>

    <div class="col-md-12" id="info-customer"><h3>Danh sách khách hàng theo thời gian mua</h3></div>
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