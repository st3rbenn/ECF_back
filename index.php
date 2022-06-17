<?php

use Dotenv\Dotenv;

require 'vendor/autoload.php';
$router = new Router\Router($_SERVER['REQUEST_URI']);

if ($_SERVER['REQUEST_URI'] === 'home/' || $_SERVER['REQUEST_URI'] === '/' || $_SERVER['REQUEST_URI'] === '/home/') {
    header('Location: /home');
}

$dotenv = Dotenv::createImmutable(__DIR__);
$dotenv->load();
$router->get('/home', function (){return require 'src/view/home.php';});
$router->get('/home/account', function (){return require 'src/view/edit_account.php';});
$router->get('/home/edit-account', function (){return require 'src/functions/edit/edit_account.php';});
$router->get('/home/job:id', function (){return require 'src/view/about.php';});
$router->get('/home/job/apply/:id', function ($id){return require 'src/view/job-apply.php';});
$router->get('/home/job/sendApply/:id', function ($id){return require 'src/functions/add/job-apply.php';});
$router->get('/home/mon-espace-recruteur', function (){return require 'src/view/Espace_recruteur.php';});
$router->get('/home/admin/dashboard', function (){return require 'src/view/admin.php';});


//Parcours utilisateur
$router->get('/home/register', function (){return require 'src/view/Inscription.php';});
$router->get('/home/login', function (){return require 'src/view/Connexion.php';});
$router->get('/home/disconnect', function (){return require 'src/view/disconnect.php';});
$router->get('/home/redirect', function (){return require 'src/view/redirection.php';});

//job manipulation
$router->get('/home/mon-espace-recruteur/job/add', function (){return require 'src/functions/add/add_job.php';});
$router->get('/home/mon-espace-recruteur/job/edit/:id', function ($id){return require 'src/functions/edit/edit_job.php';});
$router->get('/home/mon-espace-recruteur/job/delete/:id', function ($id){return require 'src/functions/delete/delete_job.php';});
$router->get('/home/mon-espace-recruteur/job/info/:id', function ($id){return require 'src/functions/info_job.php';});

$router->get('/home/mon-espace-recruteur/job/reqlist/delete/:id', function ($id){return require 'src/functions/delete/delete_list.php';});
$router->get('/home/mon-espace-recruteur/job/rolist/delete/:id', function ($id){return require 'src/functions/delete/delete_list.php';});
$router->get('/home/mon-espace-recruteur/job/reqlist/add', function (){return require 'src/functions/add/add_list.php';});
$router->get('/home/mon-espace-recruteur/job/rolist/add', function (){return require 'src/functions/add/add_list.php';});

$router->get('/home/mon-espace-recruteur/profil/edit', function (){return require 'src/functions/edit/edit_profil_company.php';});

//admin section
$router->get('/home/admin/dashboard/job/edit/:id', function ($id){return require 'src/functions/edit/edit_job.php';});
$router->get('/home/admin/dashboard/job/add', function (){return require 'src/functions/add/add_job.php';});
$router->get('/home/admin/dashboard/job/delete/:id', function ($id){return require 'src/functions/delete/delete_job.php';});
$router->get('/home/admin/dashboard/job/info/:id', function ($id){return require 'src/functions/info_job.php';});
$router->get('/home/admin/dashboard/enterprise/add', function (){return require 'src/functions/add/add_enterprise.php';});
$router->get('/home/admin/dashboard/enterprise/edit/:id', function ($id){return require 'src/functions/edit/edit_enterprise.php';});
$router->get('/home/admin/dashboard/enterprise/delete/:id', function ($id){return require 'src/functions/delete/delete_enterprise.php';});
$router->get('/home/admin/dashboard/candidate/delete:id', function ($id){return require 'src/functions/delete/delete_candidate.php';});
$router->get('/home/admin/dashboard/user/add', function (){return require 'src/functions/add/add_user.php';});
$router->get('/home/admin/dashboard/user/edit/:id', function ($id){return require 'src/functions/edit/edit_user.php';});
$router->get('/home/admin/dashboard/user/delete:id', function ($id){return require 'src/functions/delete/delete_user.php';});


$router->run();