import {URL_API} from '/js/api/linkAPI.js';
const loader = document.querySelector('#loader')
const container = document.querySelector('#jobs')
const btnLoadMore = document.querySelector('#loadmore')
const searchForm = document.querySelector('#filter')
const inputAPIText = document.querySelectorAll('#filter__container__logo')
const locationFilter = document.querySelector('#filterLocation')
const checkBox = document.querySelector('#checkBox')
checkBox.checked = false
checkBox.Value = '0'

let isPressed = true;
let isLoaded = false;


// =====================================================================================
// Fonction pour afficher dynamiquement dans le dom a partir des data récup' dans l'api
// =====================================================================================
function displayInfoJobs (data){
  const jobsContainer = document.createElement('article')
  const imgJobs = document.createElement('img')
  const jobsItem = document.createElement('div')
  const timeContainer = document.createElement('div')
  const jobsPostedAt = document.createElement('p')
  const dot = document.createElement('span')
  const jobsContract = document.createElement('p')
  const jobsContainerInfo = document.createElement('div')
  const jobsPosition = document.createElement('h3')
  const jobsName = document.createElement('p')
  const city = document.createElement('p')
  
  
  jobsContainer.classList.add('jobs__container')
  jobsContainer.setAttribute('data-id', `${data.id}`)
  imgJobs.classList.add('jobs__container__logo')
  imgJobs.setAttribute('alt', `entreprise ${data.name}`)
  jobsItem.classList.add('jobs__container__items')
  timeContainer.classList.add('time')
  dot.classList.add('dot')
  jobsContainerInfo.classList.add('jobs__container__info')
  jobsPosition.classList.add('jobs__container__info__name')
  city.classList.add('city')
  
  jobsContainer.addEventListener('click', () => {
    const id = `?id=${data.id}`
    location.href = `/about.html${id}`
  })

  jobsPostedAt.textContent = new Date(data.postedAt).toLocaleDateString('fr-FR')
  jobsContract.textContent = data.contract
  jobsPosition.textContent = data.position
  jobsName.textContent = data.company
  imgJobs.src = `${URL_API}${data.logo}`
  city.textContent = data.location
  imgJobs.style.backgroundColor = data.logoBackground
  
  if (isPressed){
    container.append(jobsContainer)
    jobsContainer.prepend(imgJobs, jobsItem)
    jobsItem.prepend(timeContainer, jobsContainerInfo, city)
    timeContainer.prepend(jobsPostedAt, dot, jobsContract)
    jobsContainerInfo.prepend(jobsPosition, jobsName)
    
  }else if (isLoaded = true){
    container.append(jobsContainer)
    jobsContainer.prepend(imgJobs, jobsItem)
    jobsItem.prepend(timeContainer, jobsContainerInfo, city)
    timeContainer.prepend(jobsPostedAt, dot, jobsContract)
    jobsContainerInfo.prepend(jobsPosition, jobsName)
  }
}

// =================================================
// bouton pour afficher les 12 dernier jobs de l'api 
// =================================================


btnLoadMore.addEventListener('submit', (ev) => {
  ev.preventDefault();
  async function loadMore() {
    const response = await fetch(`${URL_API}/api/jobs?offset=0`)
    try{
      const data = await response.json()
      const jobsInfo = data.jobs
      console.table(jobsInfo)
      jobsInfo.reverse()
      for (let i = 0; i < jobsInfo.length; i++) {
        displayInfoJobs(jobsInfo[i])
      }
      isLoaded = true
      btnLoadMore[0].setAttribute('disabled', true)
    }catch(err) {
      console.error(err);
    }
  }loadMore();
})


// =====================================================================================
// 1er appel api pour récuperer les Jobs
// =====================================================================================

btnLoadMore.setAttribute('disabled', true)
loader.classList.remove('hidden')

async function getJobsInfo(){
  const response = await fetch(`${URL_API}/api/jobs?offset=12`)
  try{
    
    const data = await response.json()
    const jobsInfo = data.jobs
    // console.table(jobsInfo);
    jobsInfo.reverse()
    for (let i = 0; i < jobsInfo.length; i++) {
      displayInfoJobs(jobsInfo[i])  
    }
    isPressed = false;
    btnLoadMore[0].value = 'Load More'
    loader.classList.add('hidden')
  }
  catch(err){
    console.error(err);
  }
}

setTimeout(() => {getJobsInfo()}, 4000);



// ================================================
// petit bouton userr-friendly pour auto scroll-top 
// ================================================

const scrollTop = document.querySelector('#scrollTop')

function handleScroll() {
  const scrollableHeight = document.documentElement.scrollHeight - document.documentElement.clientHeight;
  const ratio = 0.2;
  
  if ((document.documentElement.scrollTop / scrollableHeight ) > ratio) {
    //show button
    scrollTop.classList.remove('hidden');
  } else {
    //hide button
    scrollTop.classList.add('hidden');
  }
}

document.addEventListener("scroll", handleScroll);



// =========================================
// petite fonction pour delete tout les jobs 
// =========================================

function deleteAll(){
  while (container.firstChild) {
    container.removeChild(container.lastChild)
  }
}




// ===============================================
// gestion des filtres ( un peut farfelu je sais )
// ===============================================
// ===========================================================================================================================
// je gère chaque cas un a un CAD, imaginons checkbox checked mais input vide ça renvoie des resultats et ceux pour chaque cas 
// ===========================================================================================================================

searchForm.addEventListener('submit', (ev) =>{
  ev.preventDefault();

  if (inputAPIText[0] && inputAPIText[0].value && locationFilter && locationFilter.value)
  {
      if (checkBox.checked){
        deleteAll()
        loader.classList.remove('hidden')
        setTimeout(() => {getSearchResult(inputAPIText[0].value, locationFilter.value, '1')}, 2500)
        btnLoadMore.classList.add('dnone')
      }else{
        deleteAll()
        loader.classList.remove('hidden')
        setTimeout(() => {getSearchResult(inputAPIText[0].value, locationFilter.value, '0')}, 2500)  
      }
  }
  else if(inputAPIText[1] && inputAPIText[1].value && locationFilter && locationFilter.value)
  {
    if (checkBox.checked){
      deleteAll()
       loader.classList.remove('hidden')
        setTimeout(() => { getSearchResult(inputAPIText[1].value, locationFilter.value, '1')}, 2500)  
     
    }else{
      deleteAll()
      loader.classList.remove('hidden')
      setTimeout(() => {getSearchResult(inputAPIText[1].value, locationFilter.value, '0')}, 2500)  
    }
  }
  else if (inputAPIText[0] && inputAPIText[0].value)
  {
    if (checkBox.checked){
      deleteAll()
      loader.classList.remove('hidden')
      setTimeout(() => {getSearchResult(inputAPIText[0].value, '', '1')}, 2500)  
      
    }else{
      deleteAll()
      loader.classList.remove('hidden')
      setTimeout(() => {getSearchResult(inputAPIText[0].value, '', '0')}, 2500)  
    }
  }
  else if(inputAPIText[1] && inputAPIText[1].value)
  {
    if (checkBox.checked){
      deleteAll()
      loader.classList.remove('hidden')
      setTimeout(() => {getSearchResult(inputAPIText[1].value, '', '1')}, 2500)  
      
    }else{
      deleteAll()
      loader.classList.remove('hidden')
      setTimeout(() => {getSearchResult(inputAPIText[1].value, '', '0')}, 2500)  
    }
  }
  else if(locationFilter && locationFilter.value)
  {
    if (checkBox.checked){
      deleteAll()
      loader.classList.remove('hidden')
      setTimeout(() => {getSearchResult('', locationFilter.value, '1')}, 2500)  
      
    }else{
      deleteAll()
      loader.classList.remove('hidden')
      setTimeout(() => {getSearchResult('', locationFilter.value, '0')}, 2500)  
    }
  }
  else if (checkBox.checked)
  {
      deleteAll()
      loader.classList.remove('hidden')
      setTimeout(() => {getSearchResult('', '', '1')}, 2500)
  }
  else
  {
    deleteAll()
    loader.classList.remove('hidden')
    setTimeout(() => {getJobsInfo()}, 2500)
}


// =================================================
// fonction pour récuperer les resultats des filtres
// =================================================
async function getSearchResult(text, location, fullTime){
    const URL_PARAM = `?text=${text}&location=${location}&fulltime=${fullTime}`
    encodeURIComponent(URL_PARAM)
    const response = await fetch(`${URL_API}api/jobs/search${URL_PARAM}`)
    try{
      const data = await response.json()
      if (response.statusCode === 400){
        console.error(data.error)
      }else{
        btnLoadMore[0].value = 'Fuyez pauvre fou !'
        btnLoadMore[0].setAttribute('disabled', true)
        const jobsInfo = data.jobs
        jobsInfo.reverse()
        for (let i = 0; i < jobsInfo.length; i++) {
          displayInfoJobs(jobsInfo[i])
        }
        for (let i = 0; i < inputAPIText.length; i++) {
          inputAPIText[i].value = ''
        }
      locationFilter.value = ''
      loader.classList.add('hidden')
      }
    }catch(err){
      console.error(err);
    }
  
  }
})