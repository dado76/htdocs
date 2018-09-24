<!DOCTYPE html>
<html>
<nav>
    <link rel="stylesheet" href="style0.css" />
</nav>
   <main>
         <form  action="" method="post" name="login" class="form-signin">
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



         <div class="form-style-user">
           <center><img src="https://3d.codah.fr/img/logos/logo_codah_big.jpg" width="50" height="70">
                <h2>Centre technique des déchets </h2>


         <form>

          <form  action="" method="post" name="login" class="form-signin">




<h3> Nom d'utilisateur :</h3>

      <input type="text" class="form-control" name="username" required="" autofocus="" />
<br>

<h3>Mot de passe : </h3>
      <input type="password"  class="form-control"  name="password"  required"" autofocus=""  />

<br>
<br>
<button class="btn btn-lg btn-primary btn-block" name="submit" type="submit" value="Connexion">Connexion</button>

      </form>
       </div>

       </center>
</main>
  </body>
</html>

<?php }
//<p>Not registered yet? <a href='registration.php'>Register Here</a></p> A RAJOUTEZR DANS HTML POUR INSCRIPTION

?>
