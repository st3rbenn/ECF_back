const XHR_URL = `${window.location.origin}/src/view/`;
console.log(window.location.origin)

const TouteMesOffres = document.querySelector('#touteMesOffres')
const AjouterUneOffre = document.querySelector('#ajouterUneOffre')
const btnAjouterUneOffre = document.querySelector('#btnAjouterUneOffre')
const btnTouteMesOffres = document.querySelector('#btnTouteMesOffres')
const article = document.querySelector('#article')
const xhr = new XMLHttpRequest()


const AddJobs = () => {
    xhr.onload = function () {
        if (xhr.readyState === 4) {
            if (xhr.status === 200) {
                btnTouteMesOffres.removeAttribute('disabled')
                article.innerHTML = xhr.responseText
            } else {
                article.innerHTML = 'Une erreur est survenue' + xhr.status + xhr.statusText + xhr.responseText + xhr.responseURL
            }
        }
    }
    xhr.open('GET', '/src/view/AddOffer_espaceRecrutement.php', true)
    xhr.send()
}


AjouterUneOffre.addEventListener('click', (ev) => {
    deleteAll()
    btnTouteMesOffres.setAttribute('disabled', 'disabled')
    TouteMesOffres.classList.remove('active')
    AjouterUneOffre.classList.add('active')
    AddJobs()
})


btnAjouterUneOffre.setAttribute('disabled', 'disabled')
const getAllJobs = () => {
    xhr.onload = function () {
        if (xhr.readyState === 4) {
            if (xhr.status === 200) {
                btnAjouterUneOffre.removeAttribute('disabled')
                article.innerHTML = xhr.responseText
            } else {
                article.innerHTML = 'Une erreur est survenue'
            }
        }
    }
    xhr.open('GET', "/src/view/AllOffers_espaceRecrutement.php", true)
    xhr.send()
}
getAllJobs()



function deleteAll(){
    while (article.firstChild) {
        article.removeChild(article.lastChild)
    }
}

TouteMesOffres.addEventListener('click', () => {
    deleteAll()
    btnAjouterUneOffre.setAttribute('disabled', 'disabled')
    TouteMesOffres.classList.add('active')
    AjouterUneOffre.classList.remove('active')
    getAllJobs()
})











