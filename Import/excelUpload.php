<?php
require('library/spreadsheet-reader/php-excel-reader/excel_reader2.php');
require('library/spreadsheet-reader/SpreadsheetReader.php');
require('../config.php');
if(isset($_POST['Submit'])){
  $mimes = ['application/vnd.ms-excel','text/xls','text/xlsx','application/vnd.oasis.opendocument.spreadsheet'];
  echo $_FILES["file"]["type"];
  if(in_array($_FILES["file"]["type"],$mimes)){
    $uploadFilePath = 'uploads/'.basename($_FILES['file']['name']);
    move_uploaded_file($_FILES['file']['tmp_name'], $uploadFilePath);
    $Reader = new SpreadsheetReader($uploadFilePath);
    $totalSheet = count($Reader->sheets());
    echo "You have total ".$totalSheet." sheets".
    $html="<table border='1'>";
    for($i=0;$i<$totalSheet;$i++){
      $Reader->ChangeSheet($i);
      foreach ($Reader as $Row)
      {
        $html.="<tr>";

        $ID = isset($Row[0]) ? $Row[0] : '';
        $start_time = isset($Row[1]) ? $Row[1] : '';
        $completion_time = isset($Row[2]) ? $Row[2] : '';
        $Email = isset($Row[3]) ? $Row[3] : '';
        $Name = isset($Row[4]) ? $Row[4] : '';
        $subject_understanding = isset($Row[5]) ? $Row[5] : '';
        $syllabus_coverage = isset($Row[6]) ? $Row[6] : '';
        $practical_assessment = isset($Row[7]) ? $Row[7] : '';
        $Office = isset($Row[8]) ? $Row[8] : '';
        $Library = isset($Row[9]) ? $Row[9] : '';

        $html.="<td>".$ID."</td>";
        $html.="<td>".$start_time."</td>";
        $html.="<td>".$completion_time."</td>";
        $html.="<td>".$Email."</td>";
        $html.="<td>".$Name."</td>";
        // $html.="<td>".$subject_understanding."</td>";
        // $html.="<td>".$syllabus_coverage."</td>";
        // $html.="<td>".$practical_assessment."</td>";
        // $html.="<td>".$Office."</td>";
        // $html.="<td>".$Library."</td>";

        $html.="<td>".'{"slider-1":"'.$subject_understanding.'","slider-2":"'.$syllabus_coverage.'","slider-3":"'.$practical_assessment.'","slider-4":"'.$Office.'","slider-5":"'.$Library.'"}'."</td>";
        $New = '{"slider-1":"'.$subject_understanding.'","slider-2":"'.$syllabus_coverage.'","slider-3":"'.$practical_assessment.'","slider-4":"'.$Office.'","slider-5":"'.$Library.'"}';
        // {"slider-1":"51","slider-2":"51","slider-3":"51","slider-4":"51","slider-5":"51","slider-6":"51","slider-7":"51","form_id":"1"}
        $sql = "INSERT INTO `form_responses`(`student_id`, `form_id`, `filldate`, `response_json`) VALUES ('$ID','1','$start_time','$New')";
        // $sql = "INSERT INTO `data1`(`ID`, `Start time`, `Completion time`, `Email`, `Name`, `Subject Understanding`, `Syllabus Coverage`, `Practical Assessment`, `Office`, `Library`) VALUES ('$ID','$start_time','$completion_time','$Email','$Name','$subject_understanding','$syllabus_coverage','$practical_assessment','$Office','$Library');";
        // $sql = "INSERT INTO `date`(`ID`, `Start time`, `Completion time`) VALUES ('$ID','$start_time','$completion_time');";
        require_once "../config.php";
        $result = mysqli_query($conn, $sql);
        print_r($result);
       }
    }
    $html.="</table>";
    echo $html;
    echo "<br />Data Inserted in dababase";
  }else { 
    die("<br/>Sorry, File type is not allowed. Only Excel file."); 
  }
}
?>