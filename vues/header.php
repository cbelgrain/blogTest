<?php
    include "controleurs/bloggers.class.php";
    $blogger = new Bloggers();
    $b = $blogger->controleBlogger($pdo);
    var_dump('<br>');
    var_dump($b);
    var_dump('<br>');
    var_dump(Session::getSession('blogger'));
?>

<!DOCTYPE>
   <html>
    <head>
       <title><?= $titreSite ?></title>
        <link rel="stylesheet" href="css/bootstrap.css" >
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/boottstrap/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="fonts/fontawesome-free-5.5.0-web/css/all.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-sm navbar-light bg-light">
            <a class="navbar-brand" href="?page=acceuil"><?= $logo ?></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <?php
                        $menu = $general->menu($pdo);
                        echo $menu;
                    ?>
                </ul>
            </div>
            <a class= "user" href="?page=connexion">
                <i class="fas fa-user-alt"></i>
            </a>
            <?php if($_SESSION == true) { ?>
                <div class="connect">
                    <?php if(Session::getSession('blogger') == "cici@cici.fr") { ?>
                        <a href="?page=compte">Compte admin</a>
                        <a href="controleurs/deconnexion.class.php"> / Déconnexion</a>
                    <?php } else { ?>
                        <a href="?page=compte">Mon Compte</a>
                        <a href="controleurs/deconnexion.class.php"> / Déconnexion</a>
                    <?php } ?>
                </div>
        </nav>
        <p class="blogger">Salut <?= $b[0]['prenom'] . " "?><i class="far fa-grin-beam"></i></p>
            <?php } else { ?>
                <div class="connect">
                    <a href="?page=inscription">Inscription</a>
                    <a href="?page=connexion"> / Connexion</a>
                </div>
        </nav>
            <?php } ?>
        </header>
