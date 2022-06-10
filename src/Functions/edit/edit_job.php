<?php
session_start();
$id = substr($_SERVER['REQUEST_URI'], strrpos($_SERVER['REQUEST_URI'], '/') + 1);
$database = new Database\DB();
$db = $database::getConnection();
$getJobs = new Controller\Espace_Recruteur($db);
$jobs = $getJobs->getJobById($id);
$reqList = $getJobs->getReqList($id);
$roleList = $getJobs->getRoleList($id);
$url = '/' . explode('/', $_SERVER['HTTP_REFERER'], '4')[3];
var_dump($url);


?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevJobs</title>
    <meta name="description" content="Contrôle de conaissance et d'application des méthodes apprise au CEFIM">
    <link rel="icon" href="/favicon-32x32.png" sizes="any">
    <link rel="icon" href="/favicon-32x32.png" type="image/svg+xml">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <script src="https://kit.fontawesome.com/6b95777d07.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="manifest" href="/index.php">

    <link rel="stylesheet" href="/assets/css/main.css">
</head>
<body>

<header class="header__main" id="blurred" style="margin-bottom: 0 !important">
    <div class="container">
        <div class="header__item header-item">

            <figure class="logo">
                <img src="/assets/img/logo.svg" alt="Logo de DevJobs">
            </figure>
            <div class="header__switchmode">

                <figure class="logo-switchmode">
                    <img src="/assets/img/icon-sun.svg" alt="">
                </figure>
                <div class="switch">
                    <input type="checkbox" class="switch__input" id="theme-switch">
                    <label for="theme-switch" class="switch__label" aria-hidden="true" id="label__switch"></label>
                    <div class="switch__marker" aria-hidden="true" id="switch__button"></div>
                </div>
                <figure class="logo-switchmodelune">
                    <img src="/assets/img/icon-moon.svg" alt="">
                </figure>
            </div>
        </div>
    </div>
</header>

<main class="position-relative" id="blurred">
    <section class="form_edit d-flex flex-column container-xl">
        <h1 class="modifyTitle text-center">Modifier</h1>
        <?php while($row = $jobs->fetch(PDO::FETCH_ASSOC)):?>
            <form action="<?= $url ?>" method="POST" class="d-grid gap-3" id="connexion">
                <input type="text" name="id" value="<?= $id ?>" hidden>

                <div class="input-group">
                    <label for="Title" class="input-group-text fs-4 fw-bold">Titre de l'offre</label>
                    <input type="text" id="Title" aria-label="TitleOffer" name="position" class="form-control fs-4" value="<?= $row['position'] ?>">
                </div>

                <div class="input-group">
                    <label class="input-group-text fs-4 fw-bold" for="Date">Date d'ajout</label>
                    <input type="text" id="Date" aria-label="TitleOffer" class="form-control fs-4" disabled value="<?php if(!empty($row['postedAt'])): ?><?= explode(' ', $row['postedAt'])[0] ?><?php else:?><?= date('d/m/Y')?><?php endif; ?>">
                </div>

                <div class="input-group">
                    <label class="input-group-text fs-4 fw-bold" for="Description">Description de l'offre</label>
                    <textarea aria-label="TitleOffer" id="Description" name="description" class="form-control fs-4"><?php if(!empty($row['description'])): ?><?= $row['description'] ?><?php endif; ?></textarea>
                </div>

                <div class="input-group">
                    <label class="input-group-text fs-4 fw-bold" for="inputGroupSelect01">Type de contract</label>
                    <select class="form-select" name="contract" id="inputGroupSelect01">
                        <option selected class="fs-4">Choose...</option>
                        <option value="Part Time" class="fs-4" <?php if($row['contract'] === 'Part Time'): ?> selected <?php endif;?>>Part Time</option>
                        <option value="Full Time" class="fs-4" <?php if($row['contract'] === 'Full Time'): ?> selected <?php endif;?>>Full Time</option>
                        <option value="Freelance" class="fs-4" <?php if($row['contract'] === 'Freelance'): ?> selected <?php endif;?>>Freelance</option>
                    </select>
                </div>

                <div class="input-group">
                    <label class="input-group-text fs-4 fw-bold" for="Requirement">exigence</label>
                    <textarea type="text" aria-label="TitleOffer" name="req_content" id="Requirement" class="form-control fs-4"><?= $row['req_content']?></textarea>
                </div>

                <div class="flex flex-column gap-2">
                    <a class="btn btn-success btn-sm rounded-0" href="/home/mon-espace-recruteur/job/reqlist/add">Ajouter <i class="fa fa-add"></i></a>
                    <label class="input-group-text fs-4 fw-bold" for="req_List">Les exigences</label>
                    <?php while($row2 = $reqList->fetch(PDO::FETCH_ASSOC)): ?>
                        <input type="text" id="req_List" name="<?= 'req_item_'.$row2['id'] ?>" aria-label="TitleOffer" class="form-control fs-4" value="<?= $row2['item'] ?>">
                        <a href="/home/mon-espace-recruteur/job/reqlist/delete/<?= $row2['id'] ?>" class="btn btn-danger btn-sm rounded-0 mb-4">Retirer <i class="fa fa-trash"></i></a>
                    <?php endwhile; ?>
                </div>

                <div class="input-group">
                    <label class="input-group-text fs-4 fw-bold" for="Role">Le post</label>
                    <textarea type="text" name="role_content" id="Role" class="form-control fs-4"><?= $row['role_content'] ?></textarea>
                </div>

                <div class="flex flex-column gap-2">
                    <a class="btn btn-success btn-sm rounded-0" href="/home/mon-espace-recruteur/job/rolist/add">Ajouter <i class="fa fa-add"></i></a>
                    <label class="input-group-text fs-4 fw-bold" for="role_List">les prérequis</label>
                    <?php while($row3 = $roleList->fetch(PDO::FETCH_ASSOC)): ?>
                        <input type="text" id="role_List" name="<?= 'role_item_'.$row3['id'] ?>" class="form-control fs-4" value="<?= $row3['item'] ?>">
                        <a href="/home/mon-espace-recruteur/job/rolist/delete/<?= $row3['id'] ?>" class="btn btn-danger btn-sm rounded-0 mb-4">Retirer <i class="fa fa-trash"></i></a>
                    <?php endwhile; ?>
                </div>

                <div class="d-flex justify-content-between">
                    <a href="<?= $url?>" class="btn_return" >Revenir a mon espace</a>
                    <button type="submit" class="btn_modify btn_return">accepter les modifications</button>
                </div>

            </form>
        <?php endwhile; ?>
    </section>
</main>

<script src="/assets/js/components/espace_recruteurs.js"></script>
<script src="/assets/js/components/switch.js"></script>
</body>
</html>