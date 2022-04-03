const XHR_URL = "http://localhost";

const btnTouteMesOffres = document.querySelector('#touteMesOffres')
const btnAjouterUneOffre = document.querySelector('#ajouterUneOffre')
const loader = document.querySelector('#loader')
const article = document.querySelector('#article')
const sideBar = document.querySelector('#sideBar')
const xhr = new XMLHttpRequest()



const getAllJobs = () => {
    xhr.onload = function () {
        if (xhr.readyState === 4) {
            if (xhr.status === 200) {
                loader.style.display = 'none'
                article.innerHTML = xhr.responseText
            } else {
                article.innerHTML = 'Une erreur est survenue'
            }
        }
    }
    xhr.open('GET', XHR_URL + "/Page/Components/AllOffers_espaceRecrutement.php", true)
    xhr.send()
}
getAllJobs()



btnTouteMesOffres.addEventListener('click', () => {
    btnTouteMesOffres.classList.add('active')
    btnAjouterUneOffre.classList.remove('active')
    loader.style.display = 'block'
    getAllJobs();
})

btnAjouterUneOffre.addEventListener('click', (ev) => {
    btnTouteMesOffres.classList.remove('active')
    btnAjouterUneOffre.classList.add('active')
    loader.style.display = 'block'

    xhr.onload = function () {
        if (xhr.readyState === 4) {
            if (xhr.status === 200) {
                loader.style.display = 'none'
                article.innerHTML = xhr.responseText
            } else {
                article.innerHTML = 'Une erreur est survenue'
            }
        }
    }
    xhr.open('GET', 'http://localhost/Page/Components/AddOffer_espaceRecrutement.php', true)
    xhr.send()
})



function deleteAll(){
    while (article.firstChild) {
        article.removeChild(article.lastChild)
    }
}










