<?php

$isSend = new Class\Form;
$database = new Database\Database;
$db = $database->getConnection();
$data = new Class\Inscription($db);
$url = $_SERVER['HTTP_REFERER'];
$url = substr($url, -8);
$redirect = '';
if ($url == 'register') {
    if($isSend->sendInscription()){
        $redirect = '<meta http-equiv="Refresh" content="5; URL=/home"/>
                <div class="form_inscription form__inscription">
                    <h1 class="title">Bienvenue sur DevJobs<p class="name"> ' . $data->getFirstName() . ' !</p></h1>
                    <blockquote class="blockquote textForm redirect">Redirection en cours...</blockquote>
                    <blockquote class="blockquote textForm noRedirect">Appuye <a href="/home">ici</a> si tu n\'a pas était redirigé</blockquote>
                </div>
                <script type="module" src="../js/components/redirection.js"></script>';
    }else {
        $redirect = '<meta http-equiv="Refresh" content="5; URL=/register"/>
                <div class="form_inscription form__inscription">
                    <h1>Erreur</h1>
                    <p style="color:Blue;"> l\'email ' . $data->getMail() .' est déjà pris</p>
                </div>';
    }
}else {
    $url = substr($url, -5);
}
var_dump($url);

if($url == 'login'){



    if($isSend->sendLogIn()){
        session_start();
        $redirect = '<meta http-equiv="Refresh" content="5; URL=/home"/>
                <div class="form_inscription form__inscription">
                    <h1 class="title">Ah! te revoila <p class="name"> ' . $data->getFirstName() . '  😄</p></h1>
                    <blockquote class="blockquote textForm redirect">Redirection en cours...</blockquote>
                    <blockquote class="blockquote textForm noRedirect">Appuye <a href="/home">ici</a> si tu n\'a pas était redirigé</blockquote>
                </div>
                <script type="module" src="../js/components/redirection.js"></script>';
    }else {
        $redirect = '<meta http-equiv="Refresh" content="5; URL=/login"/>
                <div class="form_inscription form__inscription">
                    <h1>Erreur</h1>
                    <p style="color:Blue;">Email ou mot de passe incorrecte</p>
                </div>';
    }
}

?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ECF-Front-End</title>
    <meta name="description" content="Contrôle de conaissance et d'application des méthodes apprise au CEFIM">
    <link rel="icon" href="../favicon-32x32.png" sizes="any">
    <link rel="icon" href="../favicon-32x32.png" type="image/svg+xml">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="manifest" href="/manifest.webmanifest">

    <link rel="stylesheet" href="../css/main.css">
</head>

<body>
<main class="container"></main>
<header class="header__main header__mains__inscription" id="blurred">
    <div class="container">
        <div class="header__item">
            <figure class="logo">
                <a href="/home"><img src="/assets/img/logo.svg" alt="Logo de devjobs"></a>
            </figure>
            <div class="header__switchmode">
                <div class="header__buttonLog">
                    <a class="header__inscription" href="/register">Inscription</a>
                    <a class="header__connexion" href="/login">Connexion</a>
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
<main class="container">
    <section class="redirection__container">
        <?= $redirect?>
    </section>
</main>
<script src="../js/components/bootstrap.bundle.min.js"></script>
<script src="../js/components/switch.js"></script>
</body>
</html>