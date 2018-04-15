<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/11/2018
 * Time: 9:51 PM
 */
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
$projid=$_POST['projsubid'];
$newscore=$_POST['newscore'];
if($newscore > 100){$newscore=100;}
if($newscore < 0){$newscore=0;}

$updatequery="UPDATE `projectSubmission` SET `score`=$newscore  WHERE `id`=$projid ";
echo (9);
$result = $conn->query($updatequery);
echo $conn->error;
echo (9);

header('Location: http://alexmanor.com/csc4710/alex/finalproject/hub/hub.php');
echo (9);
die();