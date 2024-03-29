const URL_API = 'https://www.apiecf.colas.cefim.o2switch.site/'
const loader = document.querySelector('#loader')
const container = document.querySelector('#jobs')
const btnLoadMore = document.querySelector('#loadmore')
const searchForm = document.querySelector('#filter')
const inputAPIText = document.querySelectorAll('#filter__container__logo')
const locationFilter = document.querySelector('#filterLocation')
const checkBox = document.querySelector('#checkBox')

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
  jobsContainer.setAttribute('style', `box-shadow: 0 .5rem .1rem ${data.logoBackground}`);
  imgJobs.classList.add('jobs__container__logo')
  imgJobs.setAttribute('alt', `entreprise ${data.name}`)
  jobsItem.classList.add('jobs__container__items')
  timeContainer.classList.add('time')
  dot.classList.add('dot')
  jobsContainerInfo.classList.add('jobs__container__info')
  jobsPosition.classList.add('jobs__container__info__name')
  city.classList.add('city')
  
  jobsContainer.addEventListener('click', () => {
    location.href = `home/job?id=${data.id}`
  })

  jobsPostedAt.textContent = timeToNow(data.postedAt)
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

let offset = 0
btnLoadMore.addEventListener('submit', (ev) => {
  offset += 12;
  ev.preventDefault();
  async function loadMore() {
    try{
      const response = await fetch(`${URL_API}api/jobs?offset=${offset}`)
      if (!response.ok) {
        throw Error(`${response.status} ${response.statusText}`);
      }
      else{
      const data = await response.json()
      const jobsInfo = data.jobs
      console.log(jobsInfo)
        jobsInfo.reverse().forEach(job => {
          displayInfoJobs(job)
        })
      isLoaded = true
      if({offset} === jobsInfo.length){
        btnLoadMore.style.display = 'none'
      }
    }
    }catch(err) {
      console.error(err);
    }
  }loadMore();
})


// =====================================================================================
// 1er appel api pour récuperer les Jobs
// =====================================================================================

btnLoadMore[0].setAttribute('disabled', true)
loader.classList.remove('hidden')

async function getJobsInfo(){
  const response = await fetch(`${URL_API}api/jobs`)
  try{
    if (!response.ok) {
      throw Error(`${response.status} ${response.statusText}`);
    }else {
      const data = await response.json()
      const jobsInfo = data.jobs
      console.table(jobsInfo);
      jobsInfo.reverse().forEach(job => {
        displayInfoJobs(job)
      })

      btnLoadMore[0].removeAttribute('disabled')
      btnLoadMore[0].value = 'Load More'
      loader.classList.add('hidden')
    }
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





checkBox.checked = false

checkBox.addEventListener('change', () => {
  if (checkBox.checked === true){
    locationFilter.setAttribute('required', 'true');
  } else {
    locationFilter.removeAttribute('required');
  }
})
searchForm.addEventListener('submit', (ev) =>{
  ev.preventDefault();
  btnLoadMore[0].value = 'Load More'
  if (inputAPIText[0] && inputAPIText[0].value && locationFilter && locationFilter.value)
  {
      if (checkBox.checked){
        deleteAll()
        loader.classList.remove('hidden')
        setTimeout(() => {getSearchResult(inputAPIText[0].value, locationFilter.value, '1')}, 2500)
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
      console.log(ev.currentTarget);
      deleteAll()
      loader.classList.remove('hidden')
      setTimeout(() => {getSearchResult('', '', '1')}, 2500)
  }else{
    deleteAll()
    loader.classList.remove('hidden')
    setTimeout(() => {getJobsInfo('', '', '0')}, 2500)
    btnLoadMore[0].removeAttribute('disabled')

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
      if (!response.ok) {
        throw Error(`${response.status} ${response.statusText}`);
      }else{
        btnLoadMore[0].value = 'Fuyez pauvre fou !'
        btnLoadMore[0].setAttribute('disabled', true)
        const jobsInfo = data.jobs
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

function timeToNow(ts){
  let phrase;
  const result = Date.now() - ts;
  const resultSeconds = result / 1000;
  const resultMinuts = resultSeconds / 60;
  const resultHours = resultMinuts / 60;
  const resultDays = resultHours / 24;
  const resultWeeks = resultDays / 7;
  const resultMonths = resultDays / 30;
  const resultYears = resultMonths / 12;
  if (resultYears > 1) {
    phrase = "y ago";
    return Math.floor(resultYears).toString() + phrase;
  } else if (resultMonths > 1) {
    phrase = "mo ago";
    return Math.floor(resultMonths).toString() + phrase;
  } else if(resultWeeks > 1){
    phrase = "w ago";
    return Math.floor(resultWeeks).toString() + phrase;
  } else if (resultDays > 1) {
    phrase = "d ago";
    return Math.floor(resultDays).toString() + phrase;
  } else if (resultHours > 1) {
    phrase = "h ago";
    return Math.floor(resultHours).toString() + phrase;
  } else if (resultMinuts > 1) {
    phrase = "m ago";
    return Math.floor(resultMinuts).toString() + phrase;
  }else if (resultSeconds > 1) {
    phrase = "s ago";
    return Math.floor(resultSeconds).toString() + phrase;
  }

}