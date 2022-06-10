<?php
session_start();
if(isset($_SESSION['role']) && $_SESSION['role'] === 'ROLE_RECRUTEUR' || $_SESSION['role'] === 'ROLE_ADMIN'){
    $role = $_SESSION['role'];
} else{
    header('Location: /home');
    exit;
}
$id = explode('/', $_SERVER['HTTP_REFERER'])[4];
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ECF-Front-End</title>
    <meta name="description" content="Contrôle de conaissance et d'application des méthodes apprise au CEFIM">
    <link rel="icon" href="/./favicon-32x32.png" sizes="any">
    <link rel="icon" href="/./favicon-32x32.png" type="image/svg+xml">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <script src="https://kit.fontawesome.com/6b95777d07.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="manifest" href="/./index.php">

    <link rel="stylesheet" href="/./assets/css/main.css">
</head>
<body>
<header class="header__main" id="blurred" style="margin-bottom: 0 !important">
    <div class="container">
        <div class="header__item header-item">

            <figure class="logo">
                <a href="/home"><img src="/./assets/img/logo.svg" alt="Logo de DevJobs"></a>
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
                    <img src="/./assets/img/icon-sun.svg" alt="">
                </figure>
                <div class="switch">
                    <input type="checkbox" class="switch__input" id="theme-switch">
                    <label for="theme-switch" class="switch__label" aria-hidden="true" id="label__switch"></label>
                    <div class="switch__marker" aria-hidden="true" id="switch__button"></div>
                </div>
                <figure class="logo-switchmodelune">
                    <img src="/./assets/img/icon-moon.svg" alt="">
                </figure>
            </div>
        </div>
    </div>
</header>

<main class="position-relative" id="blurred">
    <section class="form_edit d-flex flex-column container-xl">
        <h1 class="modifyTitle text-center">Envoyer ma candidature</h1>
        <form action="/home/job/sendApply/:<? $id ?>" method="post" class="form-group">
            <div class="form-group">
                <label for="">Nom</label>
                <input type="text" name="name" class="form-control" placeholder="Nom">
            </div>
            <div class="form-group">
                <label for="">Prénom</label>
                <input type="text" name="firstname" class="form-control" placeholder="Prénom">
            </div>
            <div class="form-group">
                <label for="">Email</label>
                <input type="email" name="email" class="form-control" placeholder="Email">
            </div>
            <div class="form-group">
                <label for="">Téléphone</label>
                <input type="text" name="phone" class="form-control" placeholder="Téléphone">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Envoyer</button>
            </div>
        </form>
    </section>
</main>

<script src="/./assets/js/components/switch.js"></script>
</body>
</html>

