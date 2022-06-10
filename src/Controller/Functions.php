<?php

namespace Controller;

class Functions
{
    public function __construct($db)
    {
        $this->connexion = $db;
    }


    public function getAllJobs()
    {
        $query = "SELECT * FROM job";
        $result = $this->connexion->prepare($query);
        $result->execute();
        return $result;
    }

    public function getAllEntreprise()
    {
        $query = "SELECT * FROM entreprise";
        $result = $this->connexion->prepare($query);
        $result->execute();
        return $result;
    }

    public function getAllUser()
    {
        $query = "SELECT * FROM user";
        $result = $this->connexion->prepare($query);
        $result->execute();
        return $result;
    }

    public function getAllCandidate()
    {
        $query = "SELECT * FROM candidat";
        $result = $this->connexion->prepare($query);
        $result->execute();
        return $result;
    }

    public function deleteCandidate(): bool
    {
        if(isset($_GET['id'])){
            $id = $_GET['id'];
            $query = "DELETE FROM candidat WHERE id = :id";
            $result = $this->connexion->prepare($query);
            $result->bindParam(':id', $id);
            $result->execute();
            return true;
        }
        return false;
    }

    public function deleteUser(): bool
    {
        if(isset($_GET['id'])){
            $id = $_GET['id'];
            $query = "DELETE FROM user WHERE id = :id";
            $result = $this->connexion->prepare($query);
            $result->bindParam(':id', $id);
            $result->execute();
            return true;
        }
        return false;
    }

    public function editEntreprise($id): bool
    {
        $query = "UPDATE entreprise a SET
                          a.company = :company,
                          a.location = :location
                          WHERE a.id = :id";
        $query = $this->connexion->prepare($query);
        $cookie = $_COOKIE['data'];
        $cookie = json_decode($cookie, true);
        $query->bindParam(':company', $cookie['companyName']);
        $query->bindParam(':location', $cookie['companyLocation']);
        $query->bindValue(':id', $id);
        $query->execute();
        return true;
    }

    public function deleteEntreprise($id): bool
    {
            $query = "DELETE FROM entreprise WHERE id = :id";
            $result = $this->connexion->prepare($query);
            $result->bindParam(':id', $id);
            $result->execute();
        return true;
    }

    public function addEnterprise(): bool
    {
        $this->sql = "INSERT INTO entreprise (company, location, logo, logo_background) VALUES (:company, :location, :logo, :logoBackground)";
        $query = $this->connexion->prepare($this->sql);
        $query->bindParam(':company',$_POST['companyName']);
        $query->bindParam(':location', $_POST['companyLocation']);
        if(!isset($_POST['logo']) || $_POST['logo'] != ''){
            $query->bindValue(':logo', '/static/logo/default.svg');
        }
        if(!isset($_POST['logoBackground'])){
            $query->bindValue(':logoBackground', 'hsl(12, 79%, 52%)');
        }
        $query->execute();
        return true;
    }

    public function addUser(): bool
    {
        $this->sql = "INSERT INTO user (firstname, lastname, mail, password, role, company) VALUES (:firstname, :lastname, :email, :password, :role, :company)";
        $query = $this->connexion->prepare($this->sql);
        $query->bindParam(':firstname', $_POST['firstName']);
        $query->bindParam(':lastname', $_POST['lastName']);
        $query->bindParam(':email', $_POST['email']);
        //encrypt password
        $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
        $query->bindParam(':password', $password);
        $role = 'ROLE_' . strtoupper($_POST['role']);
        $query->bindParam(':role', $role);
        $query->bindParam(':company', $_POST['company']);
        $query->execute();
        return true;
    }

    public function editUser($id): bool
    {
        $this->sql = "UPDATE user a SET
                          a.firstname = :firstname,
                          a.lastname = :lastname,
                          a.mail = :email,
                          a.role = :role,
                          a.company = :company
                          WHERE a.id = :id";
        $query = $this->connexion->prepare($this->sql);
        $cookie = json_decode($_COOKIE['data'], true);
        $query->bindParam(':firstname', $cookie['firstname']);
        $query->bindParam(':lastname', $cookie['lastname']);
        $query->bindParam(':email', $cookie['email']);
        $query->bindParam(':role', $cookie['role']);
        $query->bindParam(':company', $cookie['companyName']);
        $query->bindValue(':id', $id);
        $query->execute();
        return true;
    }

    public function applyJobs($id): bool
    {
        $this->sql = "INSERT INTO candidat (job_id, nom, prenom, mail, telephone) VALUES (:id_job, :firstname, :lastname, :email, :phone)";
        $query = $this->connexion->prepare($this->sql);
        $query->bindParam(':id_job', $id);
        $query->bindParam(':firstname', $_POST['firstname']);
        $query->bindParam(':lastname', $_POST['name']);
        $query->bindParam(':email', $_POST['email']);
        $query->bindParam(':phone', $_POST['phone']);
        $query->execute();
        return true;
    }

}