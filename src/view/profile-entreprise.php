<?php
session_start();
require '../../vendor/autoload.php';


$database = new Database\DB();
$db = $database::getConnection();

$getJobs = new Controller\Espace_Recruteur($db);

$profile = $getJobs->getEnterpriseProfile();

?>

<div class="flex flex-column">
    <form action="/home/mon-espace-recruteur/profil/edit" method="POST" class="d-grid gap-3 p-5 add__jobs" id="add_jobs">
        <?php while($row = $profile->fetch(PDO::FETCH_ASSOC)): ?>
        <div class="input-group">
            <label for="Title" class="input-group-text fs-4 fw-bold">Nom de la societe</label>
            <input type="text" id="Title" aria-label="TitleOffer" name="company" class="form-control fs-4" value="<?= $row['company'] ?>">
        </div>

        <div class="input-group">
            <label class="input-group-text fs-4 fw-bold" for="Date">Lieu</label>
            <input type="text" id="Date" name="location" class="form-control fs-4" value="<?= $row['location']?>" />
        </div>

        <div class="input-group">
            <label for="color" class="input-group-text fs-4 fw-bold">couleur du logo</label>
            <input type="color" id="color" name="color" class="form-control fs-4">
        </div>

        <div class="d-flex justify-content-between" id="sendForm">
            <input type="submit" value="accepter les modifications" class="btn_modify btn_return">
        </div>
    </form>
    <?php endwhile; ?>
    <form action="upload.php" method="post" id="uploadForm" enctype="multipart/form-data" >
        <input type="file" name="file" id="fileToUpload"/>
        <input type="button" value="Upload"/>
    </form>
    <script src="../../assets/js/components/uploadFile.js"></script>
</div>
