<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<?php
    require_once "../config.php";
    $export = "";
    if(isset($_POST["submit"]))
    {
        $query = "SELECT * FROM data1";
        $res = mysqli_query($conn, $query);
        if(mysqli_num_rows($res) > 0)
        {
            $export .= '
            <table> 
                <tr> 
                    <th>ID</th>
                    <th>Start Time</th> 
                    <th>Completion Time</th> 
                    <th>Email</th>
                    <th>Name</th>
                    <th>Subject UnderStanding</th>
                    <th>Syllabus Coverage</th>
                    <th>Practical Assessment</th>
                    <th>Office</th>
                    <th>Library</th> 
                </tr>
            ';
            while($row = mysqli_fetch_array($res))
            {
            $export .= '
            <tr>
                <td>'.$row["ID"].'</td> 
                <td>'.$row["Start time"].'</td> 
                <td>'.$row["Completion time"].'</td> 
                <td>'.$row["Email"].'</td>
                <td>'.$row["Name"].'</td> 
                <td>'.$row["Subject Understanding"].'</td> 
                <td>'.$row["Syllabus Coverage"].'</td> 
                <td>'.$row["Practical Assessment"].'</td> 
                <td>'.$row["Office"].'</td> 
                <td>'.$row["Library"].'</td> 
            </tr>
            ';
            }
            $export .= '</table>';
            header('Content-Type: application/xls');
            header('Content-Disposition: attachment; filename=info.xls');
            echo $export;
        }
    }
?>
<body>
    <form method="post" action="index.php">
        <input type="submit" name="submit" value="Export" />
    </form>
</body>
</html>