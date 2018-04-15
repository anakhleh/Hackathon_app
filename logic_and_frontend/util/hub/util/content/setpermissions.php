<?php
/**
 * Created by PhpStorm.
 * User: wispi
 * Date: 4/13/2018
 * Time: 12:26 AM
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
echo '<div class="content" id="setpermissions">';
echo '<button type="button" onclick="document.getElementById(\'sethorg\').style.display=\'block\';
                                     document.getElementById(\'setsponsorrep\').style.display=\'none\';">Hackathon Org Members</button> | ';
echo '<button type="button" onclick="document.getElementById(\'sethorg\').style.display=\'none\';
                                     document.getElementById(\'setsponsorrep\').style.display=\'block\';">Sponsor Reps</button>';
echo '<form method="POST" action="./util/content/helper/dosethorgpermissions.php" id="sethorg" style="display:none">';
echo '<fieldset>';
echo '<p>UPDATE HACKATHON ORG MEMBER PERMISSIONS</p>';
echo 'Email of user to update: <input type = "text"
                   name = "hemail"
                   value = ""
                   id = "hemail"
                   style = "display: block;" required/>';
echo '<hr>';
echo 'Is Admin: <input type = "checkbox"
                   name = "hisadmin"
                   value = ""
                   id = "hisadmin"
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
                   style = "display: inline;"><br><br><br>';
echo '<input type="submit" value="Set Permissions">';
echo '</fieldset>';
echo '</form>';
echo '<form method="POST" action="./util/content/helper/dosetsponsorreppermissions.php" id="setsponsorrep">';
echo '<fieldset>';
echo '<p>UPDATE SPONSOR REPRESENTATIVE PERMISSIONS</p>';
echo 'Email of user to update: <input type = "text"
                   name = "semail"
                   value = ""
                   id = "semail"
                   style = "display: block;" required/><hr>';
echo 'Is Judge: <input type = "text"
                   name = "sisjudge"
                   value = ""
                   id = "sisjudge"
                   style = "display: inline;" required/>';
echo '<input type="submit" value="Set Permissions">';
echo '</fieldset>';
echo '</form>';

echo '<br>';
echo '<script>document.getElementById(\'sethorg\').style.display=\'block\';
              document.getElementById(\'setsponsorrep\').style.display=\'none\';</script>';

$sql = "SELECT * FROM `hOrgPermissions`";
$result = $conn->query($sql);
echo 'HACKATHON ORG CURRENT PERMISSIONS';
echo '<table>';
echo '<tr>';
echo '<th> Email </th>';
echo '<th> First Name </th>';
echo '<th> Last Name </th>';
echo '<th> Address </th>';
echo '<th> Zip Code </th>';
echo '<th> Phonenumber </th>';
echo '<th> Is Checkout Worker?</th>';
echo '<th> Is Admin? </th>';
echo '<th> Is Judge? </th>';
echo '</tr>';

while($row = $result->fetch_array()){
    echo '<tr>';
    echo '<td> '.$row['email'].' </td>';
    echo '<td> '.$row['firstname'].' </td>';
    echo '<td> '.$row['lastname'].' </td>';
    echo '<td> '.$row['address'].' </td>';
    echo '<td> '.$row['zipcode'].' </td>';
    echo '<td> '.$row['phonenumber'].' </td>';
    if($row['isCheckoutWorker(H.email)']){
        echo '<td>✔</td>';
    } else {
        echo '<td></td>';
    }
    if($row['isAdmin(H.email)']){
        echo '<td>✔</td>';
    } else {
        echo '<td></td>';
    }
    if($row['isJudge(H.email)']){
        echo '<td>✔</td>';
    } else {
        echo '<td></td>';
    }
    echo '</tr>';
}

echo '</table>';
echo '<br><br>';
$sql = "SELECT * FROM `sponsorRepPermissions`";
$result = $conn->query($sql);
echo 'SPONSOR REP PERMISSIONS';
echo '<table>';
echo '<tr>';
echo '<th> Email </th>';
echo '<th> First Name </th>';
echo '<th> Last Name </th>';
echo '<th> Title </th>';
echo '<th> Is Judge? </th>';
echo '</tr>';

while($row = $result->fetch_array()){
    echo '<tr>';
    echo '<td> '.$row['email'].' </td>';//✔
    echo '<td> '.$row['firstname'].' </td>';
    echo '<td> '.$row['lastname'].' </td>';
    echo '<td> '.$row['title'].' </td>';
    if($row['isJudge(S.email)']){
        echo '<td>✔</td>';
    } else {
        echo '<td></td>';
    }
    echo '</tr>';
}

echo '</table>';
echo '</div>';
?>