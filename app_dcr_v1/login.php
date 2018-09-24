
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="fiche.css" rel="stylesheet" type="text/css" />
<meta charset="utf-8">
<title>Login</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
<?php
	require('db.php');
	session_start();
    // If form submitted, insert values into the database.
    if (isset($_POST['username'])){

		$username = stripslashes($_REQUEST['username']); // removes backslashes
		$username = mysqli_real_escape_string($con,$username); //escapes special characters in a string
		$password = stripslashes($_REQUEST['password']);
		$password = mysqli_real_escape_string($con,$password);

	//Checking is user existing in the database or not
        $query = "SELECT * FROM `users` WHERE username='$username' and password='".md5($password)."'";
		$result = mysqli_query($con,$query) or die(mysqli_error());
		$rows = mysqli_num_rows($result);
        if($rows==1){
			$_SESSION['username'] = $username;
			header("Location: index.php"); // Redirect user to index.php
            }else{
				echo "<div class='form'><h3>Username/password is incorrect.</h3><br/>Click here to <a href='login.php'>Login</a></div>";
				}
    }else{
?>

<div class="form-style-10">
 <div class="section">
   <div class="inner-wrap">
		 <h1> CONNEXION </h1>
    <form  action="" method="post" name="login" class="form-signin">





<input type="text" class="form-control" name="username" required="" autofocus="" />


<input type="password"  class="form-control"  name="password"  required"" autofocus=""  />


<button class="btn btn-lg btn-primary btn-block" name="submit" type="submit" value="Connexion">Connexion</button>

</form>
<br>
<center>
<a href='registration.php'>Crée un compte ICI :</a></p>
</center>

</form>


<?php }
//<p>Not registered yet? <a href='registration.php'>Register Here</a></p> A RAJOUTEZR DANS HTML POUR INSCRIPTION

?>



</body>
</html>
