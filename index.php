<?php

require 'vendor/autoload.php';

$router = new Router\Router($_GET['url']);

if ($_GET['url'] == 'home/') {
    header('Location: /home');
}
$router->get('/home', function (){return require 'Page/home.php';});
$router->get('/home/jobs:id', function (){return require 'Page/about.php';});
$router->get('/home/Mon_Espace_Recrutement', function (){return require 'Page/Espace_recruteur.php';});

//Parcours utilisateur
$router->get('/register', function (){return require 'Page/Inscription.php';});
$router->get('/login', function (){return require 'Page/Connexion.php';});
$router->get('/disconnect', function (){return require 'Page/disconnect.php';});
$router->get('/redirect', function (){return require 'Page/redirection.php';});

$router->run();