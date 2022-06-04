<?php
session_start();
if(isset($_SESSION['role']) && $_SESSION['role'] === 'ROLE_RECRUTEUR' || $_SESSION['role'] === 'ROLE_ADMIN'){
    $role = $_SESSION['role'];
} else{
    header('Location: /home');
    exit();
}
$url = Array_slice(explode('/', $_SERVER['REQUEST_URI']), -2)[0];
if(isset($_POST['id'])){
    $database = new Database\DB();
    $db = $database::getConnection();

    $getJobs = new Controller\Espace_Recruteur($db);
    $jobs = $getJobs->editJobs($_POST['id']);
    unset($_POST['id']);
}
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ECF-Front-End</title>
    <meta name="description" content="Contrôle de conaissance et d'application des méthodes apprise au CEFIM">
    <link rel="icon" href="../../favicon-32x32.png" sizes="any">
    <link rel="icon" href="../../favicon-32x32.png" type="image/svg+xml">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <script src="https://kit.fontawesome.com/6b95777d07.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="manifest" href="../../index.php">

    <link rel="stylesheet" href="../../assets/css/main.css">
</head>
<body>

<header class="header__main" id="blurred" style="margin-bottom: 0 !important">
    <div class="container">
        <div class="header__item header-item">

            <figure class="logo">
                <a href="/home"><img src="../../assets/img/logo.svg" alt="Logo de DevJobs"></a>
            </figure>
            <div class="header__switchmode">

                <div class="header__buttonLog">
                    <?php if(!isset($role)):?>
                        <a class="header__inscription" href="/home/register">Inscription</a>
                        <a class="header__connexion" href="/home/login">Connexion</a>
                    <?php else:?>
                        <?php if($role === 'ROLE_ADMIN'): ?>
                            <a class="header__inscription" href="/home/admin/dashboard">Dashboard</a>
                        <?php endif;?>
                        <a class="header__connexion">Mon Profile</a>
                        <a class="header__inscription" href="/home/disconnect">Déconnexion</a>
                    <?php endif;?>
                </div>
                <figure class="logo-switchmode">
                    <img src="../../assets/img/icon-sun.svg" alt="">
                </figure>
                <div class="switch">
                    <input type="checkbox" class="switch__input" id="theme-switch">
                    <label for="theme-switch" class="switch__label" aria-hidden="true" id="label__switch"></label>
                    <div class="switch__marker" aria-hidden="true" id="switch__button"></div>
                </div>
                <figure class="logo-switchmodelune">
                    <img src="../../assets/img/icon-moon.svg" alt="">
                </figure>
            </div>
        </div>
    </div>
</header>

<main class="container position-relative" id="blurred">
            <?php if(isset($_SESSION['message'])):?>
                <div class="alert alert-success position-absolute" style="left: 45rem" role="alert" id="alert">
                    <?= $_SESSION['message'] ?>
                </div>
            <?php endif;?>
    <div class="div__title" style="margin-top: 3rem">
        <h2 class="title" style="text-align: center; padding: 1rem;">Mon Espace Recruteur</h2>
    </div>
    <section class="jobs container__recrutement">
        <ul class="sideBar">
                <li class="sideBar__items active" id="touteMesOffres">
                    <button id="btnTouteMesOffres">Voir Toutes Mes Offres</button>
                </li>
                <li class="sideBar__items" id="ajouterUneOffre">
                    <button id="btnAjouterUneOffre">Ajouter Une Offre</button>
                </li>
                <li class="sideBar__items" id="Profile">
                    <button id="btnCandidat">Profile de l'entreprise</button>
                </li>
        </ul>
        <div class="article" id="article">

        </div>
    </section>
</main>
<script src="../../assets/js/components/espace_recruteurs.js"></script>
<script src="../../assets/js/components/switch.js"></script>
</body>
</html>