<?php

require 'vendor/autoload.php';
$router = new Router\Router($_SERVER['REQUEST_URI']);

if ($_SERVER['REQUEST_URI'] === 'home/' || $_SERVER['REQUEST_URI'] === '/') {
    header('Location: /home');
}

$router->get('/home', function (){return require 'src/view/home.php';});
$router->get('/home/jobs:id', function (){return require 'src/view/about.php';});
$router->get('/home/mon-espace-recruteur', function (){return require 'src/view/Espace_recruteur.php';});
$router->get('/home/admin/dashboard', function (){return require 'src/view/admin.php';});


//Parcours utilisateur
$router->get('/home/register', function (){return require 'src/view/Inscription.php';});
$router->get('/home/login', function (){return require 'src/view/Connexion.php';});
$router->get('/home/disconnect', function (){return require 'src/view/disconnect.php';});
$router->get('/home/redirect', function (){return require 'src/view/redirection.php';});

//job manipulation
$router->get('/home/mon-espace-recruteur/job/add', function (){return require 'src/functions/add_job.php';});
$router->get('/home/mon-espace-recruteur/job/edit/:id', function ($id){return require 'src/functions/edit_job.php';});
$router->get('/home/mon-espace-recruteur/job/delete/:id', function ($id){return require 'src/functions/delete_job.php';});
$router->get('/home/mon-espace-recruteur/job/info/:id', function ($id){return require 'src/functions/info_job.php';});

$router->get('/home/mon-espace-recruteur/job/reqlist/delete/:id', function ($id){return require 'src/functions/delete_list.php';});
$router->get('/home/mon-espace-recruteur/job/rolist/delete/:id', function ($id){return require 'src/functions/delete_list.php';});
$router->get('/home/mon-espace-recruteur/job/reqlist/add', function (){return require 'src/functions/add_list.php';});
$router->get('/home/mon-espace-recruteur/job/rolist/add', function (){return require 'src/functions/add_list.php';});

$router->get('/home/mon-espace-recruteur/profil/edit', function (){return require 'src/functions/edit_profil_company.php';});

//admin section
$router->get('/home/admin/dashboard/job/edit/:id', function ($id){return require 'src/functions/edit_job.php';});
$router->get('/home/admin/dashboard/job/delete:id', function ($id){return require 'src/functions/delete_job.php';});
$router->get('/home/admin/dashboard/job/info/:id', function ($id){return require 'src/functions/info_job.php';});
$router->get('/home/admin/dashboard/enterprise/add', function (){return require 'src/functions/add_enterprise.php';});
$router->get('/home/admin/dashboard/enterprise/edit/:id', function ($id){return require 'src/functions/edit_enterprise.php';});
$router->get('/home/admin/dashboard/enterprise/delete/:id', function ($id){return require 'src/functions/delete_enterprise.php';});
$router->get('/home/admin/dashboard/candidate/delete:id', function ($id){return require 'src/functions/delete_candidate.php';});
$router->get('/home/admin/dashboard/user/add', function (){return require 'src/functions/add_user.php';});
$router->get('/home/admin/dashboard/user/edit/:id', function ($id){return require 'src/functions/edit_user.php';});
$router->get('/home/admin/dashboard/user/delete:id', function ($id){return require 'src/functions/delete_user.php';});



$router->run();