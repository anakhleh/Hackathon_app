<?php
    //Create and seed database tables if needed
    // include 'init.php';

    // Server Settings
    $servername = "";
    $username = "";
    $password = "";
    $schemaname = "";


    session_start();

    // Create connection
    $conn = new mysqli($servername, $username, $password, $schemaname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } 

    $submittedUsername = $_POST['username'];
    $submittedPassword = $_POST['password'];

    if(isset($_POST['btnSubmit'])){
        $sql = "SELECT *
                FROM `db_user`
                WHERE `email` = '$submittedUsername'
                  AND `password` = '$submittedPassword' ";
        echo '#';
        // Execute the actual SQL query
        $result = $conn->query($sql);
        $row = $result->fetch_array();
        echo '1';
        echo $conn->error;
        $_SESSION['username']=$submittedUsername;
//        echo 'B:'.$row['email'].'/'.$row['password'];
        // die();
        if ($row['email'] == $submittedUsername 
            && $row['password'] == $submittedPassword ) {
            echo '2';
            header('Location: http://alexmanor.com/csc4710/alex/finalproject/hub/hub.php'); echo '3';
        } else {
            echo '4';
            header('Location: http://alexmanor.com/csc4710/alex/finalproject/login_failure.php');
        }
    } else {
        $sql = "INSERT INTO db_user(email, password)
                VALUES ('$submittedUsername', '$submittedPassword')";
        $result = $conn->query($sql);

        $_SESSION['submittedUsername'] = $submittedUsername;

        if($result){
            header('Location: http://alexmanor.com/csc4710/alex/finalproject/signup_success.php'); 
        } else {
            header('Location: http://alexmanor.com/csc4710/alex/finalproject/signup_failure.php'); 
        }
    }
    die();
?>

