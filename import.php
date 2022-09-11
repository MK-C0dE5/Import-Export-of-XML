<!DOCTYPE html>
<html lang="en">
<head>
	<title>File Import Export</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="css/app.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>
<?php
    if(isset($_POST['submit'])){
        $rowaffected = 0;
        if(isset($_FILES['file']) && ($_FILES['file']['error'] == UPLOAD_ERR_OK)){
            $xml = simplexml_load_file($_FILES['file']['tmp_name']);
            
            foreach($xml->Ticker as $value){
                $SecurityCode = $value['SecurityCode'];
                
            }
    }
?>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <form action="" method="post" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="formFile" class="form-label">Student Photo</label>
                        <input class="form-control" type="file" name="images">
                    </div>  
                    <div class="text-center">
                        <button type="submit" name="submit" value="submit" class="btn btn btn-primary">Submit</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>