<?php
session_start();
if(isset($_SESSION['role']) && $_SESSION['role'] !== 'recruteur' && $_SESSION['role'] !== 'admin'){
    header('Location: /home');
    exit();
}
if(isset($_SESSION['role'])){
    $role = $_SESSION['role'];
}
$database = new Database\Database;
$db = $database->getConnection();

$getJobs = new Class\Espace_Membre($db);
$jobs = $getJobs->getAllJobs();
if(isset($_SESSION['Offers'])){
    $_POST['Offers'] = $_SESSION['Offers'];
    unset($_SESSION['Offers']);
}
if (!isset($_POST['Offers'])) {
    $_POST['Offers'] = 'AllOffers';
}

var_dump($_POST);

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ECF-Front-End</title>
    <meta name="description" content="Contrôle de connaissance et d'application des méthodes apprise au CEFIM">
    <link rel="icon" href="../favicon-32x32.png" sizes="any">
    <link rel="icon" href="../favicon-32x32.png" type="image/svg+xml">
    <link rel="apple-touch-icon" href="../apple-touch-icon.png">
    <script src="https://kit.fontawesome.com/6b95777d07.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/css/main.css">
</head>
<body>
<header class="header__main" id="blurred">
    <div class="container">
        <div class="header__item header-item">

            <figure class="logo">
                <a href="/home"><img src="/assets/img/logo.svg" alt="Logo de DevJobs"></a>
            </figure>
            <h2 class="title__recruteur">Mon Espace Recruteur</h2>
            <div class="header__switchmode">

                <div class="header__buttonLog">
                    <?php if(!isset($_SESSION['firstName'])):?>
                        <a class="header__inscription" href="/register">Inscription</a>
                        <a class="header__connexion" href="/login">Connexion</a>
                    <?php else:?>
                        <?php if($role === 'admin'): ?>
                            <a class="header__inscription">Dashboard</a>
                        <?php endif;?>
                        <a class="header__connexion">Mon Profile</a>
                        <a class="header__inscription" href="/disconnect">Déconnexion</a>
                    <?php endif;?>
                </div>
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

<main class="container" id="blurred">
    <div class="loader load__recruit" id="loader" style="display: flex">
        <span class="circle"></span>
        <span class="circle"></span>
        <span class="circle"></span>
    </div>
    <section class="jobs container__recrutement">
        <form action="" method="POST" id="sideBar">
            <ul class="sideBar">
                <?php if($_POST['Offers'] == 'AllOffers'):?>
                    <li class="sideBar__items active"><button  id="touteMesOffres" name="Offers" value="AllOffers" type="submit">Voir Toutes Mes Offres</button></li>
                    <?php else:?>
                    <li class="sideBar__items"><button name="Offers" id="touteMesOffres" value="AllOffers" type="submit">Voir Toutes Mes Offres</button></li>
                <?php endif;?>

                <?php if($_POST['Offers'] == 'AddOffers'):?>
                    <li class="sideBar__items active"><button name="Offers" id="ajouterUneOffre" value="AddOffers" type="submit">Ajouter Une Offre</button></li>
                    <?php else:?>
                    <li class="sideBar__items"><button name="Offers" id="ajouterUneOffre" value="AddOffers" type="submit">Ajouter Une Offre</button></li>
                <?php endif;?>
            </ul>
        </form>
        <div class="article" id="article">
            <?php if($_POST['Offers'] == 'AllOffers'): ?>
                <?php while($row = $jobs->fetch(PDO::FETCH_ASSOC)):?>
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
                            <div class="buttons_container">
                                <button type="submit" name="modify" value="<?=$row['id']?>"><i class="fa-solid fa-pen-to-square"></i></button>
                                <button type="submit" name="trash" value=""><i class="fa-solid fa-trash"></i></button>
                            </div>
                        </div>
                    </form>
                <?php endwhile;?>
            <?php endif;?>
            <?php if($_POST['Offers'] == 'AddOffers'):?>
                <form action="/redirect" method="POST" class="form__add__jobs" id="form" style="display: none">

                    <h1 class="title">Inscription</h1>

                    <div class="firstName">
                        <label for="firstName" class="textForm">Prénom <span style="color:red;">&#8203 &#8203 *</span></label>
                        <input type="text" id="firstName" name="firstName">
                    </div>
                    <div class="lastName">
                        <label for="lastName" class="textForm">Nom de Famille <span style="color:red;">&#8203 &#8203 *</span></label>
                        <input type="text" id="lastName" name="lastName">
                    </div>
                    <div class="radiobtn" id="appened">
                        <p>êtes-vous recruteur ?</p>

                        <input type="radio" id="isEntreprise" name="contact">
                        <label for="isEntreprise" class="textForm">oui</label>

                        <input type="radio" id="isNotEntreprise" name="contact" checked>
                        <label for="isNotEntreprise" class="textForm">non</label>
                    </div>
                    <div class="mail">
                        <label for="mail" class="textForm">Mail <span style="color:red;">&#8203 &#8203 *</span></label>
                        <input type="email" id="mail" name="mail">
                    </div>
                    <div class="mdp">
                        <label for="MDP" class="textForm">Mot de Passe <span style="color:red;">&#8203 &#8203 *</span></label>
                        <input type="password" id="MDP" name="mdp">
                    </div>
                    <div class="mdpSecond">
                        <label for="mdpSecond" class="textForm">Retaper le Mot de Passe <span style="color:red;">&#8203 &#8203 *</span></label>
                        <input type="password" id="mdpSecond" name="mdpSecond">
                    </div>
                    <blockquote class="blockquote textForm">obligatoire <span style="color:red;">&#8203 &#8203 &#8203*</span></blockquote>
                    <input type="submit" id="submitForm" class="submitForm" value="valider">
                </form>
            <?php endif;?>
        </div>
    </section>
</main>
<script src="/js/components/espace_recruteurs.js"></script>
<script src="/js/components/switch.js"></script>
</body>
</html>