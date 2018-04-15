<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/12/2018
 * Time: 4:28 PM
 */
echo '<div class="content" id="donateequipment">';
echo '<form method="POST" action="./util/content/helper/doeditinvinsert.php">';
echo '<fieldset>';
echo '<p>DONATE EQUIPMENT</p>';
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
echo '</div>';
?>