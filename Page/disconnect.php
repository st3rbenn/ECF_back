<?php

session_start();
if(isset($_COOKIE['mail']) && isset($_COOKIE['role']) && isset($_COOKIE['password'])){
    setcookie('mail', '', time() - 3600, '/');
    setcookie('role', '', time() - 3600, '/');
    setcookie('password', '', time() - 3600, '/');
    setcookie('PHPSESSID', '', time() - 3600, '/');
}
session_destroy();
header('Location: /redirect');
