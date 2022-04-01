const radioIs = document.querySelector('#isEntreprise');
const radioIsNot = document.querySelector('#isNotEntreprise');
const appened = document.querySelector('#appened').parentNode
const nowAppened = document.querySelector('#appened')
const form = document.querySelector('#form').parentNode
const formulaire = document.querySelector('#form')
const loader = document.querySelector('#loader')
const firstName = document.querySelector('#firstName')
const lastName = document.querySelector('#lastName')
const email = document.querySelector('#mail')
const mdp = document.querySelector('#MDP')
const mdpSecond = document.querySelector('#mdpSecond')


form.addEventListener('submit', (ev ) => {
    if(firstName.value === '' || lastName.value === '' || email.value === '' || mdp.value === '' || mdpSecond.value === ''){
        ev.preventDefault()
    }else {
        ev.stopPropagation()
    }
})


function displayEnterprise(){
    const div = document.createElement('div')
    const label = document.createElement('label')
    const input = document.createElement('input')
    div.classList.add('entreprise')
    div.id = 'divEntreprise';

    label.classList.add('textForm')
    label.for = 'entreprise'
    label.textContent = 'Nom de L\'entreprise'

    input.type = 'undefined'
    input.name = 'entreprise'
    input.id = 'entreprise'

    radioIsNot.addEventListener('change', (ev) => {
        if (ev.eventPhase === 2){
            div.remove();
        }
    })
    appened.insertBefore(div, nowAppened)
    div.append(label, input)
}

radioIs.addEventListener('change', (ev) => {
    if (ev.eventPhase === 2){
        displayEnterprise();
    }
})


setTimeout(() => {
    formulaire.style.display = 'grid'
    loader.style.display = 'none'
}, 2500)


mdpSecond.style.border = ' 0.3rem solid red';
const tableau = [
    firstName,
    lastName,
    email,
    mdp,
]
setInterval(() => {
    for (let i = 0; i < tableau.length; i++) {
        if (tableau[i].value == null || tableau[i].value === ''){
            tableau[i].style.border = 'red solid .2rem';
        }else {
            tableau[i].style.border = '';
        }
    }
    if (mdpSecond.value === mdp.value && mdpSecond.value !== ''){
        mdpSecond.style.border = '';
    }else {
        mdpSecond.style.border = 'red solid .2rem';
    }

}, 100)



