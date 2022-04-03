<?php

namespace Database;
use PDO;
use Exception;

class Database
{
    private static PDO $connection;

    public static function getConnection(): PDO
    {
        if (!isset(static::$connection)) {
            try {
                static::$connection = new PDO(
                    'mysql:host=localhost;dbname=api_ecf;charset=utf8',
                    '',
                    '',
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
