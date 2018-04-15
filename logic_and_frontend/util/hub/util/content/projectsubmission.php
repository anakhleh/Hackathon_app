<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/11/2018
 * Time: 8:23 PM
 */


echo '<div class="content" id="projectsubmission">';
echo '<form method="POST" action="./util/content/helper/doprojectsubmission.php">';
echo '<fieldset>';
echo 'Competitor 1*  <input type = "text"
                   name = "email1"
                   value = ""
                   id = "email1"
                   placeholder="group member 1"
                   style = "display: block;" required/>';
echo '<br>';
echo 'Competitor 2 <input type = "text"
                   name = "email2"
                   value = ""
                   id = "email2"
                   placeholder="group member 2"
                   style = "display: block;"/>';
echo '<br>';
echo 'Competitor 3 <input type = "text"
                   name = "email3"
                   value = ""
                   id = "email3"
                   placeholder="group member 3"
                   style = "display: block;"/>';
echo '<hr>';
echo 'Project Name* <input type = "text"
                   name = "projectname"
                   value = ""
                   id = "projectname"ff
                   placeholder=""
                   style = "display: block;" required/><br>';
echo 'Project Description* <textarea 
                            name = "projectdesc" 
                            placeholder=""
                            style = "display: block;" 
                            cols="80"
                            rows="20" 
                            maxlength="255" required ></textarea><br>';
echo 'Project Category* <select name="category">
                        <option value="embeddeddev">Embedded Dev</option>
                        <option value="bigdata">Big Data</option>
                        <option value="webdev">Web Dev</option>
                        <option value="other">Other</option>
                   </select><br><br>';
echo 'GitHub Link* <input name = "githublink"
                   value = ""
                   id = "githublink"
                   placeholder=""
                   style = "display: block;" required/><br>';
echo '<input type="submit" value="Submit Project">';
echo '</fieldset>';
echo '</form>';

echo '</table>';
echo '</div>';
?>