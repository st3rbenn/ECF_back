const filterBtn = document.querySelector('#filterBtn');
const modal = document.querySelector('#modal')
const modalBack = document.createElement('div')
let isTrue;
filterBtn.addEventListener('click', (ev) => {
  modal.classList.toggle('visible')
  modal.classList.add('animate__animated', 'animate__fadeIn', 'animate__delay-.05s')
  modalBack.classList.add('modalback')
  document.body.append(modalBack)
  setTimeout(() => {modal.classList.remove('animate__animated', 'animate__fadeIn', 'animate__delay-.05s')}, 3000)
  
  isTrue = true;
})
// setTimeout(() => {
//   document.addEventListener(
//     "click",
//     function(event) {
  
//       if (
//         event.target.matches(".button-close-modal") ||
//         !event.target.closest(".modal")
//       ) {
//         closeModal()
//       }
//     },
//     false
//   )
  
//   function closeModal() {
//     modal.classList.toggle('visible')
//     modal.classList.remove('animate__animated', 'animate__fadeIn', 'animate__delay-.05s')
//   }
// }, 5000)
