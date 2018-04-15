<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/12/2018
 * Time: 10:37 PM
 */
start_session();
$servername = "";
$username = "";
$password = "";
$schemaname = "";
$reviewer=$_SESSION['username'];

$conn = new mysqli($servername, $username, $password, $schemaname);

// Check connection
if ($conn->connect_error) {
    echo "conn failed";
    die("Connection failed: " . $conn->connect_error);
}
//TODO_USER
$appid=$_POST['appid'];
$isapproved=isset($_POST['approval']);

if($isapproved){
    $result = $conn->query("INSERT INTO reviewedBy(reviewerEmail, formid, isRecommended) VALUES ('$reviewer',$appid, $isapproved)");
}
header("location: http://alexmanor.com/csc4710/alex/finalproject/hub/hub.php");
die();
?>