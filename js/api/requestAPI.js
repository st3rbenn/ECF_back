const container = document.querySelector('#jobs')

const URL_API = 'https://ecf-dwwm.cefim-formation.org/'

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
  imgJobs.src = `https://ecf-dwwm.cefim-formation.org/${data.logo}`
  city.textContent = data.location
  imgJobs.style.backgroundColor = data.logoBackground
  
  
  container.prepend(jobsContainer)
  jobsContainer.append(imgJobs, jobsItem)
  jobsItem.append(timeContainer, jobsContainerInfo, city)
  timeContainer.append(jobsPostedAt, dot, jobsContract)
  jobsContainerInfo.append(jobsPosition, jobsName)
}



async function getJobsInfo(){
  const response = await fetch(URL_API + '/api/jobs')
  try{

    const data = await response.json()
    const jobsInfo = data.jobs
    // console.table(jobsInfo.reverse());
    console.log(jobsInfo[0].logo);
    for (let i = 0; i < jobsInfo.length; i++) {
      displayInfoJobs(jobsInfo[i])  
    }

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