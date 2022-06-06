<?php

session_start();
$id = substr($_SERVER['REQUEST_URI'], strrpos($_SERVER['REQUEST_URI'], '/') + 1);

$database = new Database\DB;
$db = $database::getConnection();

$delEnterprise = new Controller\Functions($db);

if($delEnterprise->deleteEntreprise($id)){
    header('Location: /home/admin/dashboard');
}