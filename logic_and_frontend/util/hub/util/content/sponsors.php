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
echo '<div class="content" id="sponsors">';
echo 'OUR SPONSORS';
echo '<table>';
echo '<tr>';
echo '<th> Name </th>';
echo '<th> Description </th>';
echo '<th> Main Products </th>';
echo '<th> Email </th>';
echo '<th> Phone </th>';
echo '</tr>';

$sql = "SELECT * FROM `sponsor`";
$result = $conn->query($sql);
while($row = $result->fetch_array()){
    echo '<tr>';
    echo '<td> '.$row['name'].' </td>';
    echo '<td> '.$row['description'].' </td>';
    echo '<td> '.$row['mainProducts'].' </td>';
    echo '<td> '.$row['contactEmail'].' </td>';
    echo '<td> '.$row['contactPhone'].' </td>';
    echo '</tr>';
}
echo '</table>';
echo '</div>';
?>