<center>
         <form name="Codification" method="post">


<button type="submit" name="Codification">   <i class="fa fa-search">                         <br> Recherche</i>  </button>



<?php
                   $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
                 $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);
                 try{

                 $sql1 = "SELECT DISTINCT Codification FROM carte_sims";
                 $prepare = $bdd->prepare($sql1);
                 $prepare->execute();
                 //on stocke le résultat de la requête dans un array
                 $arrListe = $prepare->fetchall();
                 } catch (Exception $e){
                 die('Erreur : ' . $e->getMessage());
                 }
                 ?>
                 <?php
                 Error_reporting(0);
                 // pour faire un menu déroulant présenter les différentes rubriques
                 echo "<select name='Codification' onChange='FocusObjet()'>";
                 echo "<OPTION SELECTED VALUE='TOUS'>TOUS</OPTION>";

                 foreach($arrListe as $L) {
                    $rbp = $L['Codification'];
                    echo "<OPTION VALUE='$rbp'> $rbp </OPTION>\n";
                 }
                 echo "</select>";
                 $Codification= $_POST['Codification'];


                 ?>
