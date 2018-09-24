

<?php

try
{
    $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
    $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);
$Codification=$_REQUEST['id'];


$request= $bdd->prepare('SELECT * FROM radio WHERE Codification = :Codification');
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

<label>Numéro d'appel</label>
<input type="text" name="Num" placeholder="Numéro" required value="<?php echo $donnees['Num'];?>" />
<br>
<br>

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


$Num =$_REQUEST['Num'];
;




   $update="update radio set Num='$Num' WHERE Codification = '$Codification'";

    // Prepare statement
    $stmt = $bdd->prepare($update);

    // execute the query
    $stmt->execute();
$status= '<p style="color:#04B431;">information mise à jour';
    // echo a message to say the UPDATE succeeded
    echo $stmt->rowCount() . '<p style="color:#04B431;">'.$status.'</p>';
header("Refresh: 7;url=radio.php");


}

?>
