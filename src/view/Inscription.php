<?php
session_start();
if(isset($_SESSION['role'])){
    header('Location: /home');
    exit();
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
    <link rel="manifest" href="/manifest.webmanifest">
    <link rel="stylesheet" href="../../assets/css/main.css">
</head>

<body>

<header class="header__main header__main__inscription" id="blurred">
    <div class="container">
        <div class="header__item">
            <figure class="logo">
                <a href="/home"><img src="../../assets/img/logo.svg" alt="Logo de devjobs"></a>
            </figure>
            <div class="header__switchmode">
                <div class="header__buttonLog">
                    <a class="header__inscription" href="/home/register">Inscription</a>
                    <a class="header__connexion" href="/home/login">Connexion</a>
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
<div class="loader load__inscription" id="loader" style="display: flex">
    <span class="circle"></span>
    <span class="circle"></span>
    <span class="circle"></span>
</div>

<main class="container form">
    <form action="/home/redirect" method="POST" class="form_inscription form__inscription" id="form" style="display: none">

        <h1 class="title">Inscription</h1>

        <div class="firstName">
            <label for="firstName" class="textForm">Prénom <span style="color:red;">&#8203 &#8203 *</span></label>
            <input type="text" id="firstName" name="firstName">
        </div>
        <div class="lastName">
            <label for="lastName" class="textForm">Nom de Famille <span style="color:red;">&#8203 &#8203 *</span></label>
            <input type="text" id="lastName" name="lastName">
        </div>
        <div class="radiobtn" id="appened">
            <p>êtes-vous recruteur ?</p>
            <input type="radio" id="isEntreprise" name="contact">
            <label for="isEntreprise" class="textForm">oui</label>
            <input type="radio" id="isNotEntreprise" name="contact" checked>
            <label for="isNotEntreprise" class="textForm">non</label>
        </div>
        <div class="mail">
            <label for="mail" class="textForm">Mail <span style="color:red;">&#8203 &#8203 *</span></label>
            <input type="email" id="mail" name="mail">
        </div>
        <div class="mdp">
            <label for="MDP" class="textForm">Mot de Passe <span style="color:red;">&#8203 &#8203 *</span></label>
            <input type="password" id="MDP" name="mdp" minlength="8">
        </div>
        <div class="mdpSecond">
            <label for="mdpSecond" class="textForm">Retaper le Mot de Passe <span style="color:red;">&#8203 &#8203 *</span></label>
            <input type="password" id="mdpSecond" name="mdpSecond">
        </div>
        <blockquote class="blockquote textForm">obligatoire <span style="color:red;">&#8203 &#8203 &#8203*</span></blockquote>
        <input type="submit" id="submitForm" class="submitForm" value="valider">
    </form>
</main>
<script type="module" src="../../assets/js/components/inscription.js"></script>
<script src="../../assets/js/components/switch.js"></script>
</body>
</html>