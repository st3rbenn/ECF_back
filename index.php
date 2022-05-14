<?php

require 'vendor/autoload.php';
$router = new Router\Router($_SERVER['REQUEST_URI']);

if ($_SERVER['REQUEST_URI'] === 'home/' || $_SERVER['REQUEST_URI'] === '/') {
    header('Location: /home');
}

$router->get('/home', function (){return require 'src/view/home.php';});
$router->get('/home/jobs:id', function ($id){return require 'src/view/about.php';});
$router->get('/home/mon-espace-recruteur', function (){return require 'src/view/Espace_recruteur.php';});


//Parcours utilisateur
$router->get('/home/register', function (){return require 'src/view/Inscription.php';});
$router->get('/home/login', function (){return require 'src/view/Connexion.php';});
$router->get('/home/disconnect', function (){return require 'src/view/disconnect.php';});
$router->get('/home/redirect', function (){return require 'src/view/redirection.php';});

//job manipulation
$router->get('/home/mon-espace-recruteur/job/add', function (){return require 'src/functions/add_job.php';});
$router->get('/home/mon-espace-recruteur/job/edit/:id', function ($id){return require 'src/functions/edit_job.php';});
$router->get('/home/mon-espace-recruteur/job/delete/:id', function ($id){return require 'src/functions/delete_job.php';});



$router->run();