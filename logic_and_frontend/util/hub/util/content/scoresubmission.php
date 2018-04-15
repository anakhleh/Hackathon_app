<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/11/2018
 * Time: 9:36 PM
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
$sql = "SELECT * FROM `projectSubmission`";
$result = $conn->query($sql);

echo '<div class="content" id="scoresubmission">';
echo '<form method="POST" action="./util/content/helper/doscoresubmission.php">';
echo '<fieldset>';
echo 'Project Submission Id: <input type = "text"
                   name = "projsubid"
                   value = ""
                   id = "projsubid"
                   style = "display: block;" required/>';
echo 'Set Score to: <input type = "number"
                   name = "newscore"
                   value = ""
                   id = "newscore"
                   max="100"
                   min="0"
                   style = "display: block;"/>';
echo '<br>';
echo '<input type="submit" value="Submit Score">';
echo '</fieldset>';
echo '</form>';
echo '<br>';

echo 'PROJECT SUBMISSIONS';
echo '<table>';
echo '<tr>';
echo '<th> Id </th>';
echo '<th> Category </th>';
echo '<th> Name </th>';
echo '<th> Description </th>';
echo '<th> Github Link </th>';
echo '<th> Score </th>';
echo '</tr>';


while($row = $result->fetch_array()){
    echo '<tr>';
    echo '<td> '.$row['id'].' </td>';
    echo '<td> '.$row['category'].' </td>';
    echo '<td> '.$row['name'].' </td>';
    echo '<td> '.$row['description'].' </td>';
    echo '<td> '.$row['githubLink'].' </td>';
    echo '<td> '.$row['score'].' </td>';
    echo '</tr>';
}
echo '</table>';
echo '</div>';
?>