const btnTouteMesOffres = document.querySelector('#touteMesOffres')
const btnAjouterUneOffre = document.querySelector('#ajouterUneOffre')
const loader = document.querySelector('#loader')
const article = document.querySelector('#article')
const sideBar = document.querySelector('#sideBar')
const form = document.querySelector('#form')


btnTouteMesOffres.addEventListener('click', (ev) => {

})


setTimeout(() => {
    article.style.display = 'grid'
    form.style.display = 'grid'
    loader.style.display = 'none'
}, 2000)


function deleteAll(){
    while (article.firstChild) {
        article.removeChild(article.lastChild)
    }
}


btnAjouterUneOffre.addEventListener('click', () => {
    deleteAll();
})

btnTouteMesOffres.addEventListener('click', () => {
    btnTouteMesOffres.classList.add('active')
    btnAjouterUneOffre.classList.remove('active')
})


function displayForm(){







}