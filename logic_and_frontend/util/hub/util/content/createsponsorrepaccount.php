<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/13/2018
 * Time: 11:35 AM
 */
echo '<div class="content" id="createsponsorrepaccount">';
echo '<form action="./util/content/helper/docreatesponsorrepaccount.php" method="POST">';
echo '<fieldset>';
echo '<legend>CREATE AN ACCOUNT FOR YOUR REPS TO USE</legend>';
echo 'Rep First Name * <input type = "text",
                   name = "firstname",
                   value = "",
                   id = "firstnamebox",
                   style = "display: block;" required/>';
echo 'Rep Last Name *<input type = "text",
                   name = "lastname",
                   value = "",
                   id = "lastnamebox",
                   style = "display: block;" required>';
echo 'Title * <input type = "text",
                   name = "title",
                   value = "",
                   id = "title",
                   style = "display: block;" required>';
echo 'Email * <input type = "text",
                   name = "email",
                   value = "",
                   id = "email",
                   style = "display: block;" required>';
echo 'Password * <input type = "text",
                   name = "password",
                   value = "",
                   id = "password",
                   style = "display: block;" required><br>';
echo '<input type = "submit",
            	   name = "btnSubmit",
                   style = "display:block;"
                   value = "Create Sponsor Rep Account",
                   >';
echo '</fieldset>';
echo '</form>';
echo '</div>';
?>