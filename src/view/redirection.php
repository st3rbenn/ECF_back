<?php

use Controller\Inscription;
use Controller\SendInfoToBDD;

session_start();
if(empty($_SERVER['HTTP_REFERER'])){
    header('Location: /home');
    exit();
}

$isSend = new SendInfoToBDD;
$database = new Database\DB;
$db = $database->getConnection();
$inscription = new Inscription($db);
$url = $_SERVER['HTTP_REFERER'];
$url = explode('/', $url);

if(isset($_POST['mail'])){

    $test = $inscription->getUserInfoFromDB(htmlspecialchars(htmlentities($_POST['mail'])));
    while($row = $test->fetch(PDO::FETCH_ASSOC)){
        extract($row);
        $name = $firstname;
        $email = $mail;
        $pass = $password;
        $enterprise = $company;
        $roles = $role;
    }
}


if (end($url) == 'register') {
    if($isSend->sendInscription()){
        $redirect = '<meta http-equiv="Refresh" content="5; URL=/home/login"/>
                <div class="form_inscription form__inscription">
                    <h1 class="title">Ton compte a bien été crée !</p></h1>
                    <blockquote class="blockquote textForm redirect">Redirection en cours...</blockquote>
                    <blockquote class="blockquote textForm noRedirect">Appuye <a href="/home/login">ici</a> si tu n\'a pas était redirigé</blockquote>
                </div>
                <script type="module" src="../../assets/js/components/redirection.js"></script>';
    }else {
        $redirect = '
                <div class="form_inscription form__inscription ">
                    <h1 class="title">Une Erreur est survenue</h1>
                    <p class="TextWrong override"> l\'email <span style="color: red">' . htmlspecialchars(htmlentities($email)) .'</span> est déjà pris</p>
                    <blockquote class="blockquote textForm noRedirect">Redirection en cours...</blockquote>
                </div>';
    }
}

if(end($url) == 'login'){
    if($isSend->sendLogIn()){
        $_SESSION['firstName'] = $name;
        $_SESSION['role'] = $role;
        $_SESSION['company'] = $enterprise;

        if(isset($_POST['remember'])){
            setcookie('mail', $mail, time() + 365*24*3600);
            unset($_POST['remember'])
        }

        $redirect = '<meta http-equiv="Refresh" content="5; URL=/home"/>   
                <div class="form_inscription form__inscription">
                    <h1 class="title">Bonjour <p class="name"> ' . $name . '  😄</p></h1>
                    <blockquote class="blockquote textForm redirect">Redirection en cours...</blockquote>
                    <blockquote class="blockquote textForm noRedirect">Appuye <a href="/home">ici</a> si tu n\'a pas était redirigé</blockquote>
                </div>
                <script type="module" src="../../assets/js/components/redirection.js"></script>';
    }
    else {
        $redirect = '<meta http-equiv="Refresh" content="5; URL=/login"/>
                <div class="form_inscription form__inscription">
                    <h1 class="title">Une Erreur est survenue</h1>
                    <p class="textForm">Email ou mot de passe incorrecte</p>
                    <blockquote class="blockquote textForm redirect">Redirection en cours...</blockquote>
                </div>';
    }
}

if(end($url) == 'home' || end($url) == 'Mon_Espace_Recrutement'){
    $redirect = '<meta http-equiv="Refresh" content="5; URL=/home"/>
                <div class="form_inscription form__inscription">
                    <h1 class="title">On espère te revoir bientôt 😉</h1>
                    <blockquote class="blockquote textForm redirect">Redirection en cours...</blockquote>
                    <blockquote class="blockquote textForm noRedirect">Appuie <a href="/home">ici</a> si tu n\'a pas était redirigé</blockquote>
                </div>';
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
    <link rel="apple-touch-icon" href="../../apple-touch-icon.png">
    <link rel="manifest" href="/manifest.webmanifest">

    <link rel="stylesheet" href="../../assets/css/main.css">
</head>

<body>
<main class="container"></main>
<header class="header__main header__mains__inscription" id="blurred">
    <div class="container">
        <div class="header__item">
            <figure class="logo">
                <a href="/home"><img src="../../assets/img/logo.svg" alt="Logo de devjobs"></a>
            </figure>
        </div>
    </div>
</header>
<main class="container">
    <section class="redirection__container">
        <?= $redirect?>
    </section>
</main>
<script src="../../assets/js/components/switch.js"></script>
</body>
</html>