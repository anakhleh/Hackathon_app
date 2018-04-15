<!DOCTYPE html>
<html>
<head>
    <title>Signup Success</title>
</head>
<body>
    <p>
    Success: Account under username <em>
    <?php 
    	session_start();
    	echo $_SESSION['submittedUsername'];
    ?>
    	</em> is now registered.
    </p>
</body>
</html>