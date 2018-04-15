<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/12/2018
 * Time: 1:03 AM
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

$id=$_POST['updateid'];
//$username= $_SESSION['username'];
$name=$_POST['name'];
$itemdesc=$_POST['itemdesc'];
$rcost=$_POST['replacementcost'];
$category=$_POST['category'];
echo 8;
if(!empty($_POST['name'])){

    $result = $conn->query("UPDATE `LendingItem` SET `name`=' $name' WHERE `id`=$id ");
    echo $conn->error;
}
if(!empty($_POST['itemdesc'])){
    $result = $conn->query("UPDATE `LendingItem` SET `description`='$itemdesc' WHERE `id`=$id ");
}
if(!empty($_POST['replacementcost'])){
    if($_POST['category']=='disposable'){
        $result = $conn->query("UPDATE `LendingItem` SET `replacementCost`=0 WHERE `id`=$id ");
    }
    $result = $conn->query("UPDATE `LendingItem` SET `replacementCost`=$rcost WHERE `id`=$id ");
}
if($_POST['category']!='nochange'){
    $result = $conn->query("UPDATE `LendingItem` SET `category`='$category' WHERE `id`=$id ");
}


header('Location: http://alexmanor.com/csc4710/alex/finalproject/hub/hub.php');
die();
echo (9);

?>