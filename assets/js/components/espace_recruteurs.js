const TouteMesOffres = document.querySelector('#touteMesOffres')
const AjouterUneOffre = document.querySelector('#ajouterUneOffre')
const Profile = document.querySelector('#Profile')
const btnAjouterUneOffre = document.querySelector('#btnAjouterUneOffre')
const btnTouteMesOffres = document.querySelector('#btnTouteMesOffres')
const article = document.querySelector('#article')

const xhr = new XMLHttpRequest()


if(document.querySelector('#alert') != null){
    setTimeout(() => {
        document.querySelector('#alert').remove()
    }, 3000);
}

const profileSection = () => {
    xhr.onload = () => {
        if(xhr.status === 200){
            btnAjouterUneOffre.removeAttribute('disabled')
            btnTouteMesOffres.removeAttribute('disabled')
            article.innerHTML = xhr.responseText
        }else {
            article.innerHTML = `<div class="alert alert-danger" role="alert">
            ${xhr.status} ${xhr.statusText}
            </div>`
        }
    }
    xhr.open('GET', `/src/view/profile-entreprise.php`)
    xhr.send()
}



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

Profile.addEventListener('click', () => {
    deleteAll()
    btnTouteMesOffres.setAttribute('disabled', 'disabled')
    btnAjouterUneOffre.setAttribute('disabled', 'disabled')
    TouteMesOffres.classList.remove('active')
    AjouterUneOffre.classList.remove('active')
    Profile.classList.add('active')
    profileSection()
})

AjouterUneOffre.addEventListener('click', (ev) => {
    deleteAll()
    btnTouteMesOffres.setAttribute('disabled', 'disabled')
    TouteMesOffres.classList.remove('active')
    Profile.classList.remove('active')
    AjouterUneOffre.classList.add('active')
    AddJobs()
})

TouteMesOffres.addEventListener('click', () => {
    deleteAll()
    btnAjouterUneOffre.setAttribute('disabled', 'disabled')
    TouteMesOffres.classList.add('active')
    Profile.classList.remove('active')
    AjouterUneOffre.classList.remove('active')
    getAllJobs()
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












