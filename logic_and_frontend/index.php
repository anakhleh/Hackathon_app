
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- STYLESHEETS -->
    <!-- link rel="stylesheet" href="css/style.css" -->

    <!-- Simple JS Functions -->
    <script>
        function clearInputBoxes(){
            document.getElementById("usernametxtbox").value = ""
            document.getElementById("passwordtxtbox").value = ""
            return false
        }
        function clearUserNameBox(){
        	document.getElementById("usernametxtbox").value = ""
        }
        function clearPasswordBox(){
            document.getElementById("passwordtxtbox").value = ""
        }
    </script>

        
    <title>Test Authentication</title>
</head>
<body>
    <p>SIGN IN</p>
    <form action = "./util/auth.php" method="POST">
        <fieldset>
            <legend> Test Login </legend>
            Username: <input type = "text",
                   name = "username",
                   value = "username",
                   id = "usernametxtbox",
                   style = "display: block;" />
            Password: <input type = "password",
                   name = "password",
                   value = "password", 
                   id = "passwordtxtbox",
                   style = "display: block;"/>
            <input type = "submit",
            	   name = "btnSubmit",
                   style = "display:block;"
                   value = "Submit",
                   >
            <input type = "submit" ,
            	   name = "btnSignup",
                   value = "Sign up",
                   style = "display: block;"
                   >
            <input type = "button",
            	   name = "btnClear",
                   value = "Clear",
                   style = "display: block;",
                   onclick = "clearInputBoxes();",
                   >
        </fieldset>
    </form>
</body>
</html>