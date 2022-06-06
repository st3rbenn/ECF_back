<?php
session_start();

$id = substr($_SERVER['REQUEST_URI'], strrpos($_SERVER['REQUEST_URI'], '/') + 1);
$database = new Database\DB();
$db = $database::getConnection();
$editEnterprise = new Controller\Functions($db);
if($editEnterprise->editEntreprise($id)){
    header('Location: /home/admin/dashboard');
}