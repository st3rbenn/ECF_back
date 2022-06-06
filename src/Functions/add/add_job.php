<?php

session_start();
$database = new Database\DB;
$db = $database::getConnection();

$getJobs = new Controller\Espace_Recruteur($db);

if($getJobs->addJob())
{
    $url = explode('/', $_SERVER['REQUEST_URI'])[2];
    if($url === 'mon-espace-recruteur'){
        header('Location: /home/mon-espace-recruteur');
    }else if($url === 'admin'){
        header('Location: /home/admin/dashboard');
    }
}