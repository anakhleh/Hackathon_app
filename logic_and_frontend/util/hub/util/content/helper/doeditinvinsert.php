<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/12/2018
 * Time: 12:54 AM
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
$name=$_POST['name'];
$itemdesc=$_POST['itemdesc'];
$rcost=$_POST['replacementcost'];
$category=$_POST['category'];

$insertquery="INSERT INTO `LendingItem`(`id`,`name`,`description`,`replacementCost`,`itemCategory`) 
              VALUES (0,'$name', '$itemdesc','$rcost','$category')";
echo (9);
$result = $conn->query($insertquery);
echo $conn->error;
echo (9);
header('Location: http://alexmanor.com/csc4710/alex/finalproject/hub/hub.php');
die();
echo (9);

?>