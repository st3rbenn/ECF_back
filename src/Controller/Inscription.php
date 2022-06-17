<?php

namespace Controller;


use PDO;

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

    public function createEnterpriseProfilOnNewAccount(): bool
    {
        $this->sql = "INSERT INTO entreprise (company, location, logo, logo_background)
                      VALUES (:company, :location, :logo, :logoBackground)";
        $query = $this->connexion->prepare($this->sql);
        $query->bindValue(':company', $this->entreprise);
        $query->bindValue(':location', 'Write your location');
        $query->bindValue(':logo', '/static/logo/default.svg');
        $query->bindValue(':logoBackground', 'hsl(12, 79%, 52%)');
        $query->execute();
        return true;
    }


    public function checkIfEnterpriseExist($company)
    {
        $this->sql = "SELECT * FROM entreprise WHERE company = :company";
        $query = $this->connexion->prepare($this->sql);
        $query->bindParam(':company', $this->entreprise);
        $query->fetch(\PDO::FETCH_ASSOC);
        $query->execute();
        return $query;
    }

    public function sendForm()
    {
        $this->firstName = htmlspecialchars(html_entity_decode($_POST['firstName']));
        $this->lastName = htmlspecialchars(html_entity_decode($_POST['lastName']));
        $this->mail = htmlspecialchars(html_entity_decode($_POST['mail']));
        $this->mdp = htmlspecialchars(html_entity_decode(password_hash($_POST['mdp'], PASSWORD_BCRYPT)));
        if (empty($_POST['entreprise'])) {
            $this->role = 'ROLE_USER';
            $this->entreprise = 'undefined';
        } else {
            $this->role = 'ROLE_RECRUTEUR';
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

        $stmt = $this->checkIfEnterpriseExist();
        if (!$stmt->fetch(PDO::FETCH_ASSOC)) {
            $this->createEnterpriseProfilOnNewAccount();
        }
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

    //function for test

    public function testForCheckIfAccountExistBeforeAddingAccount($email): bool
    {
        $this->sql = "SELECT * FROM user WHERE mail = :mail";
        $query = $this->connexion->prepare($this->sql);
        $query->bindParam(':mail', $email);
        $query->fetch(\PDO::FETCH_ASSOC);
        $query->execute();
        while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
            if ($row['mail'] == $email) {
                return true;
            }
        }
        return false;
    }

    public function testForCheckIfEnterpriseExistBeforeAddingAccount($company): bool
    {
        $this->sql = "SELECT * FROM entreprise WHERE company = :company";
        $query = $this->connexion->prepare($this->sql);
        $query->bindParam(':company', $company);
        $query->fetch(\PDO::FETCH_ASSOC);
        $query->execute();
        while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
            if ($row['company'] == $company) {
                return true;
            }
        }
        return false;
    }
}