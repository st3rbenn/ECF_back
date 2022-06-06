<?php

session_start();
$database = new Database\DB();
$db = $database::getConnection();
$getJobs = new Controller\Espace_Recruteur($db);

if($getJobs->edit_profile()){
    header('Location: /home/mon-espace-recruteur');
}else {
    echo "Erreur";
    header('Location: /home/mon-espace-recruteur');
}
