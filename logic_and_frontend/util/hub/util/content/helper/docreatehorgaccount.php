<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/13/2018
 * Time: 1:27 PM
 */
start_session();
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

//TODO_MOD
$parentcompany= $_SESSION['username'];
//$parentcompany='testcompany0';
$email=$_POST['email'];
$password=$_POST['password'];
$firstname= $_POST['firstname'];
$lastname=$_POST['lastname'];
$phonenumber=$_POST['phonenumber'];
$zipcode=$_POST['zipcode'];
$address=$_POST['address'];
$ischeckout=(int)isset($_POST['hischeckoutworker']);
$isadmin=(int)isset($_POST['hisadmin']);
$isjudge=(int)isset($_POST['hisjudge']);

$conn->query("INSERT INTO db_user(email, `password`) VALUES ('$email','$password')");
echo '(1)'.$conn->error;
$conn->query("SELECT insertHackathonOrgEventWorkerWithPermissions('$email','$firstname','$lastname','$address','$zipcode','$phonenumber',$ischeckout,$isadmin,$isjudge)");
echo '(2)'.$conn->error;

header('Location: http://alexmanor.com/csc4710/alex/finalproject/hub/hub.php');
die();

?>