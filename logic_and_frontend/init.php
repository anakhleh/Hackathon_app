<?php
	// This file itself will only seed the database, 
	// and is meant to be called from another module
	// Because I am hosting with no control over creating a database,
	// I am really only limited to dealing with the tables in it.
	$servername = "";
    $username = "";
    $password = "";
    $schemaname = "";

    $conn = new mysqli($servername, $username, $password, $schemaname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } 

    //check to see if the users table exists
    $table_exist_check = "SELECT * FROM `test_users`";
    $result = $conn->query($table_exist_check);

    if(empty($result)){
    	$table_create = 
    	"CREATE TABLE `test_users`(
			`username` varchar(255),
			`password` varchar(255),
			primary key (`username`)
		);";
		$result = $conn->query($table_create);

		$table_seed = 
		"INSERT INTO test_users(`username`, `password`) 
			VALUES('testusername', 'testpassword');";
		$result = $conn->query($table_seed);
    }
    
	$conn->close();
?>
