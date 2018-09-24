<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css" />
    <title>Hello!</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body class="container">
   <header>Direction Collecte et recyclage
<img src="https://3d.codah.fr/img/logos/logo_codah_big.jpg" width="50" height="70">
<script>
/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
</script>
   </header>
   <nav><div class="sidenav">
<?php include("test.php")?>
</div></nav>
   <main>

     <table id="customers">
       <tr>
         <th>Codification</th>
         <th>Sims</th>
         <th>Téléphone</th>
        <th>N/S Balise</th>
        <th>Navigation</th>


       </tr>
       <tr>
         <td>N235</td>
         <td>45645456465465456</td>
         <td>06 06 06 06 06 06</td>
          <td>064646406</td>
           <td>oui</td>
       </tr>
       <tr>
         <td>N235</td>
         <td>45645456465465456</td>
         <td>06 06 06 06 06 06</td>
          <td>064646406</td>
           <td>oui</td>
       </tr>
       <td>N235</td>
       <td>45645456465465456</td>
       <td>06 06 06 06 06 06</td>
        <td>064646406</td>
         <td>oui</td>

     </table>     </main>
     <aside>  <center>

                  <a href="#"><i class="fa fa-search"></i>Rechercher</a>
       <select>
           <option selected> Codification</option>
           <option>N232</option>
           <option>N256</option>
       </select>
       </div>
<br>
  <a href="#"><i class="fa fa-file-excel-o"></i>Excel</a>

  <a href="#"><i class="fa fa-print"></i>Imprimer</a>


         <div class="form-style-user">
           <center>
         <img src="user.png" color="#336699" width="50" height="70">
       </center>
         <form>



         <P> Nom d'utilisateur : <p>
         <P> Adresse @Mail : <p>
         <P> Droit : <p>
           <input type="button" class="button" value="Profil">

       </div>

       </center></aside>

  </body>
</html>
