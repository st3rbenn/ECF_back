<?php

session_start();

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

<main class="position-relative" id="blurred">
    <section class="form_edit d-flex flex-column container">
        <div class="d-flex justify-content-between">
            <h1 class="modifyTitle">Modifier</h1>
            <a class="btn_return" href="/home/mon-espace-recruteur align">Revenir a mon espace</a>
        </div>
            <form action="/home/mon-espace-recruteur" method="POST" class="d-grid gap-3" id="connexion">
                <div class="input-group">
                    <span class="input-group-text">Titre de l'offre</span>
                    <input type="text" aria-label="TitleOffer" class="form-control">
                </div>
                <div class="input-group">
                    <label class="input-group-text" for="inputGroupSelect01">Type de contract</label>
                    <select class="form-select" id="inputGroupSelect01">
                        <option selected>Choose...</option>
                        <option value="Part Time">Part Time</option>
                        <option value="Full Time">Full Time</option>
                        <option value="Freelance">Freelance</option>
                    </select>
                </div>
                <div class="input-group">
                    <span class="input-group-text">Date d'ajout</span>
                    <input type="text" aria-label="TitleOffer" class="form-control" disabled value="<?= date('d/m/Y') ?>">
                </div>
                <div class="input-group">
                    <span class="input-group-text">Titre de l'offre</span>
                    <input type="text" aria-label="TitleOffer" class="form-control">
                </div>
                <div class="input-group">
                    <span class="input-group-text">Titre de l'offre</span>
                    <input type="text" aria-label="TitleOffer" class="form-control">
                </div>
                <div class="input-group">
                    <span class="input-group-text">Titre de l'offre</span>
                    <input type="text" aria-label="TitleOffer" class="form-control">
                </div>
                <input type="submit" value="accepter les modifications" class="btn_modify">
            </form>
    </section>
</main>

<script src="../../assets/js/components/espace_recruteurs.js"></script>
<script src="../../assets/js/components/switch.js"></script>
</body>
</html>