<?php

namespace Class;


class Inscription
{
    private string $firstName;
    private string $lastName;
    private string $entreprise;
    private string $mail;
    private $role;
    private $mdp;

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
            $this->role = 'user';
            $this->entreprise = 'undefined';
        }
        else {
            $this->role = 'recruteur';
            $this->entreprise = htmlspecialchars(html_entity_decode($_POST['entreprise']));
        }

        $this->sql = "INSERT INTO user (firstname, lastname, company, mail, password, role) 
                      VALUES (:firstname, :lastname, :entreprise, :mail, :mdp, '$this->role')";

        $query = $this->connexion->prepare($this->sql);
        $query->bindParam(':firstname', $this->firstName);
        $query->bindParam(':lastname', $this->lastName);
        $query->bindParam(':entreprise', $this->entreprise);
        $query->bindParam(':mail', $this->mail);
        $query->bindParam(':mdp', $this->mdp);
        $query->execute();
    }

    public function checkIfAccountExist()
    {
        $this->mail = htmlspecialchars(html_entity_decode($_POST['mail']));
        $this->sql = "SELECT * FROM user WHERE mail = :mail";
        $query = $this->connexion->prepare($this->sql);
        $query->bindParam(':mail', $this->mail);
        $query->fetch(\PDO::FETCH_ASSOC);

        $query->execute();
        return $query;
    }

    public function getMail(): string
    {
        return htmlspecialchars(html_entity_decode($_POST['mail']));
    }

    public function getUserInfoFromDB($mail)
    {
        $this->sql = "SELECT firstname, role, mail, password, company FROM user WHERE mail = :mail";
        $query = $this->connexion->prepare($this->sql);
        $query->bindParam(':mail', $mail);
        $query->fetch(\PDO::FETCH_ASSOC);
        $query->execute();
        return $query;
    }

}