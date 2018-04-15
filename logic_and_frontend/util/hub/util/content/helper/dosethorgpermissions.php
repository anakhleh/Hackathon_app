<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/13/2018
 * Time: 12:26 AM
 */
$servername = "";
$username = "";
$password = "";
$schemaname = "";

$conn = new mysqli($servername, $username, $password, $schemaname);
$conn = new mysqli($servername, $username, $password, $schemaname);

// Check connection
if ($conn->connect_error) {
    echo "conn failed";
    die("Connection failed: " . $conn->connect_error);
}

$email =$_POST['hemail'];
$ischeckout=isset($_POST['hischeckout']);
$isadmin=isset($_POST['hisadmin']);
$isjudge=isset($_POST['hisjudge']);

if($isadmin){
    $result=$conn->query("INSERT INTO hOrgAdmin VALUES ('$email')");
    $result=$conn->query("INSERT INTO hOrgSubmissionReviewer VALUES ('$email')");
} else{
    $result=$conn->query("DELETE FROM hOrgAdmin WHERE email=('$email')");
}
if($isjudge){
    $result=$conn->query("INSERT INTO projectSubmissionJudge VALUES ('$email')");
} else{
    $result=$conn->query("DELETE FROM projectSubmissionJudge WHERE email=('$email')");
}
if($ischeckout){
    $result=$conn->query("INSERT INTO hOrgCheckoutWorker VALUES ('$email')");
} else{
    $result=$conn->query("DELETE FROM hOrgCheckoutWorker WHERE email=('$email')");
}
echo $conn->error;
header("location: http://alexmanor.com/csc4710/alex/finalproject/hub/hub.php");
die();

?>