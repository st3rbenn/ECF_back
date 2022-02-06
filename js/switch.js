document.getElementById('theme-switch').addEventListener('change', function(event){
    (event.target.checked) ? document.body.setAttribute('data-theme', 'dark') : document.body.removeAttribute('data-theme');
    (event.target.checked) ? document.getElementById('label__switch').setAttribute('data-theme', 'dark') : document.getElementById('label__switch').removeAttribute('data-theme');
    (event.target.checked) ? document.getElementById('switch__button').setAttribute('data-theme', 'dark') : document.getElementById('switch__button').removeAttribute('data-theme');
    (event.target.checked) ? document.getElementById('filter').setAttribute('data-theme', 'dark') : document.getElementById('filter').removeAttribute('data-theme');
  });

  window.matchMedia('(prefers-color-scheme: dark)')
      .addEventListener('change', event => {
  if (event.matches) {
    document.body.setAttribute('data-theme', 'dark');
    document.getElementById('switch__button').getAttribute('transition', 'left', 'var', '(--switch-animation-duration)');
  } else {
    document.body.removeAttribute('data-theme')
  }
})