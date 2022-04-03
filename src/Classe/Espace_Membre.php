<?php

namespace Class;

class Espace_Membre
{

    private $connexion;
    private $sql;

    public function __construct($db)
    {
        $this->connexion = $db;
    }

    public function getAllJobs()
    {
        $this->sql = "SELECT a.company, contract, position, logo, logo_background, position, location, postedAt
                      FROM job a 
                      INNER JOIN entreprise b
                      WHERE b.company = :company AND A.company = :company;";

        $query = $this->connexion->prepare($this->sql);
        $query->bindValue(':company', $_SESSION['company']);
        $query->execute();
        return $query;
    }
}