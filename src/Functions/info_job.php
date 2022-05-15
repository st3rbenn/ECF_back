<?php
session_start();

$id = substr($_SERVER['REQUEST_URI'], strrpos($_SERVER['REQUEST_URI'], '/') + 1);

$database = new Database\DB();
$db = $database::getConnection();

$getJobs = new Controller\Espace_Recruteur($db);
$candidats = $getJobs->getAllCandidat($id);


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
        <h1 class="modifyTitle">info sur l'offre</h1>

        <div class="container mt-4" id="datatables">
            <table id="candidateTable" class="table text-white">
                <thead class="textForm fw-bold fs-2">
                <tr>
                    <th>prenom</th>
                    <th>nom</th>
                    <th>telephone</th>
                    <th>email</th>
                    <th>cv</th>
                </tr>
                </thead>
                <tbody class="textForm fs-4">
                <?php while($candidat = $candidats->fetch(PDO::FETCH_OBJ)): ?>
                    <tr>
                        <td><?= $candidat->prenom ?></td>
                        <td><?= $candidat->nom ?></td>
                        <td><?= $candidat->telephone ?></td>
                        <td><?= $candidat->mail ?></td>
                        <td><a href="<?= $candidat->cv ?>" target="_blank">lien</a></td>
                    </tr>
                <?php endwhile; ?>
                </tbody>
            </table>
        </div>
    </section>
</main>

<script>
    $(document).ready(function () {
        $('#candidateTable').DataTable();
    });
</script>

<script src="/assets/js/components/espace_recruteurs.js"></script>
<script src="/assets/js/components/switch.js"></script>
</body>
</html>