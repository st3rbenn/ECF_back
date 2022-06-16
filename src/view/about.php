<?php session_start();
if(isset($_SESSION['role'])){
    $role = $_SESSION['role'];
}
else {
    header('/home');
}
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ECF-Front-End</title>
    <meta name="description" content="Contrôle de conaissance et d'application des méthodes apprise au CEFIM">
    <link rel="icon" href="../../favicon-32x32.png" sizes="any">
    <link rel="icon" href="../../favicon-32x32.png" type="image/svg+xml">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="manifest" href="../../index.php">

    <link rel="stylesheet" href="../../assets/css/main.css">
</head>

<body>
    <header class="header__main">    
          <div class="container">
              <div class="header__item">
                <a href="/home" class="logo">
                    <img src="../../assets/img/logo.svg" alt="Logo de DevJobs">
                </a>
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
                              <a class="header__connexion" href="/home/account">Mon Profil</a>
                              <a class="header__inscription" href="/home/disconnect">Déconnexion</a>
                          <?php endif;?>
                      </div>
                  <div class="header__switchmode">
                      <figure class="logo-switchmode">
                              <img src="../../assets/img/icon-sun.svg" alt="">
                      </figure>
                      <div class="switch">
                              <input type="checkbox" class="switch__input" id="theme-switch">
                              <label for="theme-switch" class="switch__label" aria-hidden="true" id="label__switch"></label>
                              <div class="switch__marker" aria-hidden="true" id="switch__button"></div>
                      </div>
                      <figure class="logo-switchmodelune">
                              <img src="../../assets/img/icon-moon.svg" alt="">
                      </figure>
                  </div>
              </div>
              <div class="about__card__header">
                <div class="about__card__items">
                  <figure class="about__card__img" id="logoBg">
                    <img src="" alt="" class="about__card__logo" id="logo">
                  </figure>
                  <div>
                    <h3 id="headerTitle"></h3>
                    <p id="headerWebsite"></p>
                  </div>  
                </div>
                <a href="" id="linkBtn" class="about__card__button">Company Site</a>
              </div>
          </div>
    </header>

    <main id="main" class="container">
      <section id="aboutJobs" class="about__section">
        
      </section>
    </main>
    <footer class="about__footer">
      <div class="container__footer">
        <div class="about__footer__info dnone" id="about__footer">
          <h4></h4>
          <p></p>
        </div>
        <a href="" id="linkBtn" class="about__footer__applynow">Apply Now</a>
      </div>
    </footer>

    <script src="../../assets/js/api/aboutRequest.js"></script>
    <script src="../../assets/js/components/switch.js"></script>
  </body>
</html>
