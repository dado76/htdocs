

<?php

try
{
    $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
    $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);
$Codification=$_REQUEST['id'];


$request= $bdd->prepare('SELECT * FROM carte_sims WHERE Codification = :Codification');
$response = $request->execute(array('Codification' => $Codification));

$donnees = $request->fetch();
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Modifier</title>
<head>
	<link href="fiche.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<body>


<div class="form-style-10">
 <div class="section">
   <div class="inner-wrap">




<h1> Modifier </h1>

    <form  method="post" action="">


<label>Codification</label>
<input type="text" name="Codification" placeholder="Enter Name" required value="<?php echo $donnees['Codification'];?>" />

<label>Carte sims</label>
<input type="text" name="sim" placeholder="N/S carte sims" required value="<?php echo $donnees['sim'];?>" />
<br>
<br>
<label>Balise</label>
<input type="text" name="balise" placeholder="N/S Balise" required value="<?php echo $donnees['balise'];?>" />
<label>Téléphone</label>
<input type="text" name="telephone" placeholder="Numéro tel" required value="<?php echo $donnees['telephone'];?>" />
<br>
<br>
<label>ID et Port</label>
<input type="text" name="IDPORT" placeholder="ID et Port" required value="<?php echo $donnees['IDPORT'];?>" />
<label>Immatriculation</label>
<input type="text" name="immatriculation" placeholder="Immatriculation" required value="<?php echo $donnees['immatriculation'];?>" />
<br>
<br>
<label>Statut</label>
<input type="text" name="statut" placeholder="Statut" required value="<?php echo $donnees['statut'];?>" />
<label>Probléme</label>
<input type="text" name="probleme" placeholder="Probléme" required value="<?php echo $donnees['probleme'];?>" />
<br>
<br>
<label>Navigation</label>
<input type="text" name="navigation" placeholder="Navigation" required value="<?php echo $donnees['navigation'];?>" />

<label>LC</label>
<input type="text" name="LC" placeholder="LC" required value="<?php echo $donnees['LC'];?>" />
<br>
<br>
<label>Pesée Embarquée</label>
<input type="text" name="pesee" placeholder="Type pesée" required value="<?php echo $donnees['pesee'];?>" />
<br>
<br>
<br>

<center><input name="submit" type="submit" value="Modifier" /></center>

<?php

$request->closeCursor();
}
catch(Exception $e)
{
    die('Erreur : '.$e->getMessage());
}
?>

<?php

if(isset($_POST['submit'])) // Si on clique sur S'inscrire
    {


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




   $update="update carte_sims set sim='$sim', balise='$balise', telephone='$telephone', IDPORT='$IDPORT', immatriculation='$immatriculation', statut='$statut',
probleme='$probleme', navigation='$navigation', LC='$LC', pesee='$pesee' WHERE Codification = '$Codification'";

    // Prepare statement
    $stmt = $bdd->prepare($update);

    // execute the query
    $stmt->execute();
$status= '<p style="color:#04B431;">information mise à jour';
    // echo a message to say the UPDATE succeeded
    echo $stmt->rowCount() . '<p style="color:#04B431;">'.$status.'</p>';
header("Refresh: 7;url=sim.php");


}

?>
