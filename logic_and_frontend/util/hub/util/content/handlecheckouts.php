<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/10/2018
 * Time: 11:19 AM
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

$sql = "SELECT * FROM `checkoutIsAvailable`";
$result = $conn->query($sql);



echo '<div class="content" id="handlecheckouts">';
echo '<form method="POST" action="./util/content/helper/docheckout.php">';// action="./util/content/helper/docheckout.php"
echo '<fieldset>';
echo 'Items to check out: <input type = "text"
                   name = "tocheckout"
                   value = ""
                   id = "tocheckout"
                   placeholder="item id\'s - ex. 1, 2, ....."
                   style = "display: block;" />';
echo 'Participant Email: <input type = "text"
                   name = "participantEmail"
                   value = ""
                   id = "participantEmail"
                   placeholder=""
                   style = "display: block;" />';
echo '<input type="submit" value="Check Out">';
echo '</fieldset>';
echo '</form>';

echo 'CHECKOUTS - INVENTORY AVAILABILITY';
echo '<table>';
echo '<tr>';
echo '<th> Item ID </th>';
echo '<th> Name </th>';
echo '<th> Category </th>';
echo '<th> Replacement Cost </th>';
echo '<th> description </th>';
echo '</tr>';


while($row = $result->fetch_array()){
    echo '<tr>';
    echo '<td> '.$row['id'].' </td>';
    echo '<td> '.$row['name'].' </td>';
    echo '<td> '.$row['itemCategory'].' </td>';
    echo '<td> '.$row['replacementCost'].' </td>';
    echo '<td> '.$row['description'].' </td>';
    echo '</tr>';
}
echo '</table>';
echo '</div>';
?>