<?php
    //Create and seed database tables if needed
//    include 'init.php';


    // Server Settings
    $servername = "";
    $username = "";
    $password = "";
    $schemaname = "";


    if (!isset($_SESSION)) { session_start(); }

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
                FROM `db_users`
                WHERE `username` = '$submittedUsername'
                  AND `password` = '$submittedPassword' ";

        // Execute the actual SQL query
        $result = $conn->query($sql);
        $row = $result->fetch_array();
        $_SESSION['username'] = $submittedUsername;

        if ($row['username'] == $submittedUsername 
            && $row['password'] == $submittedPassword ) {
            header('Location: http://alexmanor.com/csc4710/alex/finalproject/login_success.php'); 
        } else {
            header('Location: http://alexmanor.com/csc4710/alex/finalproject/login_failure.php');
        }
    } else {
        $sql = "INSERT INTO test_users(username, password)
                VALUES ('$submittedUsername', '$submittedPassword')";
        $result = $conn->query($sql);

        $_SESSION['username'] = $submittedUsername;

        if($result){
            header('Location: http://alexmanor.com/csc4710/alex/finalproject/signup_success.php'); 
        } else {
            header('Location: http://alexmanor.com/csc4710/alex/finalproject/signup_failure.php'); 
        }
    }
    die();
?>

