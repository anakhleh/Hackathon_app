<?php
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

$username= $_SESSION['username'];
//$username='testgeneraluser';
$firstname= $_POST['firstname'];
$lastname=$_POST['lastname'];
$address=$_POST['address'];
$whywantstogo=$_POST['whywantstogo'];
$employementfield=$_POST['employmentfield'];
$zipcode=$_POST['zipcode'];
$phonenumber=$_POST['phonenumber'];
$skills = $_POST['skills'];

//$reviewerquery="SELECT * FROM `hOrgSubmissionReviewer` ORDER BY RAND() LIMIT 1";
//echo -2;
//$result = $conn->query($reviewerquery);
//echo -1;
//$row = $result->fetch_array();
//$reviewer = $row['email'];
//echo 0;

$nextcgfidquery = "SELECT MAX(`id`) FROM `competitionRegistrationForm`";
$result = $conn->query($nextcgfidquery);
$row = $result->fetch_array();
if($row['MAX(`id`)'] === null){
    echo(6);
    $cgfid=0;

} else{
    echo (8);
    echo ($row['MAX(`id`)']);
    $cgfid = ((int)$row['MAX(`id`)']) + 1;
}
echo(5);
echo($reviewer);
echo($cgfid);

$insertquery="SELECT insertNewRegistrationFormAndReviewer('$username', $cgfid, '$firstname',
             '$lastname', '$employementfield', '$address', '$zipcode', '$phonenumber',
             '$whywantstogo', '$skills') ";
echo (9);
$result = $conn->query($insertquery);
echo $conn->error;
echo $result->fetch_array();
echo (9);

header('Location: http://alexmanor.com/csc4710/alex/finalproject/hub/hub.php');
echo (9);
die();

?>