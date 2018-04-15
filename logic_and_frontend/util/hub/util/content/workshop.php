<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/9/2018
 * Time: 8:47 PM
 */
$servername = "";
$username = "";
$password = "";
$schemaname = "";

$conn = new mysqli($servername, $username, $password, $schemaname);

if ($conn->connect_error) {
    echo "conn failed";
    die("Connection failed: " . $conn->connect_error);
}

echo '<div class="content" id="workshop">';
echo 'WORKSHOPS';
echo '<table>';
echo '<tr>';
echo '<th> Presenter Name </th>';
echo '<th> Workshop Title </th>';
echo '<th> Presenter Email </th>';
echo '<th> Start </th>';
echo '<th> End </th>';
echo '<th> Room # </th>';
echo 8;

$sql = "SELECT * FROM `workshopAndLeader`";
$result = $conn->query($sql);

while($row = $result->fetch_array()){
    echo '<tr>';
    echo '<td>'.$row['getWorkshopLeaderName(L.leaderEmail)'].' </td>';
    echo '<td>'.$row['title'].' </td>';
    echo '<td>'.$row['leaderEmail'].' </td>';
    echo '<td>'.$row['starttime'].' </td>';
    echo '<td>'.$row['endtime'].' </td>';
    echo '<td>'.$row['room'].' </td>';
    echo '</tr>';
}
echo '</tr>';
echo '</table>';
echo '</div>';
?>