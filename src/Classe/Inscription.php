<?php

namespace Class;


class Inscription
{

    private string $firstName;
    private string $lastName;
    private string $entreprise;
    private string $mail;
    private $mdp;

    private $connexion;
    private $sql;

    /**
     * @return string
     */



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

    public function getMail(): string
    {
        return htmlspecialchars(html_entity_decode($_POST['mail']));
    }

    public function getFirstName(): string
    {
            if(isset($_POST['firstName'])){
                return $this->firstName = htmlspecialchars(html_entity_decode($_POST['firstName']));
            }
            return false;
    }

    public function checkIfAccountExist()
    {
        $this->mail = htmlspecialchars(html_entity_decode($_POST['mail']));

        $this->sql = "SELECT * FROM user WHERE mail = '$this->mail'";

        $query = $this->connexion->prepare($this->sql);
        $query->fetch(\PDO::FETCH_ASSOC);

        $query->execute();
        return $query;
    }
}