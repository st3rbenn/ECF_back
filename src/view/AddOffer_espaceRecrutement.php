<?php
session_start();
require '../../vendor/autoload.php';
$database = new Database\DB;
$db = $database::getConnection();

$getJobs = new Controller\Espace_Recruteur($db);
$jobs = $getJobs->getAllJobs();

$onlyOne = true;
?>

<form action="/home/mon-espace-recruteur/job/add" method="POST" class="d-grid gap-3 p-5 add__jobs" id="add_jobs">
    <input type="text" name="id" value="" hidden>

    <div class="input-group">
        <label for="Title" class="input-group-text fs-4 fw-bold">Titre de l'offre</label>
        <input type="text" id="Title" aria-label="TitleOffer" name="position" class="form-control fs-4" value="" >
    </div>

    <div class="input-group">
        <label class="input-group-text fs-4 fw-bold" for="Date">Date d'ajout</label>
        <input type="date" id="Date" name="postedAt" class="form-control fs-4" value="" />
    </div>

    <div class="input-group">
        <label class="input-group-text fs-4 fw-bold" for="Description">Description de l'offre</label>
        <textarea aria-label="TitleOffer" id="Description" name="description" class="form-control fs-4"></textarea>
    </div>

    <div class="input-group">
        <label class="input-group-text fs-4 fw-bold" for="inputGroupSelect01">Type de contract</label>
        <select class="form-select" name="contract" id="inputGroupSelect01">
            <option selected class="fs-4">Choose...</option>
            <option value="Part Time" class="fs-4">Part Time</option>
            <option value="Full Time" class="fs-4">Full Time</option>
            <option value="Freelance" class="fs-4">Freelance</option>
        </select>
    </div>

    <div class="input-group">
        <label class="input-group-text fs-4 fw-bold" for="Requirement">exigence</label>
        <textarea type="text" aria-label="TitleOffer" name="req_content" id="Requirement" class="form-control fs-4"></textarea>
    </div>

    <div class="flex flex-column gap-2">
        <label class="input-group-text fs-4 fw-bold" for="req_List">Les exigences</label>
            <input type="text" id="req_List" name="req_item" aria-label="TitleOffer" class="form-control fs-4" value="">
    </div>

    <div class="input-group">
        <label class="input-group-text fs-4 fw-bold" for="Role">Le post</label>
        <textarea type="text" name="role_content" id="Role" class="form-control fs-4"></textarea>
    </div>

    <div class="flex flex-column gap-2">
        <label class="input-group-text fs-4 fw-bold" for="role_List">les prérequis</label>
            <input type="text" id="role_List" name="role_item" class="form-control fs-4" value="">
    </div>

    <div class="d-flex justify-content-between">
        <input type="submit" value="Ajouter l'offre" class="btn_modify btn_return">
    </div>

</form>
