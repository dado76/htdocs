<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="test.css" />
    <title>Hello!</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

  </head>
  <!--    Made by Erik Terwan    -->
  <!--   24th of November 2015   -->

  <nav role="navigation">

    <div id="menuToggle">
      <!--
      A fake / hidden checkbox is used as click reciever,
      so you can use the :checked selector on it.
      -->
      <input type="checkbox" />

      <!--
      Some spans to act as a hamburger.

      They are acting like a real hamburger,
      not that McDonalds stuff.
      -->
      <span></span>
      <span></span>
      <span></span>

      <!--
      Too bad the menu has to be inside of the button
      but hey, it's pure CSS magic.
      -->
      <ul id="menu">
        <a href="index.php"><i class="fa fa-home"></i> Accueil</a>
        <a href="sim1.php"><i class="material-icons">place</i> Balise</a>
        <a href="bom1.php"><i class="material-icons">local_shipping</i> Bom</a>
        <a href="plan1.php"><i class="material-icons">map</i> Plan</a>
        <a href="essai.php"><i class="material-icons">person</i> Profil</a>
        <a href="logout.php"><i class="material-icons">clear</i> Logout</a>

      </ul>
    </div>
  </nav>
