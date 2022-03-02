document.querySelector('#theme-switch').addEventListener('change', function(event){
    (event.target.checked) ? 
    document.body.setAttribute('data-theme', 'dark') : document.body.removeAttribute('data-theme');
    (event.target.checked) ? 
    document.querySelector('#switch__button').setAttribute('data-theme', 'dark') : document.querySelector('#switch__button').removeAttribute('data-theme');
    (event.target.checked) ? 
    document.querySelector('#filter').setAttribute('data-theme', 'dark') : document.querySelector('#filter').removeAttribute('data-theme');
    (event.target.checked) ?
    document.querySelector('#modal').setAttribute('data-theme', 'dark') : document.querySelector('#modal').removeAttribute('data-theme');
  });

  window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', event => {
  if (event.matches) {
    document.body.setAttribute('data-theme', 'dark');
    document.querySelector('#switch__button').setAttribute('transition', 'left', 'var', '(--switch-animation-duration)');
  } else {
    document.body.removeAttribute('data-theme')
  }
})