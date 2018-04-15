<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/13/2018
 * Time: 11:56 AM
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
//$parentcompanyemail='0@example.com';
$email=$_POST['email'];
$password=$_POST['password'];
$firstname= $_POST['firstname'];
$lastname=$_POST['lastname'];
$title=$_POST['title'];

$conn->query("INSERT INTO db_user(email, `password`) VALUES ('$email','$password')");
echo '(1)'.$conn->error;
$conn->query("SELECT insertSponsorRepWithCompany('$email','$firstname','$lastname','$title','$parentcompanyemail')");
echo '(2)'.$conn->error;

header('Location: http://alexmanor.com/csc4710/alex/finalproject/hub/hub.php');
die();

?>