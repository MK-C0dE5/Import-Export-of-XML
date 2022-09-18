<?php
require_once "../config.php";
$query = "SELECT * FROM form_responses";
$result = mysqli_query($conn, $query);
$items = array();

while( $row = $result->fetch_assoc() ) {
    $items[] = $row;
}
if(isset($_POST["export"])) {
    $fileName = "itemdata-".date('d-m-Y').".xls";

    header('Content-Type: application/vnd.ms-excel');
    header('Content-Disposition: attachment; filename='.$fileName);

    $heading = false;

    if(!empty($items)) {
        foreach($items as $item) {
            if(!$heading) {
                echo implode("\t", array_keys($item)) . "\n";
                $heading = true;
            }
            echo implode("\t", array_values($item)) . "\n";
        }
    }
    exit();
}
?>