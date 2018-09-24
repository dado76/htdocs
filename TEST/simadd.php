


<?php

try
{
    $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
    $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);


?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Ajouter sims</title>
<link rel="stylesheet" href="fiche.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<body>


<div class="form-style-10">
 <div class="section">
   <div class="inner-wrap">
<h1> AJOUTER </h1>
<form  method="post" action="">



<label>Codification</label>
<input type="text" name="Codification" placeholder="Enter Name" required value="" />

<label>Carte sims</label>
<input type="text" name="sim" placeholder="N/S carte sims" required value="" />
<br>
<br>
<label>Balise</label>
<input type="text" name="balise" placeholder="N/S Balise" required value="" />
<label>Téléphone</label>
<input type="text" name="telephone" placeholder="Numéro tel" required value="" />
<br>
<br>
<label>ID et Port</label>
<input type="text" name="IDPORT" placeholder="ID et Port" required value="" />
<label>Immatriculation</label>
<input type="text" name="immatriculation" placeholder="Immatriculation" required value="" />
<br>
<br>
<label>Statut</label>
<input type="text" name="statut" placeholder="Statut" required value="" />
<label>Probléme</label>
<input type="text" name="probleme" placeholder="Probléme" required value="" />
<br>
<br>
<label>Navigation</label>
<input type="text" name="navigation" placeholder="Navigation" required value="" />

<label>LC</label>
<input type="text" name="LC" placeholder="LC" required value="" />
<br>
<br>
<label>Pesée Embarquée</label>
<input type="text" name="pesee" placeholder="Type pesée" required value="" />
<br>
<br>
<br>

<center><input name="submit" type="submit" value="Modifier" /></center>

<?php


}
catch(Exception $e)
{
    die('Erreur : '.$e->getMessage());
}
?>

<?php

if(isset($_POST['submit'])) // Si on clique sur S'inscrire
    {

$Codification=$_REQUEST['Codification'];
$sim =$_REQUEST['sim'];
$balise =$_REQUEST['balise'];
$telephone =$_REQUEST['telephone'];
$IDPORT =$_REQUEST['IDPORT'];
$immatriculation =$_REQUEST['immatriculation'];
$statut =$_REQUEST['statut'];
$probleme =$_REQUEST['probleme'];
$navigation =$_REQUEST['navigation'];
$LC =$_REQUEST['LC'];
$pesee =$_REQUEST['pesee'];




   $update="insert into carte_sims set Codification = '$Codification', sim='$sim', balise='$balise', telephone='$telephone', IDPORT='$IDPORT', immatriculation='$immatriculation', statut='$statut',
probleme='$probleme', navigation='$navigation', LC='$LC', pesee='$pesee'";

    // Prepare statement
    $stmt = $bdd->prepare($update);

    // execute the query
    $stmt->execute();
$status= 'carte sims ajouter';
    // echo a message to say the UPDATE succeeded
    echo $stmt->rowCount() . '<p style="color:#04B431;">'.$status.'</p>';
header("Refresh: 6;url=sim.php");


}

?>
