<?php

namespace Database;
use PDO;
use Exception;

class DB
{
    private static PDO $connection;

    public static function getConnection(): PDO
    {
        if (!isset(static::$connection)) {
            try {
                static::$connection = new PDO(
                    'mysql:host=campus01.o2switch.net;dbname=colas_ecfback;charset=utf8',
                    'colas',
                    'i{S4&22bk!BD',
                    [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
                );
            } catch (Exception $exception) {
                echo 'Une erreur est survenue lors de la connexion a la BDD' . $exception;
                die;
            }
        }
        return static::$connection;
    }
}