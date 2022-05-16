<?php

session_start();
$url = explode('/', $_SERVER['REQUEST_URI'])[3];
var_dump($_POST);


$database = new Database\DB;
$db = $database::getConnection();

$getJobs = new Controller\Espace_Recruteur($db);

if($getJobs->addJob())
{
    echo '<script>alert("Votre offre a bien été ajoutée")</script>';
    header('Location: /home/mon-espace-recruteur');
}