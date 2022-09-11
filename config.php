<?php
    $server="localhost";
    $user="root";
    $passwd="";
    $dbname="xml";

    $conn=mysqli_connect($server,$user,$passwd,$dbname);
    if(!$conn){
        die("Connection failed: ".mysqli_connect_error());
    }

?>