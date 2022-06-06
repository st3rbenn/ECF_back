<?php

session_start();
$url = explode('/', $_SERVER['REQUEST_URI'])[4];
$jobId = explode('/', $_SERVER['HTTP_REFERER'])[7];
$database = new Database\DB;
$db = $database::getConnection();

$getJobs = new Controller\Espace_Recruteur($db);

if($url === 'reqlist'){
    if($getJobs->addRequirementItemToList($jobId)){
        header('Location: /home/mon-espace-recruteur/job/edit/'.$jobId);
    }
}
else if($url === 'rolist'){
    if($getJobs->addRoleItemToList($jobId)){
        header('Location: /home/mon-espace-recruteur/job/edit/'.$jobId);
    }
}