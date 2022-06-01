<?php
require '../../../vendor/autoload.php';
session_start();
$database = new Database\DB();
$db = $database::getConnection();

$allEnterprise = new Controller\Functions($db);
$allEnterprise = $allEnterprise->getAllEntreprise();
?>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/home/admin/dashboard">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">entreprise</li>
    </ol>
</nav>
<div class="row">
    <div class="col-7 col-xl-12 mb-4 mb-lg-0">
        <div class="card">
            <h5 class="card-header">Toute les entreprises</h5>
            <div class="card-body">
                <table id="example" class="table table-striped" style="width:100%">
                    <thead>
                    <tr>
                        <th>id</th>
                        <th>company</th>
                        <th>location</th>
                        <th>logo</th>
                        <th>Do Stuff</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php while($enteprise = $allEnterprise->fetch(PDO::FETCH_OBJ)): ?>
                        <tr>
                            <td><?= $enteprise->id ?></td>
                            <td><?= $enteprise->company ?></td>
                            <td><?= $enteprise->location ?></td>
                            <td style="background-color: <?= $enteprise->logo_background ?>"><img class="logo" src="https://www.apiecf.colas.cefim.o2switch.site<?= $enteprise->logo ?>"></td>
                            <td>
                                <a class="btnJobs" style="margin-left: 1rem" href="/home/admin/dashboard"><i class="fa-solid fa-info"></i></a>
                                <a class="btnJobs" style="margin-left: 1rem" href="/home/admin/dashboard"><i class="fa-solid fa-pen-to-square"></i></a>
                                <a class="btnJobs" style="margin-left: 1rem" href="/home/admin/dashboard"><i class="fa-solid fa-trash"></i></a>
                            </td>
                        </tr>
                    <?php endwhile; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>