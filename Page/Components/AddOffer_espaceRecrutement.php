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
//action="/AddOffer_Step-2" method="POST"
$onlyOne = true;
?>


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


<div  class="form__add__jobs" id="form">

    <h1 class="submitFormAddOfferTitle">Première Étapes:</h1>
    <div>
        <p class="form-label">Voici, une reproduction de ce qui apparaitra sur la page principale du site.</p>
    </div>



    <input type="submit" id="submitFormAddOffer" class="formAddOfferBtn" value="Passer a l'étape suivante">
</div>
