<form action="/redirect" method="POST" class="form__add__jobs" id="form">

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
