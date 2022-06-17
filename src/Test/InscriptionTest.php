<?php


use Controller\Inscription;
use PHPUnit\Framework\TestCase;

class InscriptionTest extends TestCase
{

    public function testCheckIfAccountAlreadyExist()
    {
        $database = new Database\DB();
        $db = $database->getConnection();
        $inscription = new Inscription($db);
        $this->assertEquals(true, $inscription->testForCheckIfAccountExistBeforeAddingAccount('admin@admin.admin'));

    }

    public function testCheckIfAccountDoesNotExist()
    {
        $database = new Database\DB();
        $db = $database->getConnection();
        $inscription = new Inscription($db);
        $this->assertEquals(false, $inscription->testForCheckIfAccountExistBeforeAddingAccount('admin@admin.com'));
    }

    public function testCheckIfEnterpriseExist()
    {
        $database = new Database\DB();
        $db = $database->getConnection();
        $inscription = new Inscription($db);
        $this->assertEquals(true, $inscription->testForCheckIfEnterpriseExistBeforeAddingAccount('Vector'));
    }

    public function testCheckIfEnterpriseDoesNotExist()
    {
        $database = new Database\DB();
        $db = $database->getConnection();
        $inscription = new Inscription($db);
        $this->assertEquals(false, $inscription->testForCheckIfEnterpriseExistBeforeAddingAccount('Vectoresh'));
    }

}
