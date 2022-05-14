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


    public function getJobById($id)
    {
        $this->sql = "SELECT a.position, a.id, a.contract, a.postedAt, b.description
                      FROM job a
                      INNER JOIN job_detail b
                      ON a.id = b.job_id
                      WHERE a.id = :id;";

        $query =  $this->connexion->prepare($this->sql);
        $query->bindValue(':id', $id);
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

    public function editJobs($id): bool
    {
        if(isset($_POST['id']))
        {
            $this->sql = 'UPDATE job a SET
                          a.position = :position,
                          a.contract = :contract
                          WHERE a.id = :id';
            $query = $this->connexion->prepare($this->sql);
            $query->bindValue(':position', $_POST['position']);
            $query->bindValue(':contract', $_POST['contract']);
            $query->bindValue(':id', $id);
            $query->execute();


            $this->sql = 'UPDATE job_detail b SET
                          b.description = :description
                          WHERE b.job_id = :id';
            $query = $this->connexion->prepare($this->sql);
            $query->bindValue(':description', $_POST['description']);
            $query->bindValue(':id', $id);
            $query->execute();

            return true;
        }
        return false;
    }
}

/*$this->sql = 'UPDATE job SET
               contract = :contract,
               position = :position,
               postedAt = :postedAt,
               b.description = :description,
               c.content = :requirement,
               d.content = :role

                WHERE id = :id';*/