<?php

session_start();
$database = new Database\DB;
$db = $database::getConnection();

$addUser = new Controller\Functions($db);

if($addUser->addUser()) {
    header('location: /home/admin/dashboard');
}
