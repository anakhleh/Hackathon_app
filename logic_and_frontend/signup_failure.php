<!DOCTYPE html>
<html>
<head>
    <title>Signup Failure</title>
</head>
<body>
    <p>
    Failure: Account under the username <em>
    <?php 
    	session_start();
    	echo $_SESSION['submittedUsername'];
    ?>
    	</em> has already been registered.
    </p>
</body>
</html>