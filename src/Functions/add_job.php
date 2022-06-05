<?php

session_start();
$database = new Database\DB;
$db = $database::getConnection();

$getJobs = new Controller\Espace_Recruteur($db);

if($getJobs->addJob())
{
    echo '<script>alert("Votre offre a bien été ajoutée")</script>';
    header('Location: /home/mon-espace-recruteur');
}