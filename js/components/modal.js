const filterBtn = document.querySelector('#filterBtn');
const modal = document.querySelector('#modal')
const modalBack = document.createElement('div')
const checkBoxModal = document.querySelector('#filter__modal__checkBox')
let isTrue;

function closeModal() {
  modal.classList.toggle('visible')
  modal.classList.add('animate__animated', 'animate__fadeIn', 'animate__delay-.05s')
  setTimeout(() => {modal.classList.remove('animate__animated', 'animate__fadeOut', 'animate__delay-.05s')}, 3000)
  modalBack.classList.remove('modalback')
  document.documentElement.style.overflow = 'initial' ;
}

function openModal() {
  modal.classList.toggle('visible')
    checkBoxModal.focus();
    modal.classList.add('animate__animated', 'animate__fadeIn', 'animate__delay-.05s')
    modalBack.classList.add('modalback')
    document.documentElement.style.overflow = 'hidden' ;
    document.body.append(modalBack)
    setTimeout(() => {modal.classList.remove('animate__animated', 'animate__fadeIn', 'animate__delay-.05s')}, 3000)  
}



filterBtn.addEventListener('click', (ev) => {
  ev.preventDefault();
    openModal();

document.addEventListener('keydown', (e) => {
  if (e.key == 'Escape'){
    closeModal();
  }
})})


  
