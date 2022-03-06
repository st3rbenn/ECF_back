import {URL_API} from '/js/api/linkAPI.js';
const container = document.querySelector('#aboutJobs')
const footer = document.querySelector('#about__footer')
const linkBtn = document.querySelectorAll('#linkBtn')
const logo = document.querySelector('#logo')
const logoBg = document.querySelector('#logoBg')
const headerTitle = document.querySelector('#headerTitle')
const headerWebsite= document.querySelector('#headerWebsite')


const URL = window.location.search.toString().split('=')[1]

function aboutJobsInfoData(data) {
    const jobsItem = document.createElement('div')
    jobsItem.classList.add('about__jobs__container__items')

    const __blankDiv = document.createElement('div')

    const time = document.createElement('div')
    time.classList.add('time')
    const date = document.createElement('p')
    const dot = document.createElement('span')
    dot.classList.add('dot')
    const contract = document.createElement('p')

    const jobsInfo = document.createElement('div')
    jobsInfo.classList.add('about__jobs__container__info')

    const position = document.createElement('h3')
    position.classList.add('about__jobs__container__info__name')

    const city = document.createElement('p')
    city.classList.add('city')

    const btnApplyNowTop = document.createElement('a')
    btnApplyNowTop.classList.add('about__btn__applynow')
    btnApplyNowTop.setAttribute('id', 'linkBtn')
    btnApplyNowTop.setAttribute('href', '#')
    const description = document.createElement('p')
    description.classList.add('about__description')

    const requirements = document.createElement('div')
    requirements.classList.add('about__requirements')
    const requirementsTitle = document.createElement('h3')
    const requirementsP = document.createElement('p')
    const requirementsList = document.createElement('ul')
    

    const aboutWhatYWillDo = document.createElement('div')
    aboutWhatYWillDo.classList.add('about__whatYouWillDo')
    const whatYWillDoTitle = document.createElement('h3')
    const whatYWillDoP = document.createElement('p')
    const whatYWillDoList = document.createElement('ol')
    

   


    btnApplyNowTop.textContent = 'Apply Now'
    date.textContent = new Date(data.postedAt).toLocaleDateString('fr-FR')
    contract.textContent = data.contract
    position.textContent = data.position
    city.textContent = data.location
    description.textContent = data.description
    requirementsTitle.textContent = 'Requirements'
    requirementsP.textContent = data.requirements.content
    whatYWillDoTitle.textContent = 'What You Will Do'
    whatYWillDoP.textContent = data.role.content
    logo.src = `${URL_API}${data.logo}`
    logoBg.style.backgroundColor = data.logoBackground
    headerTitle.textContent = data.company
    headerWebsite.textContent = data.website.split('/').slice(2, 4).join('/')


    for (let i = 0; i < data.requirements.items.length; i++) {  
      const requirementsListItems = document.createElement('li')
      requirementsListItems.textContent = data.requirements.items[i]
      requirementsList.append(requirementsListItems)
    }
    for (let i = 0; i < data.role.items.length; i++) {  
      const whatYWillDoListItems = document.createElement('li')
      whatYWillDoListItems.textContent = data.role.items[i]
      whatYWillDoList.append(whatYWillDoListItems)
    }

    for (let i = 0; i < linkBtn.length; i++) {
      console.log(linkBtn[i]);
      console.log(i);
    }

    linkBtn[0].href = data.apply
    linkBtn[1].href = data.website
    footer.childNodes[1].textContent = `${data.position}`
    footer.childNodes[3].textContent = `${data.company}`
    
    
    container.append(jobsItem, description, requirements, aboutWhatYWillDo)
    jobsItem.prepend(__blankDiv, btnApplyNowTop)
    __blankDiv.append(time, jobsInfo)
    time.append(date, dot, contract)
    jobsInfo.append(position, city)
    requirements.append(requirementsTitle, requirementsP, requirementsList)
    
    aboutWhatYWillDo.append(whatYWillDoTitle, whatYWillDoP, whatYWillDoList)
}


async function getJobsInfo(){
  const response = await fetch(`${URL_API}/api/job/${URL}`)
  try{
    const data = await response.json()
    console.log(data);
    aboutJobsInfoData(data)
  }catch(err){
    console.error(err);
  }



}getJobsInfo();