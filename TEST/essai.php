<!DOCTYPE html>
<?php
  include("auth.php");

?>
<html>

  <head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css" />
    <title>Hello!</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>

   </header>
  <?php  include("menu.php");?>
   <nav><div class="sidenav">
<?php include("test.php")?>
</div></nav>
   <main>


<div class="form-style-user">
  <center>

<img src="user.png" color="#336699" width="50" height="70">

<form>



<P> Nom d'utilisateur : <p>     <?php

echo $_SESSION["username"];
$user=$_SESSION["username"];
try
{
 $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
 $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);


 // On recupere tout le contenu de la table news
  $reponse = $bdd->query( "SELECT * FROM users WHERE username='$user'" );

// On affiche le resultat
while ($donnees = $reponse->fetch())
{
?>


<p> Email :  <p>
<?php
 //On affiche les données dans le tableau

 echo "<td> $donnees[email] </td>";

 ?>
<p>Date de création <p>
  <?php
  echo "<td> $donnees[trn_date] </td>";

 ?>
<P> Droit : <p>
  <?php
  echo $donnees['rank'];
?>  <br><?php
if ($donnees['rank']=="0")

  echo "utilisateur" ;

else
echo  "vous éte admin";




 ?>

</tr>

<?php

}
$reponse->closeCursor();
}
catch(Exception $e)
{
 die('Erreur : '.$e->getMessage());
}
?>

<br>
<br>



</div>
</center>
     </main>
     <aside>  <center>



       </center></aside>

  </body>
</html>
