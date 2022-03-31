<?php

namespace Class;


class Inscription
{

    private string $firstName;
    private string $lastName;
    private string $entreprise;
    private string $mail;
    private $mdp;
    /**
     * @return string
     */
    public function getMail(): string
    {
        return $this->mail;
    }

    private $connexion;
    private $sql;


    public function __construct($db)
    {
        $this->connexion = $db;
    }


    public function sendForm()
    {
        $this->firstName = htmlspecialchars(html_entity_decode($_POST['firstName']));
        $this->lastName = htmlspecialchars(html_entity_decode($_POST['lastName']));
        $this->mail = htmlspecialchars(html_entity_decode($_POST['mail']));
        $this->mdp = htmlspecialchars(html_entity_decode(password_hash($_POST['mdp'], PASSWORD_BCRYPT)));
        if (empty($_POST['entreprise'])){
            $this->entreprise = 'undefined';
        }
        else {
            $this->entreprise = htmlspecialchars(html_entity_decode($_POST['entreprise']));
        }

        $this->sql = "INSERT INTO user (firstname, lastname, company, mail, password) 
                      VALUES ('$this->firstName', '$this->lastName', '$this->entreprise', '$this->mail', '$this->mdp')";

        $query = $this->connexion->prepare($this->sql);
        $query->execute();
    }

    public function ckeckIfMailExist()
    {
        $this->mail = htmlspecialchars(html_entity_decode($_POST['mail']));

        $this->sql = "SELECT * FROM user WHERE mail = '$this->mail'";

        $query = $this->connexion->prepare($this->sql);
        $query->fetch(\PDO::FETCH_ASSOC);

        $query->execute();
        return $query;
    }
}