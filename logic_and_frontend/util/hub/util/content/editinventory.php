<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/11/2018
 * Time: 11:04 PM
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

$sql = "SELECT * FROM `LendingItem`";
$result = $conn->query($sql);
echo '<div class="content" id="editinventory">';
echo '<button type="button" onclick="document.getElementById(\'invinsert\').style.display=\'block\';
                                     document.getElementById(\'invupdate\').style.display=\'none\';
                                     document.getElementById(\'invdelete\').style.display=\'none\';">Insert Item</button> | ';
echo '<button type="button" onclick="document.getElementById(\'invinsert\').style.display=\'none\';
                                     document.getElementById(\'invupdate\').style.display=\'none\';
                                     document.getElementById(\'invdelete\').style.display=\'block\';">Delete Item</button> |';
echo '<button type="button" onclick="document.getElementById(\'invinsert\').style.display=\'none\';
                                     document.getElementById(\'invupdate\').style.display=\'block\';
                                     document.getElementById(\'invdelete\').style.display=\'none\';">Update Item</button>';
echo '<form method="POST" action="./util/content/helper/doeditinvupdate.php" id="invupdate" style="display:none">';
echo '<fieldset>';
echo '<p>UPDATE</p>';
echo 'ID to update: <input type = "text"
                   name = "updateid"
                   value = ""
                   id = "updateid"
                   style = "display: block;" required/>';
echo '<hr>';
echo 'Set Item Name  <input type = "text"
                   name = "name"
                   value = ""
                   id = "name"
                   placeholder=""
                   style = "display: block;" />';
echo '<br>';
echo 'Set Item Description <textarea 
                            name = "itemdesc" 
                            placeholder=""
                            style = "display: block;" 
                            cols="80"
                            rows="20" 
                            maxlength="255" ></textarea><br>';
echo '<br>';
echo 'Set Item category <select name="category">
                        <option value="nochange">No Change</option>
                        <option value="system">System</option>
                        <option value="peripheral">Peripheral</option>
                        <option value="sensor">Sensor</option>
                        <option value="disposable">Disposable (replacement cost will be 0)</option>
                   </select><br><br>';
echo 'Set Replacement cost <input type = "text"
                   name = "replacementcost"
                   value = ""
                   id = "replacementcost"
                   placeholder=""
                   style = "display: block;"/><br>';
echo '<input type="submit" value="Update Item">';
echo '</fieldset>';
echo '</form>';
echo '<form method="POST" action="./util/content/helper/doeditinvdelete.php" id="invdelete">';
echo '<fieldset>';
echo '<p>DELETE</p>';
echo 'Delete item with ID: <input type = "text"
                   name = "deleteid"
                   value = ""
                   id = "deleteid"
                   style = "display: block;" required/>';
echo '<input type="submit" value="Delete Item">';
echo '</fieldset>';
echo '</form>';

echo '<form method="POST" action="./util/content/helper/doeditinvinsert.php" id="invinsert">';
echo '<fieldset>';
echo '<p>INSERT</p>';
echo 'Item Name*  <input type = "text"
                   name = "name"
                   value = ""
                   id = "name"
                   placeholder=""
                   style = "display: block;" required/>';
echo '<br>';
echo 'Item Description* <textarea 
                            name = "itemdesc" 
                            placeholder=""
                            style = "display: block;" 
                            cols="80"
                            rows="20" 
                            maxlength="255" required ></textarea><br>';
echo '<br>';
echo 'Item category* <select name="category">
                        <option value="system">System</option>
                        <option value="peripheral">Peripheral</option>
                        <option value="sensor">Sensor</option>
                        <option value="disposable">Disposable (replacement cost will be 0)</option>
                   </select><br><br>';
echo 'Replacement cost* <input type = "text"
                   name = "replacementcost"
                   value = ""
                   id = "replacementcost"
                   placeholder=""
                   style = "display: block;" required/><br>';
echo '<input type="submit" value="Insert Item">';
echo '</fieldset>';
echo '</form>';
echo '<br>';
echo '<script>document.getElementById(\'invinsert\').style.display=\'block\';
              document.getElementById(\'invupdate\').style.display=\'none\';
              document.getElementById(\'invdelete\').style.display=\'none\';</script>';
echo 'ITEM INVENTORY';
echo '<table>';
echo '<tr>';
echo '<th> Id </th>';
echo '<th> Category </th>';
echo '<th> Name </th>';
echo '<th> Description </th>';
echo '<th> Replacement Cost </th>';
echo '</tr>';


while($row = $result->fetch_array()){
    echo '<tr>';
    echo '<td> '.$row['id'].' </td>';
    echo '<td> '.$row['itemCategory'].' </td>';
    echo '<td> '.$row['name'].' </td>';
    echo '<td> '.$row['description'].' </td>';
    echo '<td> '.$row['replacementCost'].' </td>';
    echo '</tr>';
}

echo '</table>';
echo '</div>';
?>