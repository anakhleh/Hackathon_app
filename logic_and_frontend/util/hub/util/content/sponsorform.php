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
$username = 'testsponsor';

$sql = "SELECT * FROM `sponsor`
        WHERE `contactEmail` = '$username'";
$result = $conn->query($sql);

if (mysqli_num_rows($result)!=0){
    echo '<div class="content" id="sponsorform"> Thank you for submitting a registration form to sponsor the event. You should hear back from us shortly regarding your application. </div>';
} else{
    echo '<div class="content" id="sponsorform">';
    echo '<form action="./util/content/helper/registersponsor.php" method="POST">';
    echo '<fieldset>';
    echo '<legend> Registration Form to Compete </legend>';
    echo 'Company Name: <input type = "text"
                   name = "companyname"
                   value = ""
                   id = "firstnamebox"
                   style = "display: block;" />';
    echo 'Company Description:<textarea 
                   name = "companydescription"
                   rows="4"
                   cols="80"
                   id = "lastnamebox"
                   style = "display: block;" ></textarea>';
    echo 'Main Or Service You Provide:
                    <textarea
                   name = "mainproducts"
                   rows="4"
                   cols="80"
                   id = "addressbox"
                   style = "display: block;" >(If you are planning to provide equipment, please write so here)</textarea>';
    echo 'Monetary Donation (in USD): <input type = "text"
                   name = "monetarydonation"
                   value = ""
                   id = "addressbox"
                   style = "display: block;" >';
    echo 'Contact Phonenumber: <input type = "text",
                   name = "phonenumber"
                   value = ""
                   id = "addressbox"
                   style = "display: block;" >';
    echo '<input type = "submit"
            	   name = "btnSubmit"
                   style = "display:block;"
                   value = "Submit"
                   >';
    echo '</fieldset>';
    echo '</div>';
}
?>