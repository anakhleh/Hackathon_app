<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/12/2018
 * Time: 12:51 AM
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
$id=$_POST['deleteid'];
$result = $conn->query("SELECT deleteItemFromCheckoutAndReturn($id)");
$deletequery="DELETE FROM `LendingItem` WHERE `id`=$id";
echo (9);
$result = $conn->query($deletequery);
echo $conn->error;
echo (9);

header('Location: http://alexmanor.com/csc4710/alex/finalproject/hub/hub.php');
echo (9);
die();
?>