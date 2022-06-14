<?php
session_start();
if(isset($_SESSION['role']) && $_SESSION['role'] === 'ROLE_RECRUTEUR' || $_SESSION['role'] === 'ROLE_ADMIN' || $_SESSION['role'] === 'ROLE_USER'){
    $role = $_SESSION['role'];
} else{
    header('Location: /home');
    exit;
}

$database = new Database\DB();
$db = $database::getConnection();
$editAccount = new Controller\Functions($db);
/*var_dump($editAccount->getAccount());*/

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

<?php /*while ($row = $editAccount)*/?><!--
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Mon Profile</h5>
                    <p class="card-text">
                        <form action="/home/edit-account" method="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="mail" value="<?php /*echo $row['mail']*/?>">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password">
                            </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>-->
</body>
</html>