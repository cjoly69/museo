<?php
require_once "fonctions/bdd.php";
include_once "fonctions/blog.php";
$bdd = bdd();
$article = article();
$nb_commentaires = nb_commentaires();
$commentaires = commentaires();
 ?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Muséo - Article</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:400,300,700">
    <link rel="stylesheet" href="main.css">
</head>
<body>
    <header>
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <a href="index.php">Muséo</a>
                </div>
                <div class="col-sm-10">
                    <nav>
                        <ul>
                            <li><a href="index.php">Accueil</a></li>
                            <li><a href="contact.html">Contact</a></li>
                            <li><a href="connexion.html">Connexion</a></li>
                            <li><a href="inscription.html">Inscription</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <div class="container article">
        <div class="row">
            <form method="post" action="">
                <div class="col-sm-10">
                    <input type="text" name="query" placeholder="Rechercher un article ...">
                </div>
                <div class="col-sm-2">
                    <input type="submit" value="OK!">
                </div>
            </form>
        </div>
        <div class="row">
            <article>
                <div class="col-sm-5">
                    <img src="<?= $article["image"]?>" alt="<?= $article["image"]?>">
                </div>
                <div class="col-sm-7">
                    <p class="date">Posté le <time datetime="<?= $article["publication"]?>"><?= format_date($article["publication"])?></time></p>
                    <h1><?= $article["titre"]?></h1>
                    <p><?= $article["contenu"]?></p>
                </div>
            </article>
        </div>
    </div>
    <div class="container commentaires">
        <div class="row">
            <div class="col-xs-12">
                <h1>Commentaires (<?= $nb_commentaires ?>)</h1>
            </div>
        </div>
        <?php
        foreach ($commentaires as $commentaire) :
        ?>
        <div class="row commentaire">
            <div class="col-xs-12">
                <p class="date">Posté par <?= $commentaire["pseudo"] ?> le <time datetime="<?= $commentaire["publication"] ?>"><?= format_date($commentaire["publication"]) ?></time> :</p>
                <p><?= $commentaire["commentaire"] ?></p>
            </div>
        </div>
        <?php
        endforeach;
        ?>
        <div class="row">
            <div class="col-xs-12">
                <form method="post" action="">
                    <!--<div class="row">
                        <div class="col-xs-12">
                            <div class="message erreur">Ici j'affiche un message d'erreur !</div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="message confirmation">Ici j'affiche un message de confirmation !</div>
                        </div>
                    </div>-->
                    <textarea name="commentaire" placeholder="Votre commentaire *"></textarea>
                    <input type="submit" value="Commenter">
                </form>
            </div>
        </div>
        <footer>
            <div class="row">
                <div class="col-xs-12">
                    <a href="contact.html">Contact</a> - <a href="mentions.html">Mentions légales</a> - <a href="https://www.facebook.com/infoprog.tuto">Facebook</a>
                </div>
            </div>
        </footer>
    </div>
</body>
</html>
