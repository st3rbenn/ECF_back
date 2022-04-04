<?php session_start();
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

    <link rel="stylesheet" href="css/main.css">
</head>

<body>

<header class="header__main" id="blurred">
    <div class="container">
        <div class="header__item">
            <figure class="logo">
                <a href="/home"><img src="assets/img/logo.svg" alt="Logo de DevJobs"></a>
            </figure>
            <div class="header__switchmode">
                <div class="header__buttonLog">
                    <?php if(!isset($_SESSION['firstName'])):?>
                        <a class="header__inscription" href="/register">Inscription</a>
                        <a class="header__connexion" href="/login">Connexion</a>
                    <?php else:?>
                        <?php if($role === 'admin'): ?>
                                <a class="header__inscription">Dashboard</a>
                        <?php endif;?>
                        <?php if($role === 'recruteur'):?>
                                <a class="header__inscription" href="/home/Mon_Espace_Recrutement">Mon Espace Recruteur</a>
                        <?php endif;?>
                                <a class="header__connexion">Mon Profile</a>
                                <a class="header__inscription" href="/disconnect">Déconnexion</a>
                    <?php endif;?>
                </div>
                <figure class="logo-switchmode">
                    <img src="assets/img/icon-sun.svg" alt="">
                </figure>
                <div class="switch">
                    <input type="checkbox" class="switch__input" id="theme-switch">
                    <label for="theme-switch" class="switch__label" aria-hidden="true" id="label__switch"></label>
                    <div class="switch__marker" aria-hidden="true" id="switch__button"></div>
                </div>
                <figure class="logo-switchmodelune">
                    <img src="assets/img/icon-moon.svg" alt="">
                </figure>
            </div>
        </div>

        <form class="filter__container" id="filter">
            <div class="filter__container__search">
                <img src="assets/img/icon-search.svg" alt="" class="filter__search__logo__search">
                <input type="text" id="filter__container__logo" aria-hidden="true" class="filter__search__title" placeholder="Filter by title..." value="">
                <input type="text" id="filter__container__logo" class="filter__search__title__pc" placeholder="Filter by title, companies, expertise…" value="">
            </div>
            <div class="line"></div>
            <div class="filter__container__location">
                <img src="assets/img/icon-location.svg" alt="" class="filter__search__logo__location">
                <input type="text" id="filterLocation" placeholder="Filter by location..." class="filter__search__location">
            </div>
            <div class="line"></div>
            <div class="filter__right">
                <div class="filter__fullTime">
                    <input type="checkbox" id="checkBox">
                    <label for="checkBox" class="label">Full Time</label>
                    <label for="checkBox" class="label2">Full Time Only</label>
                </div>
                <button class="filter__logo__btn" id="filterBtn">
                    <img src="assets/img/icon-filter.svg" class="filter__logo__logo" aria-label="Bouton pour afficher une petite fenêtre et rechercher par filtre">
                </button>
                <input type="submit" id="filter__search__submit" value="Search" class="filter__search__submit">
                <button id="filterResult" class="filter__button" aria-label="bouton pour lancer la recherche de filtre">
                    <img src="assets/img/icon-search-white.svg" alt="" class="filter__button__logo">
                </button>
            </div>
        </form>

    </div>
</header>
<div class="Sticky">
    <input type="button" value="👆🏼" id="scrollTop" class="scrollTop hidden animate__fadeIn animate__delay-.5s animate__animated">
</div>
<main class="main__page" id="blurred">
    <div class="loader hidden" id="loader">
        <span class="circle"></span>
        <span class="circle"></span>
        <span class="circle"></span>
    </div>
    <section class="jobs">
        <div class="container" id="jobs">

        </div>
        <form class="jobs__container__form__btn" id="loadmore">
            <input type="submit" value="Load More" class="loadmore" id="disabled">
        </form>
    </section>
</main>

<form class="modal" data-toggle="visible" role="modal" aria-hidden='true' aria-labelledby="Filtre" aria-describedby="fenêtre de Filtre" tabindex="-1" id="filter">
    <div class="filter__modal" id="modal" role="document">
        <div class="filter__modal__container">
            <img src="assets/img/icon-location.svg" alt="" class="filter__modal__location">
            <input type="text" id="filterLocation" placeholder="Filter by location..." class="filter__modal__search__location">
        </div>
        <span class="filter__modal__separator"></span>
        <div class="filter__modal__fullTime">
            <input type="checkbox" id="checkBox">
            <label for="checkBox" class="modal__label">Full Time Only</label>
        </div>
        <input type="submit" class="filter__modal__searchbtn" value="Search">
    </div>
</form>
<script type="module" src="js/api/homeRequest.js"></script>
<script type="module" src="js/components/modal.js"></script>
<script type="module" src="js/components/switch.js"></script>
</body>
</html>
