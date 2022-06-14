<header class="header__main" id="blurred">
    <div class="container">
        <div class="header__item">
            <figure class="logo">
                <a href="./home"><img src="./assets/img/logo.svg" alt="Logo de DevJobs"></a>
            </figure>
            <div class="header__switchmode">
                <div class="header__buttonLog">
                    <?php if(!isset($role)):?>
                        <a class="header__inscription" href="/home/register">Inscription</a>
                        <a class="header__connexion" href="/home/login">Connexion</a>
                    <?php else:?>
                        <?php if($role === 'ROLE_ADMIN'): ?>
                            <a class="header__inscription" href="home/admin/dashboard">Dashboard</a>
                        <?php endif;?>
                        <?php if($role === 'ROLE_RECRUTEUR' || $role === 'ROLE_ADMIN'):?>
                            <a class="header__inscription" href="/home/mon-espace-recruteur">Mon Espace Recruteur</a>
                        <?php endif;?>
                        <a class="header__connexion">Mon Profile</a>
                        <a class="header__inscription" href="/home/disconnect">Déconnexion</a>
                    <?php endif;?>
                </div>
                <figure class="logo-switchmode">
                    <img src="./assets/img/icon-sun.svg" alt="">
                </figure>
                <div class="switch">
                    <input type="checkbox" class="switch__input" id="theme-switch">
                    <label for="theme-switch" class="switch__label" aria-hidden="true" id="label__switch"></label>
                    <div class="switch__marker" aria-hidden="true" id="switch__button"></div>
                </div>
                <figure class="logo-switchmodelune">
                    <img src="./assets/img/icon-moon.svg" alt="">
                </figure>
            </div>
        </div>
</header>