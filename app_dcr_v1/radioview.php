<head>
	<link href="fiche.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
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

<div class="form-style-10">
 <div class="section">
   <div class="inner-wrap">






    <form  method="post" action="">




      <center><h1>Gestion des cartes sims</h1> <center>






    <label>Codification :</label>
    <?php echo $donnees['Codification'];?>
    <br>
    <label>Numéro d'appel :</label>
    <?php echo $donnees['Num'];?>
    <br>

    <br>
    <br>
    <br>
  <a href="radio.php"<i class="fa fa-home" style="color:#2A88AD"><font color="#0080FF">Retour</a>


  </div>

</div>

</body>

</html>

<?php

$request->closeCursor();
}
catch(Exception $e)
{
    die('Erreur : '.$e->getMessage());
}
?>
