export const URL_API = 'https://ecf-dwwm.cefim-formation.org/'



//For aria Label///

function nonAltImages() {
  const images = document.querySelectorAll('img');
  for (let i = 0; i < images.length; i++) {
    if (!images[i].hasAttribute('aria')) {
      images[i].style.border = '1px solid red';
    }
  }
}
// nonAltImages()