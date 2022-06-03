<?php
require '../../../vendor/autoload.php';
session_start();
$database = new Database\DB();
$db = $database::getConnection();

$allUser = new Controller\Functions($db);
$allUser = $allUser->getAllUser();
?>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/home/admin/dashboard">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">Users</li>
    </ol>
</nav>
<div class="row">
    <div class="col-12 mb-4 mb-lg-0">
        <div class="card">
            <h5 class="card-header">Tout les utilisateurs</h5>
            <div class="card-body">
                <div class="d-flex justify-content-end">
                    <button type="button" class="btn btn-primary">Ajouter un utilisateur</button>
                </div>
                <table id="dataTable" class="table table-striped" style="width:100%">
                    <thead>
                    <tr>
                        <th>id</th>
                        <th>firstname</th>
                        <th>lastname</th>
                        <th>mail</th>
                        <th>company</th>
                        <th>role</th>
                        <th>Do Stuff</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php while($user = $allUser->fetch(PDO::FETCH_OBJ)): ?>
                        <tr>
                            <td><?= $user->id ?></td>
                            <td><?= $user->firstname ?></td>
                            <td><?= $user->lastname ?></td>
                            <td><?= $user->mail ?></td>
                            <td><?= $user->company ?></td>
                            <td><?= $user->role ?></td>
                            <td>
                                <a class="btnJobs" style="margin-left: 1rem" href="/home/admin/dashboard"><i class="fa-solid fa-info"></i></a>
                                <a class="btnJobs" style="margin-left: 1rem" href="/home/admin/dashboard"><i class="fa-solid fa-pen-to-square"></i></a>
                                <a class="btnJobs" style="margin-left: 1rem" href="/home/admin/dashboard/user/delete?id=<?= $user->id ?>"><i class="fa-solid fa-trash"></i></a>
                            </td>
                        </tr>
                    <?php endwhile; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>