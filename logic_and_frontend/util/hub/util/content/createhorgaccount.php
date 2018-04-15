<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/13/2018
 * Time: 11:35 AM
 */
echo '<div class="content" id="createhorgaccount">';
echo 'AAAAA';
echo '<form action="./util/content/helper/docreatehorgaccount.php" method="POST">';
echo '<fieldset>';
echo '<legend>CREATE HACKATHON ORG MEMBER ACCOUNT</legend>';
echo 'First Name * <input type = "text",
                   name = "firstname",
                   value = "",
                   id = "firstnamebox",
                   style = "display: block;" required/>';
echo 'Last Name * <input type = "text",
                   name = "lastname",
                   value = "",
                   id = "lastnamebox",
                   style = "display: block;" required>';
echo 'Address * <input type = "text",
                   name = "address",
                   value = "",
                   id = "address",
                   style = "display: block;" required>';
echo 'Zipcode * <input type = "text",
                   name = "zipcode",
                   value = "",
                   id = "zipcode",
                   maxlength="8"
                   style = "display: block;" required>';
echo 'Phonenumber * <input type = "text",
                   name = "phonenumber",
                   value = "",
                   id = "phonenumber",
                   maxlength="15"
                   style = "display: block;" required>';
echo 'Email * <input type = "text",
                   name = "email",
                   value = "",
                   id = "email",
                   style = "display: block;"required>';
echo 'Password * <input type = "text",
                   name = "password",
                   value = "",
                   id = "password",
                   style = "display: block;" required>';
echo '<br><br><br>Is Admin: <input type = "checkbox"
                   name = "hisadmin"
                   value = ""
                   id = "hischeckout"
                   style = "display: inline;">|| ';
echo 'Is Judge: <input type = "checkbox"
                   name = "hisjudge"
                   value = ""
                   id = "hisjudge"
                   placeholder=""
                   style = "display: inline;">|| ';
echo 'Is Checkout Worker: <input type = "checkbox"
                   name = "hischeckoutworker"
                   value = ""
                   id = "hischeckoutworker"
                   placeholder=""
                   style = "display: inline;"><br><br>';
echo '<br><input type = "submit",
            	   name = "btnSubmit",
                   style = "display:block;"
                   value = "Create Sponsor Rep Account",
                   >';
echo '</fieldset>';
echo '</form>';
echo '</div>';
?>