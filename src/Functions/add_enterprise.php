<?php

session_start();

$database = new Database\DB();
$db = $database::getConnection();
$editEnterprise = new Controller\Functions($db);
if($editEnterprise->addEnterprise()){
    header('Location: /home/admin/dashboard');
}