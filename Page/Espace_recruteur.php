<?php
session_start();
if(isset($_SESSION['role']) && $_SESSION['role'] !== 'recruteur' && $_SESSION['role'] !== 'admin'){
    header('Location: /home');
    exit();
}
if(isset($_SESSION['role'])){
    $role = $_SESSION['role'];
}
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ECF-Front-End</title>
    <meta name="description" content="Contrôle de connaissance et d'application des méthodes apprise au CEFIM">
    <link rel="icon" href="../favicon-32x32.png" sizes="any">
    <link rel="icon" href="../favicon-32x32.png" type="image/svg+xml">
    <link rel="apple-touch-icon" href="../apple-touch-icon.png">
    <script src="https://kit.fontawesome.com/6b95777d07.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/css/main.css">
</head>
<body>
<header class="header__main" id="blurred">
    <div class="container">
        <div class="header__item header-item">

            <figure class="logo">
                <a href="/home"><img src="/assets/img/logo.svg" alt="Logo de DevJobs"></a>
            </figure>
            <h2 class="title__recruteur">Mon Espace Recruteur</h2>
            <div class="header__switchmode">

                <div class="header__buttonLog">
                    <?php if(!isset($_SESSION['firstName'])):?>
                        <a class="header__inscription" href="/register">Inscription</a>
                        <a class="header__connexion" href="/login">Connexion</a>
                    <?php else:?>
                        <?php if($role === 'admin'): ?>
                            <a class="header__inscription">Dashboard</a>
                        <?php endif;?>
                        <a class="header__connexion">Mon Profile</a>
                        <a class="header__inscription" href="/disconnect">Déconnexion</a>
                    <?php endif;?>
                </div>
                <figure class="logo-switchmode">
                    <img src="/assets/img/icon-sun.svg" alt="">
                </figure>
                <div class="switch">
                    <input type="checkbox" class="switch__input" id="theme-switch">
                    <label for="theme-switch" class="switch__label" aria-hidden="true" id="label__switch"></label>
                    <div class="switch__marker" aria-hidden="true" id="switch__button"></div>
                </div>
                <figure class="logo-switchmodelune">
                    <img src="/assets/img/icon-moon.svg" alt="">
                </figure>
            </div>
        </div>
    </div>
</header>

<main class="container" id="blurred">
    <div class="loader load__recruit" id="loader" style="display: flex">
        <span class="circle"></span>
        <span class="circle"></span>
        <span class="circle"></span>
    </div>
    <section class="jobs container__recrutement">
            <ul class="sideBar">
                    <li class="sideBar__items active" id="touteMesOffres"><button id="btnTouteMesOffres">Voir Toutes Mes Offres</button></li>
                    <li class="sideBar__items" id="ajouterUneOffre"><button id="btnAjouterUneOffre">Ajouter Une Offre</button></li>
            </ul>
        <div class="article" id="article">

        </div>
    </section>
</main>
<script src="/js/components/espace_recruteurs.js"></script>
<script src="/js/components/switch.js"></script>
</body>
</html>