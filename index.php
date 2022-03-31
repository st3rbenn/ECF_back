<?php
session_start();
require 'vendor/autoload.php';


$router = new Router\Router($_SERVER['REQUEST_URI']);

$router->get('/home', function (){return require 'Page/home.php';});
$router->get('/jobs:id', function (){return require 'Page/about.php';});
$router->get('/register', function (){return require 'Page/inscription.php';});
$router->get('/login', function (){return require 'Page/Connexion.php';});
$router->get('/logout', function (){return require 'Page/Logout.php';});
$router->get('/redirect', function (){return require 'Page/redirection.php';});

$router->run();