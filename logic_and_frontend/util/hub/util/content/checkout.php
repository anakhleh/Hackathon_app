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
$sql = "SELECT * FROM `participantItemAvailibility`";
$result = $conn->query($sql);

echo '<div class="content" id="checkout">';
echo '<input type="text" id="search" placeholder="Type to search">';
echo '<input type="text" id="selected" placeholder="selected">';
echo '<button type="button" id="submit">Checkout</button>';

echo 'PARTS LEFT';
echo '<table>';
echo '<tr>';
echo '<th> Item </th>';
echo '<th> Category </th>';
echo '<th> Quantity Remaining </th>';
echo '</tr>';


while($row = $result->fetch_array()){
    echo '<tr>';
    echo '<td> '.$row['name'].' </td>';
    echo '<td> '.$row['itemCategory'].' </td>';
    echo '<td> '.$row['count(LendingItem.`name`)'].' </td>';
    echo '</tr>';
}
echo '</table>';

echo '</div>';
?>