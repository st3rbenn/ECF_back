<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ECF-Front-End</title>
    <meta name="description" content="Contrôle de connaissance et d'application des méthodes apprise au CEFIM">
    <link rel="icon" href="./favicon-32x32.png" sizes="any">
    <link rel="icon" href="./favicon-32x32.png" type="image/svg+xml">
    <link rel="apple-touch-icon" href="./apple-touch-icon.png">

    <link rel="stylesheet" href="../../assets/css/main.css">
</head>

<body>

<header class="header__main" id="blurred">
    <div class="container">
        <div class="header__item">
            <figure class="logo">
                <a href="./home"><img src="./assets/img/logo.svg" alt="Logo de DevJobs"></a>
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
                        <?php if($role === 'ROLE_RECRUTEUR' || $role === 'ROLE_ADMIN'):?>
                            <a class="header__inscription" href="/home/mon-espace-recruteur">Mon Espace Recruteur</a>
                        <?php endif;?>
                        <a class="header__connexion" href="/home/account">Mon Profil</a>
                        <a class="header__inscription" href="/home/disconnect">Déconnexion</a>
                    <?php endif;?>
                </div>
                <figure class="logo-switchmode">
                    <img src="./assets/img/icon-sun.svg" alt="">
                </figure>
                <div class="switch">
                    <input type="checkbox" class="switch__input" id="theme-switch">
                    <label for="theme-switch" class="switch__label" aria-hidden="true" id="label__switch"></label>
                    <div class="switch__marker" aria-hidden="true" id="switch__button"></div>
                </div>
                <figure class="logo-switchmodelune">
                    <img src="./assets/img/icon-moon.svg" alt="">
                </figure>
            </div>
        </div>
    </div>
</header>
<main>
    <div class="container">
        <div class="404">
            <h1>404</h1>
            <h2>Page non trouvée</h2>
            <p>La page que vous recherchez n'existe pas ou plus.</p>
            <a href="/">Retour à l'accueil</a>
        </div>
    </div>
</main>

</body>
</html>