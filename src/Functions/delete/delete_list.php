<?php
session_start();
$id = substr($_SERVER['REQUEST_URI'], strrpos($_SERVER['REQUEST_URI'], '/') + 1);
$url = explode('/', $_SERVER['REQUEST_URI'])[4];
$jobId = explode('/', $_SERVER['HTTP_REFERER'])[7];
$database = new Database\DB;
$db = $database::getConnection();

$getJobs = new Controller\Espace_Recruteur($db);


if($url === 'reqlist'){
    if($getJobs->deleteRequirementItemFromList($id)){
        header('Location: /home/mon-espace-recruteur/job/edit/'.$jobId);
    }
}
else if($url === 'rolist'){
    if($getJobs->deleteRoleItemFromList($id)){
        header('Location: /home/mon-espace-recruteur/job/edit/'.$jobId);
    }
}