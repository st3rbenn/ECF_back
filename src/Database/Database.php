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
                    'root',
                    '30122001',
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

class DatabaseExterne
{
    private static PDO $connection;

    public static function getConnection(): PDO
    {
        if (!isset(static::$connection)) {
            try {
                static::$connection = new PDO(
                    'mysql:host=campus01.o2switch.net;dbname=colas_api_ecf;charset=utf8',
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