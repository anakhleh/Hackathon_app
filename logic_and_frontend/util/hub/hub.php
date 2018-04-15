<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="./hub.css">
    <script src="./util/jquery-3.3.1.min.js"></script>
    <script src="hub.js"></script>
</head>
<body>
	<main>
        <div class="row">
		    <div class="column left">
                HubOptions
			    <?php include('util/usermenu.php'); ?>
	    	</div>
		    <div class ="column right">
                ChosenOption
                <?php include('util/usercontent.php'); ?>
            </div>
        </div>
	</main>
	<footer>Alexander Nakhleh, fv3491@wayne.edu</footer>
</body>

</html>