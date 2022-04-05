<?php
session_start();
include('../../src/Database/Database.php');
include('../../src/Classe/Espace_Recruteur.php');
use \Class\Espace_Recruteur;
use \Database\Database;

$database = new Database;
$db = $database->getConnection();

$getJobs = new Espace_Recruteur($db);
$jobs = $getJobs->getAllJobs();

if(isset($_GET['id'])){
    $getJobs->deleteJobs();
}

$onlyOne = true;
?>

<div class="add__jobs" id="form">
    <?php while($row = $jobs->fetch(PDO::FETCH_ASSOC)):?>
        <?php if($onlyOne):?>
            <form class="jobs__container" data-id="<?=$row['id']?>" method="POST" action="">
                <img class="jobs__container__logo" alt="entreprise" src='https://www.apiecf.colas.cefim.o2switch.site<?= $row['logo']?>' style="background-color: <?= $row['logo_background'] ?>">
                <div class="jobs__container__items">
                    <div class="time">
                        <p><?= explode(' ', $row['postedAt'])[0]?></p>
                        <span class="dot"></span>
                        <p><?=$row['contract']?></p>
                    </div>
                    <div class="jobs__container__info">
                        <h3 class="jobs__container__info__name"><?=$row['position']?></h3>
                        <p><?=$row['company']?></p>
                    </div>
                    <p class="city"><?=$row['location']?></p>
                </div>
            </form>
            <?php $onlyOne = false;?>
        <?php endif;?>
    <?php endwhile;?>
    <div class="jobsTemplate">
        <div class="add__jobs__title">
            <h1 class="submitFormAddOfferTitle">Première Étapes </h1>
            <blockquote class="blockquote__addOffer textForm">Tu verras la deuxième est tout aussi simple ✨</blockquote>
            <div class="lineStep"></div>
        </div>
        <div class="add__jobs__item">
            <p class="first__step">Voici, une reproduction de ce qui apparaitra sur la page principale du site.</p>
            <p class="smallText">( Nous avons pris l'initiative de remplir certaines infos 😇 )</p>
            <p class="first__step">Il te suffit De nous indiquer </p>
        </div>
        <ul>
            <li class="first__step">Le titre de ton offre</li>
            <li class="first__step">Le type de contrat</li>
        </ul>
    </div>
</div>


