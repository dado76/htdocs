<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Ajouter sims</title>
<link rel="stylesheet" href="styles.css" />
<body style="background-color:white;">
<header>

<center><h1> Ajouter sim <br></h1> <center>
</header>

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


<?php

$request->closeCursor();
}
catch(Exception $e)
{
    die('Erreur : '.$e->getMessage());
}
?>

<?php

 

   $update="DELETE FROM carte_sims WHERE Codification = '$Codification'";

    // Prepare statement
    $stmt = $bdd->prepare($update);

    // execute the query
    $stmt->execute();
$status= 'carte sims Supprimer';
    // echo a message to say the UPDATE succeeded
    echo '<p style="color:#04B431;">'.$status.'</p>';
header("Refresh: 1;url=sim.php");

    

	
?>