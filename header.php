<header>
    <div class="container">
        <div class="row">
            <div class="col-sm-2">
                <a href="index.php">MUSéO</a>
            </div>
            <div class="col-sm-10">
                <nav>
                    <ul>
                        <li><a href="index.php">ACCUEIL</a></li>
                        <li><a href="contact.php">CONTACT</a></li>
                        <?php
                        if(isset($_SESSION["membre"])) :
                        ?>
                        <li><a href="compte.php">MON COMPTE</a></li>
                        <li><a href="deconnexion.php">DECONNEXION</a></li>
                        <?php
                        else :
                        ?>
                        <li><a href="connexion.php">CONNEXION</a></li>
                        <li><a href="inscription.php">INSCRIPTION</a></li>
                        <?php
                        endif;
                        ?>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>
