<?php

namespace Controller;

class Espace_Recruteur
{

    private $connexion;
    private $sql;

    public function __construct($db)
    {
        $this->connexion = $db;
    }

    public function getAllJobs()
    {
        $this->sql = "SELECT a.company, contract, position, logo, logo_background, position, location, postedAt, a.id
                      FROM job a
                      INNER JOIN entreprise b
                      WHERE b.company = :company AND a.company = :company;";

        $query =  $this->connexion->prepare($this->sql);
        $query->bindValue(':company', $_SESSION['company']);
        $query->execute();
        return $query;
    }

    public function deleteJobs($id): bool
    {
        $this->sql = 'DELETE FROM job WHERE id = :id';
        $query = $this->connexion->prepare($this->sql);
        $query->bindValue(':id', $id);
        $query->execute();
        return true;
    }
}