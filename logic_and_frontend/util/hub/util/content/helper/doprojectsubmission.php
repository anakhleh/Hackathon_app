<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/11/2018
 * Time: 8:27 PM
 */

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

//$username= $_SESSION['username'];
$email1=str_replace(' ', '', $_POST['email1']);
$email2=str_replace(' ', '', $_POST['email2']);
$email3=str_replace(' ', '', $_POST['email3']);
$projectname=$_POST['projectname'];
$projectdescription=$_POST['projectdesc'];
$projectcategory=$_POST['category'];
$githublink=$_POST['githublink'];


$insertquery="SELECT `insertNewProjectSubmission`('$email1', '$email2', '$email3',
             '$projectname', '$projectdescription', '$githublink', '$projectcategory')";
echo (9);
$result = $conn->query($insertquery);
echo $conn->error;
echo (9);

header('Location: http://alexmanor.com/csc4710/alex/finalproject/hub/hub.php');
echo (9);
die();