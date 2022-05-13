const loader = document.querySelector('#loader')
const mdp = document.querySelector('#mdp')
const email = document.querySelector('#mail')
const form = document.querySelector('#connexion')



form.addEventListener('submit', (ev ) => {
    if(email.value === '' || mdp.value === ''){
        ev.preventDefault()
    }else {
        ev.stopPropagation()
    }
})

setTimeout(() => {
    form.style.display = 'grid'
    loader.style.display = 'none'
}, 1500)