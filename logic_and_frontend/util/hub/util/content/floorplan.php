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
echo '<div class="content" id="floorplan">';
echo '<img src="./resources/floorplan.jpg">';

echo '<table>';
echo '<tr>';
echo '<th> Sponsor </th>';
echo '<th> Booth </th>';
echo '</tr>';

$sql = "SELECT * FROM `boothplan`";
$result = $conn->query($sql);
while($row = $result->fetch_array()){
    echo '<tr>';
    echo '<th> '.$row['name'].' </th>';
    echo '<th> '.$row['id'].' </th>';
    echo '</tr>';
}
echo '</table>';
echo '</div>';
?>