<?php

session_start();
if(isset($_COOKIE['mail']) && isset($_COOKIE['role']) && isset($_COOKIE['password'])){
    setcookie('mail', '', time() - 365*24*3600, '/');
    setcookie('role', '', time() - 365*24*3600, '/');
}
session_destroy();
header('Location: /home/redirect');
