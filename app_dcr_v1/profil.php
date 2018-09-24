<!DOCTYPE html>
<html>

<?php

include("menu.php");
 ?>
<?php

 error_reporting(0);

 ?>




<! ------ HEADER DE A PAGE------>

<?php

include("header.php");
 ?>

<! ------FIN DE HEADER------>



<main class="content">
   <article><body>

 <h2>Nom d'utilisateur</h2>

 <h2>
<?php
echo $_SESSION["username"];
?>
<br>
<?php
   $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
   $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);

$result = $bdd->prepare("SELECT * FROM carte_sims");
$result->execute();
$array = $result->fetchALL();
$nb = count($array);
$ID = $_SESSION["username"];
$reponse = $bdd->query("SELECT * FROM users WHERE username= '$ID' ");
while ($donnees = $reponse->fetch())


   echo $donnees[email];

?>
<br>

</h2>


</div>
<!-- INCLUDE DU MENU -->

<?php
//:require('db.php'); include pour base de donnée
////include("auth.php"); include pour auth

include("menu1.php");
 ?>

<!-- FIN INCLUDE DU MENU -->
