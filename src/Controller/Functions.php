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

}