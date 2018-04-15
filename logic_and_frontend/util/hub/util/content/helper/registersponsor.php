<?php

$servername = "";
$username = "";
$password = "";
$schemaname = "";

$conn = new mysqli($servername, $username, $password, $schemaname);

// Check connection
if ($conn->connect_error) {
    echo "conn failed";
    die("Connection failed: " . $conn->connect_error);
}

$nextid = "SELECT MAX(`id`) FROM `sponsor`";
$result = $conn->query($nextid);
$row = $result->fetch_array();
if($row['MAX(`id`)'] === null){
    $id=0;
} else{
    $id = ((int)$row['MAX(`id`)']) + 1;
}
//echo(6);
//die();
//$username='testsponsor';
$companyname= $_POST['companyname'];
$companydescription=$_POST['companydescription'];
$mainproducts=$_POST['mainproducts'];
$monetarydonation=$_POST['monetarydonation'];
$phonenumber=$_POST['phonenumber'];
$username=$_SESSION['username'];


$insertquery="INSERT INTO `sponsor`(`id`, `name`, `description`, `mainProducts`, `monetaryDonation`, `contactEmail`, `contactPhone`)
              VALUES ('$id', '$companyname', '$companydescription', '$mainproducts', '$monetarydonation','$username', '$phonenumber')";
$result = $conn->query($insertquery);


header('Location: http://alexmanor.com/csc4710/alex/finalproject/hub/hub.php');
die();

?>