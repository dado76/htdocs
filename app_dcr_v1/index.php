<!DOCTYPE html>
<html>

<?php

include("menu.php");
 ?>
 <main class="content">
    <article><body>

<center>  <h2>Bienvenu
 <?php
 echo $_SESSION["username"];
    $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
    $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);

 $result = $bdd->prepare("SELECT * FROM carte_sims");
 $result->execute();
 $array = $result->fetchALL();
 $nb = count($array);

 ?>
 <br>
 <br>Nombres de carte sims enregistrer :
 <?php
 echo $nb;

 $result1 = $bdd->prepare("SELECT * FROM bom");
 $result1->execute();
 $array = $result1->fetchALL();
 $nb1 = count($array);

 // ?>
 <br>
 <br>Nombres de Bennes à ordures :
 <?php
 echo $nb1;

 // ?>
 <?php


 $result2 = $bdd->prepare("SELECT * FROM radio");
 $result2->execute();
 $array = $result2->fetchALL();
 $nb2 = count($array);

 // ?>
 <br>
 <br>Nombres de Radio enregistrer :
 <?php
 echo $nb2;

 // ?>
 </h2>
</center>
 </table>
 </article>

 <!-- INCLUDE DU MENU -->
