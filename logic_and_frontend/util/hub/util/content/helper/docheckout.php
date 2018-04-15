<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/10/2018
 * Time: 11:57 AM
 */

//TODO_MOD
start_session();
$checkoutworker=$_SESSION['username'];
//$checkedOutTo=$_POST['participantEmail']
$servername = "";
$username = "";
$password = "";
$schemaname = "";

//echo $_POST['participantEmail'];

$conn = new mysqli($servername, $username, $password, $schemaname);

// Check connection
if ($conn->connect_error) {
    echo "conn failed";
    die("Connection failed: " . $conn->connect_error);
}

$err_messages="";
//$checkoutworker='testcheckoutworker';
$participant=$_POST['participantEmail'];
$itemsToCheckOut = preg_split("/[\s,]+/",$_POST['tocheckout']);

foreach($itemsToCheckOut as $item){
    $sql = "INSERT INTO `itemCheckout2`(`partid`,`workerEmail`,`participantEmail`,`checkouttime`)
            VALUES ($item, '$checkoutworker', '$participant', NOW())";
    $result=$conn->query($sql);
    if(!$result){
        $err_messages = $err_messages.$conn->error.' ';
    }
}

if($err_messages==""){ $err_messages = "success";}
header("location: http://alexmanor.com/csc4710/alex/finalproject/hub/hub.php");
die();
return  $err_messages;
?>