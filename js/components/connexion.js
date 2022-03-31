const formulaire = document.querySelector('#form')
const loader = document.querySelector('#loader')
const alertNode = document.querySelector('#alert')

setTimeout(() => {
    formulaire.style.display = 'grid'
    loader.style.display = 'none'
}, 3000)