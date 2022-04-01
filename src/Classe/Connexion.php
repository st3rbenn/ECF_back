<?php

namespace Class;

class Connexion
{

    private $mail;
    private $mdp;

    private $connexion;
    private $sql;

    public function __construct($db)
    {
        $this->connexion = $db;
    }


    public function sendInfoForConnection()
    {
        $this->mail = htmlspecialchars(html_entity_decode($_POST['mail']));
        $this->mdp = htmlspecialchars(html_entity_decode($_POST['mdp']));

        $this->sql = "SELECT * FROM user a 
                      WHERE a.mail LIKE '%$this->mail%' AND 
                            a.password LIKE '%$this->mdp%'";

        $query = $this->connexion->prepare($this->sql);
        $query->execute();
    }
}