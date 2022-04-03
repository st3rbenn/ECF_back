<?php

namespace Class;

class Connexion
{
    private $connexion;
    private $sql;
    private $password;
    private $mail;

    public function __construct($db)
    {
        $this->connexion = $db;
    }

    public function sendInfoForConnection()
    {
        $this->mail = htmlspecialchars(html_entity_decode($_POST['mail']));
        $this->password = htmlspecialchars(html_entity_decode($_POST['mdp']));
        $this->sql = "SELECT * FROM user a 
                      WHERE a.mail = :mail AND a.password = :mdp";
        $query = $this->connexion->prepare($this->sql);

        $query->bindParam(':mail', $this->mail);
        $query->bindParam(':mdp', $this->password);

        $query->execute();
    }
}