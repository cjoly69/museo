<?php
function bdd(){
  try {
      $bdd = new PDO("mysql:dbname=museo;host=localhost","root", "");
  } catch (PDOException $e) {
      echo 'Connexion échouée : ' . $e->getMessage();
  }
  return $bdd;
}
 ?>
