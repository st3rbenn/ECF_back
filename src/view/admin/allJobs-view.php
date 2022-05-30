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
        <li class="breadcrumb-item"><a href="#">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">Jobs</li>
    </ol>
</nav>
<h1 class="h2">Jobs</h1>
<div class="row">
    <div class="col-7 col-xl-12 mb-4 mb-lg-0">
        <div class="card">
            <h5 class="card-header">Tout les jobs</h5>
            <div class="card-body">
                <table id="example" class="table table-striped" style="width:100%">
                    <thead>
                    <tr>
                        <th>id</th>
                        <th>company</th>
                        <th>contract</th>
                        <th>position</th>
                        <th>postedAt</th>
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
                        </tr>
                    <?php endwhile; ?>
                    </tbody>
                </table>
                <a href="#" class="btn btn-block btn-light">View all</a>
            </div>
        </div>
    </div>
</div>
