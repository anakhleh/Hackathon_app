<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/10/2018
 * Time: 3:08 AM
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

$sql = "SELECT * FROM `processedNotYetReturned`";
$result = $conn->query($sql);

echo '<div class="content" id="currentlycheckedout">';
echo 'CURRENTLY CHECKED OUT';
echo '<table>';
echo '<tr>';
echo '<th> Item ID </th>';
echo '<th> Item Name </th>';
echo '<th> Item Category </th>';
echo '<th> Replacement Cost </th>';
echo '<th> Description </th>';
echo '<th> Checked Out To </th>';
echo '<th> Checked Out By </th>';
echo '<th> Checked Out At</th>';
echo '</tr>';


while($row = $result->fetch_array()){
    echo '<tr>';
    echo '<td> '.$row['id'].' </td>';
    echo '<td> '.$row['name'].' </td>';
    echo '<td> '.$row['itemCategory'].' </td>';
    echo '<td> '.$row['replacementCost'].' </td>';
    echo '<td> '.$row['description'].' </td>';
    echo '<td> '.$row['pemail'].' </td>';
    echo '<td> '.$row['cemail'].' </td>';
    echo '<td> '.$row['checkouttime'].' </td>';
    echo '</tr>';
}
echo '</table>';
echo '</div>';
?>