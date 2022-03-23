export const URL_API = 'https://ecf-dwwm.cefim-formation.org/'



//For aria Label///

function non() {
  const balise = document.querySelectorAll('div');
  for (let i = 0; i < balise.length; i++) {
    if (!balise[i].hasAttribute('aria-label')) {
      balise[i].style.border = '5px solid red';
    }
  }
}
non();