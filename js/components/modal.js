const filterBtn = document.querySelector('#filterBtn');
const modal = document.querySelector('#modal')
const modalBack = document.createElement('div')
const checkBoxModal = document.querySelector('#checkBox')
const blurred = document.querySelectorAll('#blurred')

function closeModal() {
  modal.classList.remove('visible')
  for(const blur of blurred){
    blur.classList.remove('b')
  }
  modal.classList.add('animate__animated', 'animate__fadeIn', 'animate__delay-.05s')
  setTimeout(() => {modal.classList.remove('animate__animated', 'animate__fadeOut', 'animate__delay-.05s')}, 3000)
  modalBack.classList.remove('modalback')
  document.documentElement.style.overflow = 'initial' ;
}


function openModal() {
  modal.classList.add('visible')
    checkBoxModal.focus();
    for(const blur of blurred){
      blur.classList.add('b')
    }
    modal.classList.add('animate__animated', 'animate__fadeIn', 'animate__delay-.05s')
    modalBack.classList.add('modalback')
    document.documentElement.style.overflow = 'hidden' ;
    document.body.append(modalBack)
    setTimeout(() => {modal.classList.remove('animate__animated', 'animate__fadeIn', 'animate__delay-.05s')}, 3000)  
}

function remove() {
  for(const blur of blurred){
    if (blur.classList.contains('b')){
      blur.classList.remove('b')
    }
  }
}

filterBtn.addEventListener('click', (ev) => {
  ev.preventDefault();
    openModal();

document.addEventListener('keydown', (e) => {
  if (e.key == 'Escape'){
    closeModal();
    remove();
  }
})})



scrollTop.addEventListener('click', () => {
  window.scrollTo({
    top: 0,
    behavior: "smooth"
  });
})



  
