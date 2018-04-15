<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/13/2018
 * Time: 2:49 AM
 */
$servername = "";
$username = "";
$password = "";
$schemaname = "";

//echo $_POST['participantEmail'];

$conn = new mysqli($servername, $username, $password, $schemaname);
$conn = new mysqli($servername, $username, $password, $schemaname);

// Check connection
if ($conn->connect_error) {
    echo "conn failed";
    die("Connection failed: " . $conn->connect_error);
}

$email =$_POST['hemail'];
$isjudge=isset($_POST['sisjudge']);

$conn = new mysqli($servername, $username, $password, $schemaname);

// Check connection
if ($conn->connect_error) {
    echo "conn failed";
    die("Connection failed: " . $conn->connect_error);
}

if($isjudge){
    $result=$conn->query("INSERT INTO projectSubmissionJudge VALUES ('$email')");
} else{
    $result=$conn->query("DELETE FROM projectSubmissionJudge WHERE email=('$email')");
}

echo $conn->error;
header("location: http://alexmanor.com/csc4710/alex/finalproject/hub/hub.php");
die();
?>