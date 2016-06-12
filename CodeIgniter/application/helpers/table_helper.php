<?php

function get_people_manage_table($people, $countRecord,$controller) {
    $CI = & get_instance();
    $table = '<table class="table table-hover table-striped" id="sortable_table" style="">';
    $headers = array(
        
        lang('common_namecus'),
        lang('common_phone'),
        lang('common_adress'),
        lang('common_birth_date'),
        '&nbsp');
    $table.='<thead><tr>';

    $count = 0;
    foreach ($headers as $header) {
        $count++;

        if ($count == 1) {
            $table.="<th class='leftmost'>$header</th>";
        } elseif ($count == count($headers)) {
            $table.="<th class='rightmost'>$header</th>";
        } else {
            $table.="<th>$header</th>";
        }
    }
    $table.='</tr></thead><tbody>';
    $table.=get_people_manage_table_data_rows($people, $controller);
    $table.="<tr><td colspan='7'>" . lang('common_sum_customer') . ": ".$countRecord."</tr></tr>";
    $table.='</tbody></table>';
    return $table;
}

/*
  Gets the html data rows for the people.
 */

function get_people_manage_table_data_rows($people, $controller) {
    $CI = & get_instance();
    $table_data_rows = '';

    foreach ($people->result() as $person) {
        $table_data_rows.=get_person_data_row($person, $controller);
    }

    if ($people->num_rows() == 0) {
        $table_data_rows.="<tr><td colspan='7'><div class='warning_message' style='padding:7px;'>" . lang('common_no_persons_to_display') . "</div></tr></tr>";
    }

    return $table_data_rows;
}

function get_person_data_row($person, $controller) {
    $CI = & get_instance();
    $controller_name = strtolower(get_class($CI));
    $width = $controller->get_form_width();
    $start_of_time = date('d-m-Y', 0);
    $today = date('d-m-Y');
    $phone1 = "";
    if ($person->phone == '') {
        $phone1 = "888-888-888";
    } else $phone1 = $person->phone;
    $link = site_url('customers/detail_customer_sale/' . $person->person_id);
    $table_data_row = '<tr>';
    $table_data_row.='<td><p ><a href="' . $link . '" class="underline">' . $person->first_name . ' ' . $person->last_name . '</a></p></td>';
    $table_data_row.='<td><div >' . $phone1 . '</div></td>';
    $table_data_row.='<td><div >' . $person->address_1 . '</div></td>';
    $table_data_row.='<td><div >' . $person->birth_date . '</div></td>';
    $table_data_row.='<td class="rightmost">'
//            . anchor(
//                    $controller_name . "/view/$person->person_id/width~755", lang('common_edit'), array(
//                'class' => 'thickbox',
//                'style' => 'font-size :11px;;background: #F2F2F2;border-bottom:1px solid #FFF;display:block;text-align:center;width:52px;overflow: hidden;font-weight:bold;padding:5px;text-align: center',
//                'title' => lang($controller_name . '_update')
//                    )
//            )
            . '</td>';
    $table_data_row.='</tr>';

    return $table_data_row;
}

function get_customer_manage_table($people, $countRecord,$controller) {
    $CI = & get_instance();
    $table = '<table class="table table-hover table-striped" id="sortable_table" style="">';
    $headers = array(
        lang('common_name_item_id'),
        lang('common_name_item'),
        lang('common_sale_time'),
        lang('common_money'),
        lang('common_made_in'),
        '&nbsp');
    $table.='<thead><tr>';

    $count = 0;
    foreach ($headers as $header) {
        $count++;

        if ($count == 1) {
            $table.="<th class='leftmost'>$header</th>";
        } elseif ($count == count($headers)) {
            $table.="<th class='rightmost'>$header</th>";
        } else {
            $table.="<th>$header</th>";
        }
    }
    $table.='</tr></thead><tbody>';
    $table.=get_customer_manage_table_data_rows($people, $controller);
    $table.="<tr><td colspan='7'>" . lang('common_sum_item') . ": ".$countRecord."</tr></tr>";
    $table.='</tbody></table>';
    return $table;
}

/*
  Gets the html data rows for the people.
 */

function get_customer_manage_table_data_rows($people, $controller) {
    $CI = & get_instance();
     $CI->load->model('m_items');
     
    $table_data_rows = '';

    foreach ($people->result() as $person) {
        $arr_item_id = explode(',', $person->items_id);
        foreach ($arr_item_id as $line => $item_id){
            $item = $CI->m_items->getItem_ob($item_id)->result_array();
            foreach ($item as $key => $value){
                $table_data_rows.=get_customer_data_row($value, $person, $controller);
            }
        }
        
    }

    if ($people->num_rows() == 0) {
        $table_data_rows.="<tr><td colspan='7'><div class='warning_message' style='padding:7px;'>" . lang('common_no_item_to_display') . "</div></tr></tr>";
    }

    return $table_data_rows;
}

function get_customer_data_row($item, $person, $controller) {
    $CI = & get_instance();
    $controller_name = strtolower(get_class($CI));
    $width = $controller->get_form_width();
//    pre($item);die;
    $link = '';
    $table_data_row = '<tr>';
    $table_data_row.='<td><p >' . $item["item_id"]. '</p></td>';
    $table_data_row.='<td><p >' . $item["name"]. '</p></td>';
    $table_data_row.='<td><div >' . date('d-m-Y',strtotime($person->sale_time)) . '</div></td>';
    $table_data_row.='<td><div >' . $item['cost_price'] . '</div></td>';
    $table_data_row.='<td><div >' . $item['made_in'] . '</div></td>';
    $table_data_row.='<td class="rightmost">'
//            . anchor(
//                    $controller_name . "/view/$person->person_id/width~755", lang('common_edit'), array(
//                'class' => 'thickbox',
//                'style' => 'font-size :11px;;background: #F2F2F2;border-bottom:1px solid #FFF;display:block;text-align:center;width:52px;overflow: hidden;font-weight:bold;padding:5px;text-align: center',
//                'title' => lang($controller_name . '_update')
//                    )
//            )
            . '</td>';
    $table_data_row.='</tr>';

    return $table_data_row;
}
