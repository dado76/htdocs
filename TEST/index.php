<!DOCTYPE html>
  <?php
  require('db.php');
  include("auth.php");


   ?>
<?php include("menu.php")?>
   <nav><div class="sidenav">
<?php include("test.php")?>
</div></nav>
   <main>
       <div class="form-style-10">
       <h1>Carte Sims<span></span></h1>
       <form>

           <div class="inner-wrap">
                        <div class="section"><span>1</span>Carte sims</div>
                        <?php
                        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
                        $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);

                   $sql = "SELECT * FROM carte_sims";
                   $req = $bdd->prepare($sql);
                   $req->execute();
                   $array = $req->fetchALL();
                   $nb = count($array);

                   ?>
                   <?php
                   $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
                   $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);

              $sql1 = "SELECT * FROM carte_sims WHERE statut='EN SERVICE'";
              $req1 = $bdd->prepare($sql1);
              $req1->execute();
              $array1 = $req1->fetchALL();
              $nb1 = count($array1);


              ?>
              <?php
              $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
              $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);

         $sql2 = "SELECT * FROM carte_sims WHERE LC='TERBERG'";
         $req2 = $bdd->prepare($sql1);
         $req2->execute();
         $array2 = $req2->fetchALL();
         $nb2 = count($array2);


         ?>
<P> Nombre de balise : <p> <?php  echo $nb; ?>
<P> En fonction  : <p><?php  echo $nb1; ?>
<P> Equipé RFID : <p> <?php  echo $nb2; ?>
  <br>
  <br>
         <input type="button" class="button" value="Voir">

</div>
</div>
<div class="form-style-10">
<h1>Radio<span></span></h1>
<form>

    <div class="inner-wrap">
      <?php
      $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
      $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);

 $sql3 = "SELECT * FROM radio ";
 $req3 = $bdd->prepare($sql3);
 $req3->execute();
 $array3 = $req3->fetchALL();
 $nb3 = count($array3);

 ?>
                 <div class="section"><span>2</span>Radio</div>
<P> Nombre de radio :  <p>  <span><?php  echo $nb3; ?></span>
<?php
  $sql4 = "SELECT * FROM radio ";
  $req4 = $bdd->prepare($sql4);
  $req4->execute();
  $array4 = $req4->fetchALL();
  $nb4 = count($array4);

  ?>
<P> En fonction  : <p>
<P> En stock :  <p>
  <input type="button" class="button" value="Voir">

</div>
</div>
<div class="form-style-10">
<h1>Bom<span></span></h1>
<form>

    <div class="inner-wrap">
                 <div class="section"><span>3</span>Bom</div>
<P> Nombre de bom : <p>
<P> Utilisant une pesée  : <p>
<P> Utilisant RFID : <p>
  <input type="button" class="button" value="Voir">

</div>
</div>
<div class="form-style-10">
<h1>Tournée de référence<span></span></h1>
<form>

    <div class="inner-wrap">
                 <div class="section"><span>4</span>Tournée</div>
<P> Nombre de tournée : <p>
<P> Nombre de tournée CS : <p>
<P> Nombre de tournée OM : <p>
  <input type="button" class="button" value="Voir">

</div>
</div>
       </center>
</main>
<aside>
  <div class="form-style-user">
    <center>
  <img src="user.png" width="50" height="70">
</center>
  <form>



  <P> Nom d'utilisateur : <p>
  <P> Adresse @Mail : <p>
  <P> Droit : <p>
    <input type="button" class="button" value="Profil">
</div>
     </aside>
</div>
  </body>
</html>
