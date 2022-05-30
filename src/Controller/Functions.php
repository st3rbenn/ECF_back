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

}