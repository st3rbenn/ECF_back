<?php
require '../../../vendor/autoload.php';
session_start();
$database = new Database\DB();
$db = $database::getConnection();

$allJobs = new Controller\Functions($db);
$allJobs = $allJobs->getAllJobs();
?>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/home/admin/dashboard">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">Jobs</li>
    </ol>
</nav>
<div class="row">
    <div class="col-12 mb-4 mb-lg-0">
        <div class="card">
            <h5 class="card-header">Tout les jobs</h5>
            <div class="card-body">
                <div class="d-flex justify-content-end">
                    <button type="button" class="btn btn-primary">Ajouter une offre</button>
                </div>
                <table id="dataTable" class="table table-striped" style="width:100%">
                    <thead>
                    <tr>
                        <th>id</th>
                        <th>company</th>
                        <th>contract</th>
                        <th>position</th>
                        <th>postedAt</th>
                        <th>Do Stuff</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php while($job = $allJobs->fetch(PDO::FETCH_OBJ)): ?>
                        <tr>
                            <td><?= $job->id ?></td>
                            <td><?= $job->company ?></td>
                            <td><?= $job->contract ?></td>
                            <td><?= $job->position ?></td>
                            <td><?= $job->postedAt ?></td>
                            <td>
                                <a class="btnJobs" href="/home/admin/dashboard/job/info/<?= $job->id ?>"><i class="fa-solid fa-info"></i></a>
                                <a class="btnJobs" href="/home/jobs?id=<?= $job->id ?>"><i class="fa-solid fa-eye"></i></a>
                                <a class="btnJobs" id="edit"><i class="fa-solid fa-pen-to-square"></i></a>
                                <a class="btnJobs" href="/home/admin/dashboard/job/delete/<?= $job->id ?>"><i class="fa-solid fa-trash"></i></a>
                            </td>
                        </tr>
                    <?php endwhile; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>