<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/12/2018
 * Time: 10:24 PM
 */
start_session();
//TODO_MOD
$reviewerEmail=$_SESSION['username'];//"testreviewer3";
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
$sql = "SELECT DISTINCT F.* FROM `competitionRegistrationForm` as F, reviewedBy as R
where R.formid=F.id and '$reviewerEmail' not in (SELECT reviewerEmail FROM `reviewedBy` WHERE formid=F.id)";
$result = $conn->query($sql);
echo $conn->error;
echo '<div class="content" id="approveparticipant">';
echo '<p>APPROVE APPLICATIONS</p>';
echo '<form method="POST" action="./util/content/helper/doapproveparticipant.php">';
echo '<fieldset>';
echo 'Application ID *<input type="text" name="appid" id=""><br>';
echo 'Approve ? <input type="checkbox" name="approval" id=""><br>';
echo '<button type="button" id="submit">Submit Decision</button><br>';
echo '</fieldset>';
echo '</form>';

echo 'APPLICATIONS';
echo '<table>';
echo '<tr>';
echo '<th> ID </th>';
echo '<th> Why Wants To Attend </th>';
echo '<th> Skills </th>';
echo '<th> First Name </th>';
echo '<th> Last Name </th>';
echo '<th> Address </th>';
echo '<th> Zip Code </th>';
echo '<th> Phonenumber </th>';
echo '</tr>';


while($row = $result->fetch_array()){
    echo '<tr>';
    echo '<td> '.$row['id'].' </td>';
    echo '<td> '.$row['whyWantsToAttend'].' </td>';
    echo '<td> '.$row['skills'].' </td>';
    echo '<td> '.$row['firstname'].' </td>';
    echo '<td> '.$row['lastname'].' </td>';
    echo '<td> '.$row['address'].' </td>';
    echo '<td> '.$row['zipcode'].' </td>';
    echo '<td> '.$row['phonenumber'].' </td>';
    echo '</tr>';
}
echo '</table>';
echo '</div>';
?>