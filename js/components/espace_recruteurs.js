const btnTouteMesOffres = document.querySelector('#touteMesOffres')
const btnAjouterUneOffre = document.querySelector('#ajouterUneOffre')
const article = document.querySelector('#article')

function deleteAll(){
    while (article.firstChild) {
        article.removeChild(article.lastChild)
    }
}

btnAjouterUneOffre.addEventListener('click', () => {
    deleteAll();
    btnTouteMesOffres.classList.remove('active')
    btnAjouterUneOffre.classList.add('active')
})

btnTouteMesOffres.addEventListener('click', () => {
    btnTouteMesOffres.classList.add('active')
    btnAjouterUneOffre.classList.remove('active')
})