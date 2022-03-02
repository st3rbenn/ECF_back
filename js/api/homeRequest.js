import {URL_API} from '/js/api/linkAPI.js';

const container = document.querySelector('#jobs')
const btnLoadMore = document.querySelector('#loadmore')
let isPressed = true;
let isLoaded = false;

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

  

  jobsPostedAt.textContent = new Date(data.postedAt).toLocaleDateString('fr-FR')
  jobsContract.textContent = data.contract
  jobsPosition.textContent = data.position
  jobsName.textContent = data.company
  imgJobs.src = `${URL_API}${data.logo}`
  city.textContent = data.location
  imgJobs.style.backgroundColor = data.logoBackground
  
  if (isPressed){
    container.prepend(jobsContainer)
    jobsContainer.prepend(imgJobs, jobsItem)
    jobsItem.prepend(timeContainer, jobsContainerInfo, city)
    timeContainer.prepend(jobsPostedAt, dot, jobsContract)
    jobsContainerInfo.prepend(jobsPosition, jobsName)
    
  }else if (isLoaded = true){
    container.append(jobsContainer)
    jobsContainer.append(imgJobs, jobsItem)
    jobsItem.append(timeContainer, jobsContainerInfo, city)
    timeContainer.append(jobsPostedAt, dot, jobsContract)
    jobsContainerInfo.append(jobsPosition, jobsName)
  }
}

btnLoadMore.addEventListener('submit', (ev) => {
  ev.preventDefault();
  async function loadMore() {
    const response = await fetch(`${URL_API}` + `/api/jobs?offset=0`)
    try{
      const data = await response.json()
      const jobsInfo = data.jobs
      console.table(jobsInfo)
      jobsInfo.reverse()
      for (let i = 0; i < jobsInfo.length; i++) {
        displayInfoJobs(jobsInfo[i])
      }
        isLoaded = true
        container.prependc(btnLoadMore)
    }catch(err) {
      console.error(err);
    }
  }loadMore();
})

async function getJobsInfo(){
  const response = await fetch(`${URL_API}` + '/api/jobs?offset=12')
  try{

    const data = await response.json()
    const jobsInfo = data.jobs
    console.table(jobsInfo);
    for (let i = 0; i < jobsInfo.length; i++) {
      displayInfoJobs(jobsInfo[i])  
    }
    isPressed = false;
  }
  catch(err){
    console.error(err);
  }
}getJobsInfo();


////For aria Label///

// function nonAltImages() {
//   const images = document.querySelectorAll('img');
//   for (let i = 0; i < images.length; i++) {
//     if (!images[i].hasAttribute('alt')) {
//       images[i].style.border = '1px solid red';
//     }
//   }
// }