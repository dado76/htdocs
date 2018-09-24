<!DOCTYPE html>
<html>

<?php

include("menu.php");
 ?>
  <article>
    <center>
      <br>
      <br>
    <form name="Codification" method="post">

    <input type="submit" name="Codification"  />

    <?php





      $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
    $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);
    try{

    $sql1 = "SELECT DISTINCT Codification FROM radio";
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

    </input>

    <br>
     <h1><a href="radioadd.php"<i class="fa fa-plus">Ajouter</a>


      <a href="radioExport.php"<i class="fa fa-file-excel-o">Excel</a>


    <a href="" id="impression" type="button" onclick="imprimer_page()"<i class="fa fa-print" >Imprimer</a>
    </center>
    <?php


    if(!isset($Codification)){









    ?>
    	</table>
    <main class="content">
    <table class="blueTable">
    <tr>
    <th>Codification </th>
    <th>Num</th>

    <th>Modifier</th>
     <th>Supprimer</th>
      <th>Voir</th>
     </tr>

    <?php

    try
    {
       $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
       $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);


       // On recupere tout le contenu de la table news
    $reponse = $bdd->query("SELECT * FROM radio ORDER BY Codification");

    // On affiche le resultat
    while ($donnees = $reponse->fetch())
    {
    ?>


    <tr class="newspaper-b">
    <?php
       //On affiche les données dans le tableau

       echo "<td> $donnees[Codification] </td>";
       echo "<td> $donnees[Num] </td>";

     ?>
  	<td align="center"><a href="radioedit.php?id=<?php echo $donnees["Codification"]; ?>">
  	<i class="fa fa-eyedropper" style="color:#2E64FE;></i><img src"logo.jpg" border="0" text-color="white"></a></td>


  	<td align="center"><a href="radiodel.php?id=<?php echo $donnees["Codification"]; ?>">
  	<i class="fa fa-trash" style="color:#2E64FE;></i><img src"logo.jpg" border="0" text-color="white"></a></td>


       <td align="center"><a href="radioview.php?id=<?php echo $donnees["Codification"]; ?>">
       <i class="fa fa-eye" style="color:#2E64FE;></i><img src"logo.jpg" border="0" text-color="white"></a></td>

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

    </table>

    </class>
    <?php


}
    elseif  ($Codification=="TOUS") {
      ?>
      <table class="blueTable">

       <tr>
         <main class="content">
         <table class="blueTable">
         <tr>
         <th>Codification </th>
         <th>Num</th>
         <th>Modifier</th>
          <th>Supprimer</th>
           <th>Voir</th>
          </tr>
        </tr>

       <?php


      try
      {
          $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
          $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);


          // On recupere tout le contenu de la table news
      $reponse = $bdd->query('SELECT * FROM radio ORDER BY Codification');

      // On affiche le resultat
      while ($donnees = $reponse->fetch())
      {
      ?>
        <?php
          //On affiche les données dans le tableau
        echo "<td> $donnees[Codification] </td>";
          echo "<td> $donnees[Num] </td>";

      	?>
  	<td align="center"><a href="radioedit.php?id=<?php echo $donnees["Codification"]; ?>">
  	<i class="fa fa-eyedropper" style="color:#2E64FE;></i><img src"logo.jpg" border="0" text-color="white"></a></td>


  	<td align="center"><a href="radiodel.php?id=<?php echo $donnees["Codification"]; ?>">
  	<i class="fa fa-trash" style="color:#2E64FE;></i><img src"logo.jpg" border="0" text-color="white"></a></td>


       <td align="center"><a href="radioview.php?id=<?php echo $donnees["Codification"]; ?>">
       <i class="fa fa-eye" style="color:#2E64FE;></i><img src"logo.jpg" border="0" text-color="white"></a></td>

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
      	</table>

<?php
	}
	else

		{
		  ?>
  <table class="blueTable">

   <tr>
     <main class="content">
     <table class="blueTable">
     <tr>
     <th>Codification </th>
     <th>Num</th>

     <th>Modifier</th>
      <th>Supprimer</th>
       <th>Voir</th>
      </tr>
    </tr>

   <?php


  try
  {
      $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
      $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);


      // On recupere tout le contenu de la table news
  $reponse = $bdd->query( "SELECT * FROM radio WHERE Codification='$Codification'" );

  // On affiche le resultat
  while ($donnees = $reponse->fetch())
  {
  ?>
    <?php
      //On affiche les données dans le tableau

      echo "<td> $donnees[Codification] </td>";
      echo "<td> $donnees[Num] </td>";

  	?>
  	<td align="center"><a href="radioedit.php?id=<?php echo $donnees["Codification"]; ?>">
  	<i class="fa fa-eyedropper" style="color:#2E64FE;></i><img src"logo.jpg" border="0" text-color="white"></a></td>


  	<td align="center"><a href="radiodel.php?id=<?php echo $donnees["Codification"]; ?>">
  	<i class="fa fa-trash" style="color:#2E64FE;></i><img src"logo.jpg" border="0" text-color="white"></a></td>


       <td align="center"><a href="radioview.php?id=<?php echo $donnees["Codification"]; ?>">
       <i class="fa fa-eye" style="color:#2E64FE;></i><img src"logo.jpg" border="0" text-color="white"></a></td>

  	</tr>



  		<?php

  }
  $reponse->closeCursor();
  }
  catch(Exception $e)
  {
      die('Erreur : '.$e->getMessage());
  }



  		}

  ?>
  	</table>



  </article>
</div>
</body>
