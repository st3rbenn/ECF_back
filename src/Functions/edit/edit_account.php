<?php

session_start();
$database = new Database\DB();
$db = $database::getConnection();
$editAccount = new Controller\Functions($db);

if($editAccount->editAccount()){
    header('Location: /home/account');
}
