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
echo '<div class="content" id="eventschedule">';
echo "EVENT SCHEDULE";
echo '<table>';
echo '<tr>';
echo '<th> Relevant Event </th>';
echo '<th> Time </th>';
echo '</tr>';

$sql = "SELECT * FROM `eventschedule`";
$result = $conn->query($sql);
while($row = $result->fetch_array()){
    echo '<tr>';
    echo '<td> '.$row['name'].' </td>';
    echo '<td> '.$row['time'].' </td>';
    echo '</tr>';
}
echo '</table>';
echo '</div>';
?>