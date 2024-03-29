<?php
session_start();
if(isset($_SESSION['role'])){
    header('Location: /home');
}
?>

<!DOCTYPE html>
<html lang="fr"><!-- Mettre le code langue du site dans l'attribut lang -->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ECF-Front-End</title>
    <meta name="description" content="Contrôle de conaissance et d'application des méthodes apprise au CEFIM">
    <link rel="icon" href="../../favicon-32x32.png" sizes="any">
    <link rel="icon" href="../../favicon-32x32.png" type="image/svg+xml">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="manifest" href="/manifest.webmanifest">

    <link rel="stylesheet" href="../../assets/css/main.css">
</head>

<body>

<header class="header__main header__main__inscription" id="blurred">
    <div class="container">
        <div class="header__item">
            <figure class="logo">
                <a href="/home"><img src="/assets/img/logo.svg" alt="Logo de DevJobs"></a>
            </figure>
            <div class="header__switchmode">
                <div class="header__buttonLog">
                    <a class="header__inscription" href="/home/register">Inscription</a>
                    <a class="header__connexion" href="/home/login">Connexion</a>
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

<div class="loader load__inscription" id="loader" style="display: flex">
    <span class="circle"></span>
    <span class="circle"></span>
    <span class="circle"></span>
</div>

<main class="container form">
    <form action="/home/redirect" method="POST" class="form_inscription form__inscription" id="connexion" style="display: none">
        <h1 class="title connexion__title">Connexion</h1>
        <div class="mail connexion__mail">
            <label for="mail" class="textForm">Mail</label>
            <input type="text" id="mail" name="mail">
        </div>
        <div class="mdp connexion__mdp">
            <label for="MDP" class="textForm">Mot de Passe</label>
            <input type="password" id="MDP" name="mdp">
        </div>
        <div class="saveInfo">
            <input type="checkbox" id="saveInfo" name="remember">
            <label for="saveInfo" class="textForm">Se souvenir de moi</label>
        </div>
        <input type="submit" id="submitForm" class="submitForm connexion__submitForm" value="se connecter">
    </form>
</main>

<script src="../../assets/js/components/switch.js"></script>
<script src="../../assets/js/components/connexion.js"></script>
</body>
</html>