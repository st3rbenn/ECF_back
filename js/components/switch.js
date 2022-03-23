const darkStored = sessionStorage.getItem('darkStored')
const themeSwitch = document.querySelector('#theme-switch')

document.querySelector('#theme-switch').addEventListener('change', function(event){
    (event.target.checked) ? document.body.setAttribute('data-theme', 'dark') : document.body.removeAttribute('data-theme');
    (event.target.checked) ? document.querySelector('#switch__button').setAttribute('data-theme', 'dark') : document.querySelector('#switch__button').removeAttribute('data-theme');
    (event.target.checked) ? document.querySelector('#filter').setAttribute('data-theme', 'dark') : document.querySelector('#filter').removeAttribute('data-theme');
    (event.target.checked) ? document.querySelector('#modal').setAttribute('data-theme', 'dark') : document.querySelector('#modal').removeAttribute('data-theme');
  });

  window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', event => {
  if (event.matches) {
    document.body.setAttribute('data-theme', 'dark');
    document.querySelector('#switch__button').setAttribute('transition', 'left', 'var', '(--switch-animation-duration)');
  } else {
    document.body.removeAttribute('data-theme')
  }
})

themeSwitch.addEventListener('change', event => {
  if (event.target.checked){
    sessionStorage.setItem('darkStored', 'enabled')
    console.log('enabled');
  }else if (!event.target.checked) {
    sessionStorage.setItem('darkStored', 'disabled')
    console.log('disabled');
  }
})


if (darkStored === 'enabled'){
  document.body.setAttribute('data-theme', 'dark')
  document.querySelector('#switch__button').setAttribute('data-theme', 'dark')
  document.querySelector('#filter').setAttribute('data-theme', 'dark')
  document.querySelector('#modal').setAttribute('data-theme', 'dark')
}else if (darkStored === 'disabled'){
  document.body.removeAttribute('data-theme')
  document.querySelector('#switch__button').removeAttribute('data-theme')
  document.querySelector('#filter').removeAttribute('data-theme')
  document.querySelector('#modal').removeAttribute('data-theme')
}