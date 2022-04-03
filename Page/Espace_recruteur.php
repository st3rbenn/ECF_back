<?php
session_start();
if(isset($_SESSION['role']) && $_SESSION['role'] !== 'recruteur' && $_SESSION['role'] !== 'admin'){
    header('Location: /home');
    exit();
}
if(isset($_SESSION['role'])){
    $role = $_SESSION['role'];
}
$database = new Database\Database;
$db = $database->getConnection();

$getJobs = new Class\Espace_Membre($db);
$jobs = $getJobs->getAllJobs();


?>
<!DOCTYPE html>
<html lang="en">

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
<div class="loader hidden" id="loader">
    <span class="circle"></span>
    <span class="circle"></span>
    <span class="circle"></span>
</div>
<main class="container" id="blurred">
    <section class="jobs container__recrutement">
            <ul class="sideBar">
                <li class="sideBar__items active" id="touteMesOffres"><a href="#">Voir Toutes Mes Offres</a></li>
                <li class="sideBar__items" id="ajouterUneOffre"><a href="#">Ajouter Une Offres</a></li>
            </ul>
        <div class="article" id="article">
            <?php while($row = $jobs->fetch(PDO::FETCH_ASSOC)):?>
                <article class="jobs__container">
                    <img class="jobs__container__logo" alt="entreprise" src='<?= $row['logo']?>' style="background-color: <?= $row['logo_background'] ?>">
                    <div class="jobs__container__items">
                        <div class="time">
                            <p><?= explode(' ', $row['postedAt'])[0]?></p>
                            <span class="dot"></span>
                            <p><?= $row['contract']?></p>
                        </div>
                        <div class="jobs__container__info">
                            <h3 class="jobs__container__info__name"><?= $row['position']?></h3>
                            <p><?= $row['company']?></p>
                        </div>
                        <p class="city"><?= $row['location']?></p>
                        <div class="buttons_container">
                            <button><i class="fa-solid fa-pen-to-square"></i></button>
                            <button><i class="fa-solid fa-trash"></i></button>
                        </div>
                    </div>
                </article>
            <?php endwhile;?>
        </div>
    </section>
</main>
<script src="/js/components/espace_recruteurs.js"></script>
<script src="/js/components/switch.js"></script>
</body>
</html>