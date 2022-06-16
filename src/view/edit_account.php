<?php
session_start();
if($_SESSION['role'] === 'ROLE_RECRUTEUR' || $_SESSION['role'] === 'ROLE_ADMIN' || $_SESSION['role'] === 'ROLE_USER'){
    $role = $_SESSION['role'];
} else{
    header('Location: /home');
    exit;
}

$database = new Database\DB();
$db = $database::getConnection();
$controller = new Controller\Functions($db);
$editAccount = $controller->getAccount()


?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ECF-Front-End</title>
    <meta name="description" content="Contrôle de conaissance et d'application des méthodes apprise au CEFIM">
    <link rel="icon" href="/./favicon-32x32.png" sizes="any">
    <link rel="icon" href="/./favicon-32x32.png" type="image/svg+xml">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <script src="https://kit.fontawesome.com/6b95777d07.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="manifest" href="/./index.php">

    <link rel="stylesheet" href="/./assets/css/main.css">
</head>
<body>
<header class="header__main" id="blurred" style="margin-bottom: 0 !important">
    <div class="container">
        <div class="header__item header-item">

            <figure class="logo">
                <a href="/home"><img src="/./assets/img/logo.svg" alt="Logo de DevJobs"></a>
            </figure>
            <div class="header__switchmode">

                <div class="header__buttonLog">
                    <?php if(!isset($role)):?>
                        <a class="header__inscription" href="/home/register">Inscription</a>
                        <a class="header__connexion" href="/home/login">Connexion</a>
                    <?php else:?>
                        <?php if($role === 'ROLE_ADMIN'): ?>
                            <a class="header__inscription" href="/home/admin/dashboard">Dashboard</a>
                        <?php endif;?>
                        <?php if($role === 'ROLE_RECRUTEUR' || $role === 'ROLE_ADMIN'):?>
                            <a class="header__inscription" href="/home/mon-espace-recruteur">Mon Espace Recruteur</a>
                        <?php endif;?>
                        <a class="header__connexion" href="/home/account">Mon Profile</a>
                        <a class="header__inscription" href="/home/disconnect">Déconnexion</a>
                    <?php endif;?>
                </div>
                <figure class="logo-switchmode">
                    <img src="/./assets/img/icon-sun.svg" alt="">
                </figure>
                <div class="switch">
                    <input type="checkbox" class="switch__input" id="theme-switch">
                    <label for="theme-switch" class="switch__label" aria-hidden="true" id="label__switch"></label>
                    <div class="switch__marker" aria-hidden="true" id="switch__button"></div>
                </div>
                <figure class="logo-switchmodelune">
                    <img src="/./assets/img/icon-moon.svg" alt="">
                </figure>
            </div>
        </div>
    </div>
</header>

<main>
    <?php while ($row = $editAccount->fetch(PDO::FETCH_ASSOC)):?>
        <div class="container form bg-white" style="border-radius: 3rem;">
            <form action="/home/edit-account" method="POST" class="form__inscription d-flex flex-column justify-content-center align-items-center p-5" id="form">
                <h1 class="title">Mon Profile</h1>
                <div class="form-group">
                    <label for="firstName">prénom</label>
                    <input type="text" class="form-control" id="firstName" aria-describedby="firstNameHelp" placeholder="entre ton prénom" name="firstName" value="<?php echo $row['firstname']?>">
                </div>
                <div class="form-group">
                    <label for="lastName">nom de famille</label>
                    <input type="text" class="form-control" id="lastName" aria-describedby="lastNameHelp" placeholder="entre ton nom de famille" name="lastName" value="<?php echo $row['lastname']?>">
                </div>
                <div class="form-group">
                    <label for="mail">address mail</label>
                    <input type="email" class="form-control" id="mail" aria-describedby="emailHelp" placeholder="Enter email" name="mail" value="<?php echo $row['mail']?>">
                </div>
                <?php if($row['role'] === 'ROLE_RECRUTEUR' || $row['role'] === 'ROLE_ADMIN'):?>
                <div class="form-group">
                    <label for="entreprise">entreprise</label>
                    <input type="text" class="form-control" id="entreprise" aria-describedby="companyHelp" name="company" value="<?php echo $row['company']?>">
                </div>
                <?php endif;?>
                <div class="form-group mt-3">
                    <button type="submit" class="btn btn-primary">Modifier mon profil</button>
                </div>
            </form>
        </div>
    <?php endwhile;?>
</main>
</body>
</html>