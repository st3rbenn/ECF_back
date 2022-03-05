import {URL_API} from '/js/api/linkAPI.js';
const loader = document.querySelector('#loader')
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
  const dataLogoId = document.querySelector('data-id')
  
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
    const id = '?id=' + jobsContainer.getAttribute('data-id')
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
        // container.prependc(btnLoadMore)
        btnLoadMore[0].setAttribute('disabled', true)
    }catch(err) {
      console.error(err);
    }
  }
  loadMore();
})



// btnLoadMore.classList.add('hidden')
loader.classList.remove('hidden')


setTimeout(() => {
  async function getJobsInfo(){
    const response = await fetch(`${URL_API}` + '/api/jobs?offset=12')
    try{
  
      const data = await response.json()
      const jobsInfo = data.jobs
      console.table(jobsInfo);
      jobsInfo.reverse()
      for (let i = 0; i < jobsInfo.length; i++) {
        displayInfoJobs(jobsInfo[i])  
      }
      isPressed = false;
      loader.classList.add('hidden')
      btnLoadMore.setAttribute('disabled', false)
    }
    catch(err){
      console.error(err);
    }
  }getJobsInfo()
}, 2500)


document.addEventListener("scroll", handleScroll);
// get a reference to the button
const scrollTop = document.querySelector('#scrollTop')

function handleScroll() {
  const scrollableHeight = document.documentElement.scrollHeight - document.documentElement.clientHeight;
  const GOLDEN_RATIO = 0.2;

  if ((document.documentElement.scrollTop / scrollableHeight ) > GOLDEN_RATIO) {
    //show button
    scrollTop.classList.remove('hidden');
  } else {
    //hide button
    scrollTop.classList.add('hidden');
  }
}


scrollTop.addEventListener('click', () => {
  window.scrollTo({
    top: 0,
    behavior: "smooth"
  });
})



