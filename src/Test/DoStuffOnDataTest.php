<?php

use PHPUnit\Framework\TestCase;
use Controller\Espace_Recruteur;

class DoStuffOnDataTest extends TestCase
{
    public function testDeleteAnExistJob()
    {
        $database = new Database\DB();
        $db = $database->getConnection();
        $espace_recruteur = new Espace_Recruteur($db);
        $this->assertEquals(true, $espace_recruteur->deleteJobs('542'));
    }

}