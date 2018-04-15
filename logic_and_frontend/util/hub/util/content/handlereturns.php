<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/10/2018
 * Time: 1:56 PM
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



echo '<div class="content" id="handlereturns">';
echo '<form method="POST" action="./util/content/helper/doreturn.php">';// action="./util/content/helper/docheckout.php"
echo '<fieldset>';
echo 'Items to return: <input type = "text"
                   name = "toreturn"
                   value = ""
                   id = "toreturn"
                   placeholder="item id\'s - ex. 1, 2, ....."
                   style = "display: block;" />';
echo 'Participant Email: <input type = "text"
                   name = "participantEmail"
                   value = ""
                   id = "participantEmail"
                   placeholder=""
                   style = "display: block;" />';
echo '<input type="submit" value="Process Return">';
echo '</fieldset>';
echo '</form>';

echo 'RETURNS - WHAT IS CHECKED OUT';
echo '<table>';
echo '<tr>';
echo '<th> Item ID </th>';
echo '<th> Name </th>';
echo '<th> Category </th>';
echo '<th> Replacement Cost </th>';
echo '<th> description </th>';
echo '<th> Checked Out To </th>';
echo '<th> Checked Out By </th>';
echo '<th> Check Out Time </th>';
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