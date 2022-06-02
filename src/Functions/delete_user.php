<?php
session_start();
$id = substr($_SERVER['REQUEST_URI'], strrpos($_SERVER['REQUEST_URI'], '/') + 1);

$database = new Database\DB;
$db = $database::getConnection();

$deleteCandidate = new Controller\Functions($db);

$url = $_SERVER['REQUEST_URI'];
$url = explode('/', $url);
$id = $url[count($url) - 1];

if($deleteCandidate->deleteUser($id)) {
    header('Location: /home/admin/dashboard');
}else {
    echo "Error deleting user";
    sleep(5);
    header('Location: /home/admin/dashboard');
}

