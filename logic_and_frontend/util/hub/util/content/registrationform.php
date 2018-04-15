<?php
$servername = "";
$username = "";
$password = "";
$schemaname = "";

$conn = new mysqli($servername, $username, $password, $schemaname);

if ($conn->connect_error) {
    echo "conn failed";
    die("Connection failed: " . $conn->connect_error);
}

//$username = $_SESSION['username'];
$username = 'testgeneraluser';

$sql = "SELECT * FROM `submitsRegistration`
        WHERE `submitterEmail` = '$username'";
$result = $conn->query($sql);

if (mysqli_num_rows($result)!=0){
    echo '<div class="content" id="registrationform"> Thank you for submitting a registration form. You should hear back from us shortly regarding your application. </div>';
} else{
    echo '<div class="content" id="registrationform">';
    echo '<form action="./util/content/helper/registerparticipant.php" method="POST">';
    echo '<fieldset>';
    echo '<legend> Registration Form to Compete </legend>';
    echo 'First Name: <input type = "text",
                   name = "firstname",
                   value = "",
                   id = "firstnamebox",
                   style = "display: block;" />';
    echo 'Last Name:<input type = "text",
                   name = "lastname",
                   value = "",
                   id = "lastnamebox",
                   style = "display: block;" >';
    echo 'Address: <input type = "text",
                   name = "address",
                   value = "",
                   id = "addressbox",
                   style = "display: block;" >';
    echo 'Zipcode: <input type = "text",
                   name = "address",
                   value = "",
                   id = "addressbox",
                   style = "display: block;" >';
    echo 'Phonenumber: <input type = "text",
                   name = "address",
                   value = "",
                   id = "addressbox",
                   style = "display: block;" >';
    echo 'Employment/Development Status: <select name="employmentfield">
                                         <option value="professionaldev">professional dev</option>
                                         <option value="hobbyist">hobbyist</option>
                                         <option value="student">student</option>
                                         </select><br/>';
    echo 'Why do you want to go? : <textarea type,
                   name = "whywantstogo",
                   value = "",
                   id = "addressbox",
                   style = "display: block;" ></textarea>';
    echo 'Skills: <textarea type,
                   name = "skills",
                   value = "",
                   id = "addressbox",
                   style = "display: block;" ></textarea>';
    echo '<input type = "submit",
            	   name = "btnSubmit",
                   style = "display:block;"
                   value = "Submit",
                   >';
    echo '</fieldset>';
    echo '</div>';
}
?>