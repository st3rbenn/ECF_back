const container = document.querySelector('#main')
const nbList = 9;
function aboutJobsInfoData() {
    const AboutJobs = document.createElement('section')
    const jobsItem = document.createElement('div')
    const time = document.createElement('div')
    const date = document.createElement('p')
    const dot = document.createElement('span')
    const contract = document.createElement('p')
    const jobsInfo = document.createElement('div')
    const position = document.createElement('h1')
    const city = document.createElement('p')
    const btnApplyNowTop = document.createElement('a')

    const description = document.createElement('p')
    const requirements = document.createElement('div')
    const requirementsTitle = document.createElement('h3')
    const requirementsP = document.createElement('p')
    const requirementsList = document.createElement('ul')
    const listItems = document.createElement('li')

    for (let i = 1; i < nbList; i++) {  
      listItems.setAttribute('data-RequierementList', i)
      console.log(listItems);
    }

    const AboutWhatYWillDo = document.createElement('div')
    const whatYWillDoTitle = document.createElement('h3')
    const whatYWillDoP = document.createElement('p')
    const whatYWillDoList = document.createElement('ol')


}aboutJobsInfoData();



