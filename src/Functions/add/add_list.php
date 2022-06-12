<?php

session_start();
$url = explode('/', $_SERVER['REQUEST_URI'])[4];
$database = new Database\DB;
$db = $database::getConnection();

$getJobs = new Controller\Espace_Recruteur($db);

if($url === 'reqlist'){
    $reqId = explode('/', $_SERVER['HTTP_REFERER'])[8];
    if($getJobs->addRequirementItemToList($reqId)){
        header('Location: /home/mon-espace-recruteur/job/edit/'.$reqId);
    }
}
else if($url === 'rolist'){
    $roleId = explode('/', $_SERVER['HTTP_REFERER'])[7];
    if($getJobs->addRoleItemToList($roleId)){
        header('Location: /home/mon-espace-recruteur/job/edit/'.$roleId);
    }
}