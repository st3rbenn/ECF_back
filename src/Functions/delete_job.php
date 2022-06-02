<?php
session_start();
$id = substr($_SERVER['REQUEST_URI'], strrpos($_SERVER['REQUEST_URI'], '/') + 1);

$database = new Database\DB;
$db = $database::getConnection();

$getJobs = new Controller\Espace_Recruteur($db);
$url = $_SERVER;
$url = explode('/', $url['HTTP_REFERER']);
$url = array_splice($url, 4);
$url = join('/', $url);

if($getJobs->deleteJobs($id)){
    $_SESSION['message'] = "Votre offre a bien été supprimée";
}
else{
    $_SESSION['message'] = "Une erreur est survenue";
}

switch ($url):
    case $url === 'admin/dashboard':
        header("Location: /home/admin/dashboard");
        break;

    case $url === 'mon-espace-recruteur':
        header("Location: /home/mon-espace-recruteur");
        break;
endswitch;


