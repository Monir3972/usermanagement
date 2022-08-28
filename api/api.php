<?php
include ('../db.php');

$return_data = array();

session_start();

$req = isset($_POST['req']) ? $_POST['req'] : 0;
$param = isset($_POST['param']) ? $_POST['param'] : 0;
$data = isset($_POST['data']) ? $_POST['data'] : 0;
$field_list = isset($_POST['get']) ? $_POST['get'] : '*';
$filter = isset($_POST['filter']) ? $_POST['filter'] : '';
$multi_select = isset($_POST['msel']) ? $_POST['msel'] : 0;
$match_id = isset($_POST['match']) ? $_POST['match'] : 0;

switch ($req)
{
        //  for employee list
        
    case '1':
        $table = 'country';
    break;
      case '2':
        $table = 'division';
    break;
     case '3':
        $table = 'district';
    break;
      case '4':
        $table = 'upzilla';
    break;
     case '5':
        $table = 'post_office';
    break;
     case '6':
        $table = 'word';
    break;
     case '7':
        $table = 'village';
    break;
      case '8':
        $table = 'user_infos';
    break;
    default:
        $table = '';

}

// parameter
// ------------------------------------------------------------------
switch ($param)
{
        case '1':
        $sql = 'SELECT * FROM ' . $table . ' WHERE is_active = 1';
        $return_data = getHTML_country_list_Table($sql, true);
        break;
        case '2':

         $sql = 'SELECT * FROM ' . $table . ' WHERE is_active = 1';
            // echo $sql;
         $sql .= ($filter != '') ? ' AND ' . $filter : '';
         $return_data = getSelectHTMLDept($sql, $match_id, '', $multi_select, true);
         break;

       case '3': 
            $sql = 'SELECT *,(SELECT name from country WHERE id=`country_id`) as country_name,(SELECT name from district WHERE id = `district_id`) as dist_name,(SELECT name from upzilla WHERE id=`upzilla_id`) as up_name, (SELECT name from village WHERE id=`village_id`) as village_name,(SELECT name from word WHERE id=`word_id`) as ward_name,(SELECT name from division WHERE id=`division_id`) as division_name FROM user_infos WHERE is_active = 1 ORDER BY id DESC';
            // $sql = 'SELECT * FROM '.$table.' WHERE status = 1 ORDER BY id DESC';
              $return_data = getHTML_empTable($sql,true);
        break;
    }

    echo json_encode($return_data);

     // Start function for get organizations name
    function getHTML_country_list_Table($sql)
    {
        global $con;
        try
        {
            $bHTML = ' <option value="-1">All</option>';

            $stmt = $con->prepare($sql, array(
                PDO::ATTR_CURSOR => PDO::CURSOR_SCROLL
            ));
            $stmt->execute();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC, PDO::FETCH_ORI_NEXT))
            {
                $bHTML .= '
               
               <option value="' . $row['id'] . '">' . $row['name'] . '</option>
          ';

            }
        }
        catch(PDOException $e)
        {
            $bHTML = $e->getMessage();
        }
        return $bHTML;
    }
  function getSelectHTMLDept($sql, $matchID, $field_name, $multisel = false, $optOnly = false)
    {
        global $con, $filter;
        try
        {
            $multi = ($multisel) ? 'multiple="multiple"' : '';
            $field_name = ($multisel) ? $field_name . '[]' : $field_name;
            $rHTML = '<select class="chosen-select sel2 width-100" ' . $multi . ' id="' . $field_name . '" name="' . $field_name . '">';
            $rHTML = ($optOnly) ? '' : $rHTML;
            $rHTML .= ($multisel) ? '<option value="-1">ALL</option>' : '<option value="0" selected>-- Select --</option>';

            $stmt = $con->prepare($sql, array(
                PDO::ATTR_CURSOR => PDO::CURSOR_SCROLL
            ));
            $stmt->execute();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC, PDO::FETCH_ORI_NEXT))
            {
                if ($row['id'] == $matchID) $rHTML = $rHTML . '<option value="' . $row['id'] . '" selected>' . $row['name'] . '</option>';
                else $rHTML = $rHTML . '<option value="' . $row['id'] . '">' . $row['name'] . '</option>';
            }
            $rHTML = ($optOnly) ? $rHTML : $rHTML . '</select>';
        }
        catch(PDOException $e)
        {
            $rHTML = $e->getMessage();
        }

        return $rHTML;
    }

  function getHTML_empTable($sql)
    {
        global $con;
        try
        {
            $bHTML = '';
            $stmt = $con->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_SCROLL));
            $stmt->execute();
            $c = 1;
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC, PDO::FETCH_ORI_NEXT))
            {
                $bHTML .= '
                            <tr>
                                <th scope="row"> '.$c.' </th> 
                                <td> '.$row['name'].' </td> 
                                <td> '.$row['email'].' </td> 
                                <td> '.$row['contact'].' </td>
                                <td> '.$row['country_name'].' </td> 
                                <td> '.$row['division_name'].' </td>
                                <td> '.$row['dist_name'].' </td> 
                                <td> '.$row['up_name'].' </td> 
                                <td> '.$row['village_name'].' </td> 
                                <td> '.$row['ward_name'].' </td> 
                                <td>
                                <button type="button" class="btn btn-default btn-sm" id="view_id" data-id='.$row["id"].'><i class="fas fa-eye"></i></button>
                                <button type="button" class="btn btn-default btn-sm" id="edit_id" data-id='.$row["id"].'><i class="fas fa-edit"></i></button>
                                <button type="button" class="btn btn-default btn-sm" id="delete_id" data-id='.$row["id"].'><i class="fas fa-trash"></i></button>
                                </td>
                            </tr>  
                          ';
                          $c++;
            }

            $rHTML =  $bHTML;
        }
        catch (PDOException $e) 
        {
            $rHTML = $e->getMessage();
        }
        
        return $rHTML;
    }
    


?>
