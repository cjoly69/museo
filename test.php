<?php
/* Connexion à une base ODBC avec l'invocation de pilote */
$dsn = 'mysql:dbname=museo;host=localhost';
$user = 'root';
$password = '';

try {
    $bdd = new PDO($dsn, $user, $password);
} catch (PDOException $e) {
    echo 'Connexion échouée : ' . $e->getMessage();
}
$id = 1;
$article = $bdd->prepare("SELECT * FROM articles WHERE id=?");
$article->execute([$id]);

$article = $article->fetch();

    echo $article["titre"];
?>
