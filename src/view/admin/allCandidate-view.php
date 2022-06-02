<?php
require '../../../vendor/autoload.php';
session_start();
$database = new Database\DB();
$db = $database::getConnection();

$allCandidate = new Controller\Functions($db);
$allCandidate = $allCandidate->getAllCandidate();
?>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/home/admin/dashboard">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">candidats</li>
    </ol>
</nav>
<div class="row">
    <div class="col-7 col-xl-12 mb-4 mb-lg-0">
        <div class="card">
            <h5 class="card-header">Tout les candidats</h5>
            <div class="card-body">
                <table id="dataTable" class="table table-striped" style="width:100%">
                    <thead>
                    <tr>
                        <th>id</th>
                        <th>nom</th>
                        <th>prenom</th>
                        <th>telephone</th>
                        <th>mail</th>
                        <th>cv</th>
                        <th>Do Stuff</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php while($candidate = $allCandidate->fetch(PDO::FETCH_OBJ)): ?>
                        <tr>
                            <td><?= $candidate->id ?></td>
                            <td><?= $candidate->nom ?></td>
                            <td><?= $candidate->prenom ?></td>
                            <td><?= $candidate->telephone ?></td>
                            <td><?= $candidate->mail ?></td>
                            <td><a href="<?= $candidate->cv ?>">link</a></td>
                            <td><a class="btnJobs" style="margin-left: 1rem" href="/home/admin/dashboard/candidate/delete?id=<?= $candidate->id ?>"><i class="fa-solid fa-trash"></i></a></td>
                        </tr>
                    <?php endwhile; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>