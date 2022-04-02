<?php

namespace Class;

use Database\Database;
use PDO;

class Form
{

    public function getFormInscription(): string
    {
       return '
            <form action="/redirect" method="POST" class="form_inscription form__inscription" id="form" style="display: none">
        
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
                    <input type="text" id="mail" name="mail">
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
            </form>';
    }


    public function sendInscription(): bool
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST'){
            require 'vendor/autoload.php';

            $database = new Database();
            $db = $database->getConnection();

            $inscription = new Inscription($db);
            $stmt = $inscription->checkIfAccountExist();

            $result = '';
            while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                extract($row);
                $result = $mail;
            }

            if ($result === $inscription->getMail()){
                return false;
            }else $inscription->sendForm();
        }
        return true;
    }



    public function getFormLogIn(): string
    {
        return '<form action="/redirect" method="POST" class="form_inscription form__inscription" id="connexion" style="display: none">
                        <h1 class="title connexion__title">Connexion</h1>
                        <div class="mail connexion__mail">
                            <label for="mail" class="textForm">Mail</label>
                            <input type="text" id="mail" name="mail">
                        </div>
                        <div class="mdp connexion__mdp">
                            <label for="MDP" class="textForm">Mot de Passe</label>
                            <input type="password" id="MDP" name="mdp">
                        </div>
                        <div class="saveInfo">
                            <input type="checkbox" id="saveInfo" name="remember">
                            <label for="saveInfo" class="textForm">Se souvenir de moi</label>
                        </div>
                        <input type="submit" id="submitForm" class="submitForm connexion__submitForm" value="se connecter">
                  </form>
               ';
    }

    public function sendLogIn(): bool
    {

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            require 'vendor/autoload.php';

            $database = new Database();
            $db = $database->getConnection();
            $checkAccount = new Inscription($db);
            $connexion = new Connexion($db);
            $stmt = $checkAccount->checkIfAccountExist();
            $eMail = html_entity_decode(htmlspecialchars($_POST['mail']));
            $mdp = html_entity_decode(htmlspecialchars($_POST['mdp']));

            $motDePasseDataBase = '';
            $eMailDataBase = '';
            while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                extract($row);
                $eMailDataBase = $mail;
                $motDePasseDataBase = $password;
            }

            if ($eMailDataBase == $eMail && password_verify($mdp, $motDePasseDataBase)){
                    $connexion->sendInfoForConnection();
            }else return false;
        }
        return true;
    }


}