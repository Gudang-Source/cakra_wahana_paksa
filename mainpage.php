<?php
	header('Cache-Control: no-cache');

	$fpurl = "frontpage.php";
	$rpurl = "roompage.php";
	
	$fname = $_POST['fname'];
	$lname = $_POST['lname'];
	$email = $_POST['email'];
	$gender = $_POST['gender'];
	
	if(!$email)
	{
		if (headers_sent()){
			die('<script type="text/javascript">window.location="' . $fpurl . '";</script>');
		} else {
			header('Location: ' . $fpurl);
			exit();
		}
	}
?>

<!doctype html>
<html>
<head>
    <title><?php require("name.php"); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0" />
	<script src="roompage/lib/jquery/jquery-1.8.2.min.js"></script>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link href="css/bootstrap.min.css" rel="stylesheet">
   
	<script type="text/javascript">
		window.history.pushState(null,null,'?menu=create');
		window.onpopstate = function(event) {
			window.location.replace('<?php echo "$fpurl" ?>');
		};
		
		function menuCreate() {
			document.getElementById("errorMessage").innerHTML = "";
			document.forms["roomForm"]["roomemail"].value = "<?php $email ?>";
			document.getElementById("joinButton").className = "inputbutton";
			document.getElementById("joinButton").onclick = function(){menuJoin();};
			document.getElementById("createButton").className = "heldbutton";
			document.getElementById("createButton").onclick = function(){};
			document.getElementById("menuFrame").src = "menuCreateRoom.php";
		}
		
		function menuJoin() {
			document.getElementById("errorMessage").innerHTML = "";
			document.getElementById("createButton").className = "inputbutton";
			document.getElementById("createButton").onclick = function(){menuCreate();};
			document.getElementById("joinButton").className = "heldbutton";
			document.getElementById("joinButton").onclick = function(){};
			document.getElementById("menuFrame").src = "menuJoinRoom.php";
		}
	</script>

</head>
<body>
	<section class="header">
		<div class="title"><?php require("name.php"); ?></div>
	</section>
	<div id="page" class="clearfix">	
	    <div class="col-md-4">
	    	<img src="img/logo1.jpg">
		</div>	
	    <div id="content" class="col-md-4" style="text-align:center">
			<p>Hi, <?php echo("$fname") ?>!</p>
			<div class="form-group">
				<button class="btn btn-primary" id="createButton" type="button">Create Room</button> Or 
				<button class="btn btn-primary" id="joinButton" type="button" onclick="menuJoin();">Join Room</button>
			</div>
			<br>
			<iframe class="menuFrame" id="menuFrame" src="menuCreateRoom.php" frameborder="0">Your browser does not support iframe :(</iframe>
			<br>
			<br>
			<form id="roomDataForm" name="roomForm" action="<?php echo "$rpurl" ?>" method="post">
				<input type="hidden" name="status">
				<input type="hidden" name="email" value="<?php echo("$email") ?>">
				<input type="hidden" name="fname" value="<?php echo("$fname") ?>">
				<input type="hidden" name="lname" value="<?php echo("$lname") ?>">
				<input type="hidden" name="gender" value="<?php echo("$gender") ?>">
				<input type="hidden" name="roomemail">
				<input type="hidden" name="roomname">
				<input type="hidden" name="roomport">
			</form>
			<output id="errorMessage"></output>
		</div>
		<div class="col-md-4">
			<img src="img/logo1.jpg">
		</div>	
	</div> 
</body>
</html>
