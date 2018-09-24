
<?php
require('db.php');
include("auth.php");
?>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Page de test</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="https://cdn.rawgit.com/rainabba/jquery-table2excel/1.1.0/dist/jquery.table2excel.min.js"></script>

	
</head>
		

  <nav class="col-1">
  <div class="navbar">
  <a href="/app2/home.php"><i class="fa fa-home"><br>Home</i></a>
  <a class="active" href="sim.php"><i class="fa fa-mobile-phone"><br>Géoloc</i></a>
     <a href="/app2/radio/radio.php"><i class="fa fa-wifi"><br>Radio</i></a>
   <a href="/app2/bom/bom.php"><i class="fa fa-truck"><br>BOM</i></a>
    <a href="/app2/plan/plan.php"><i class="fa fa-map"><br>Plan</i></a>
  <a href="/app2/logout.php"><i class="fa fa-times-circle"><br>Logout</i></a>
</div>
</nav>
 <body>

  <div class="col-2">
  	<img  src="logo.png" alt="logo" height="78" width="60" >
		<header><h2>Direction Collecte et Recyclage <br>Gestion du matériel informatique</h2></header>

    <article><body>
	 <th><h1><a href="simadd.php"><font color="#0080FF">Ajouter</h1></th></a>

 
    <main class="content">

    <table id="empTable">




  <tr>
 <th><a href="sim.php">Codification </th>

 <th><a class="link"  href="simSim.php">Sim</th>
 <th><a href="simBalise.php">Balise</th>
 <th><a href="simTel.php">Téléphone</th>
 <th><a href="simID.php">ID et Port</th>
 <th><a href="simImmat.php">immatriculation</th>
 <th><a href="simStatut.php">statut</th>
 <th><a href="simProb.php">probleme</th>
 <th><a href="simNav.php">navigation</th>
 <th><a href="simLC.php">Léve conteneur</th>
 <th><a href="simPese.php">Pesée embarquée</th>
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
$reponse = $bdd->query('SELECT * FROM carte_sims ORDER BY Codification');

// On affiche le resultat
while ($donnees = $reponse->fetch())
{
?>
<tr class="newspaper-b">
<?php
    //On affiche les données dans le tableau

    echo "<td> $donnees[Codification] </td>";
    echo "<td> $donnees[sim] </td>";
	echo "<td> $donnees[balise] </td>";
	echo "<td> $donnees[telephone] </td>";
	echo "<td> $donnees[IDPORT] </td>";
	echo "<td> $donnees[immatriculation] </td>";
	echo "<td> $donnees[statut] </td>";
	echo "<td> $donnees[probleme] </td>";
	echo "<td> $donnees[navigation] </td>";
	echo "<td> $donnees[LC] </td>";
	echo "<td> $donnees[pesee] </td>";
	?>
	<td align="center"><a href="simedit.php?id=<?php echo $donnees["Codification"]; ?>">
	<i class="fa fa-eyedropper" style="color:#2A88AD;></i><img src"logo.jpg" border="0" text-color="white"></a></td>
	
	
	<td align="center"><a href="simdel.php?id=<?php echo $donnees["Codification"]; ?>">
	<i class="fa fa-trash" style="color:#2A88AD;></i><img src"logo.jpg" border="0" text-color="white"></a></td>
	
	
     <td align="center"><a href="simview.php?id=<?php echo $donnees["Codification"]; ?>">
     <i class="fa fa-eye" style="color:#2A88AD;></i><img src"logo.jpg" border="0" text-color="white"></a></td>
	
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
<meta http-equiv="refresh" content="0;URL=sim.php">
</article>
    </main>
<script>
function showUser(str) {
    if (str == "") {
        document.getElementById("txtHint").innerHTML = "";
        return;
    } else {
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("txtHint").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET","getuser.php?q="+str,true);
        xmlhttp.send();
    }
}
</script>
  
  	<footer></footer></body>


    <script>
    $(document).ready(function () {
        $("#empTable").table2excel({
            filename: "sim.xls"
        });
    });
</script>
