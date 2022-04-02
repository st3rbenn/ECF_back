<?php

require 'vendor/autoload.php';

$router = new Router\Router($_GET['url']);

$router->get('/', function (){return require 'Page/home.php';});
$router->get('/disconnect', function (){return require 'Page/disconnect.php';});
$router->get('/home', function (){return require 'Page/home.php';});
$router->get('/jobs/:id', function ($id){return require 'Page/about.php';});
$router->get('/register', function (){return require 'Page/Inscription.php';});
$router->get('/login', function (){return require 'Page/Connexion.php';});
$router->get('/redirect', function (){return require 'Page/redirection.php';});

$router->run();