<?php
session_start();
$id = substr($_SERVER['REQUEST_URI'], strrpos($_SERVER['REQUEST_URI'], '/') + 1);

$database = new Database\DB;
$db = $database::getConnection();

$getJobs = new Controller\Espace_Recruteur($db);




if($getJobs->deleteJobs($id)){
    $_SESSION['message'] = "Votre offre a bien été supprimée";
}
else{
    $_SESSION['message'] = "Une erreur est survenue";
}
header("Location: /home/mon-espace-recruteur");


