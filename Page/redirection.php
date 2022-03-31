<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ECF-Front-End</title>
    <meta name="description" content="Contrôle de conaissance et d'application des méthodes apprise au CEFIM">
    <meta http-equiv="Refresh" content="5; URL=/home"/>
    <link rel="icon" href="../favicon-32x32.png" sizes="any">
    <link rel="icon" href="../favicon-32x32.png" type="image/svg+xml">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="manifest" href="/manifest.webmanifest">
    <link rel="stylesheet" href="../css/bootstrap.css">
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
<!--<div class="loader" id="loader" style="display: flex">
    <span class="circle"></span>
    <span class="circle"></span>
    <span class="circle"></span>
</div>-->
<main class="container">
    <section class="redirection__container">
        <?php

        $database = new Database\Database();
        $db = $database->getConnection();
        $inscription = new Class\Inscription($db);
        $stmt = $inscription->ckeckIfMailExist();

        $isSend = new Class\Form;
        $alert = new Class\Alert;

        if($isSend->sendInfo()){
            echo '
                    <h1 style="color:red;">Bienvenue</h1>
                    <script type="module" src="../js/components/redirection.js"></script>
                 ';
        }else {
            header('Status: 301 Moved Permanently', false, 301);
            header('location: /register' );
        }
        ?>
    </section>
</main>
<script src="../js/components/bootstrap.bundle.min.js"></script>
<script src="../js/components/switch.js"></script>
</body>
</html>