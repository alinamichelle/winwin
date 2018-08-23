import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Sharing Life Stories, Passing on Legacies"],
    typeSpeed: 80,
    loop: false
  });
}

export { loadDynamicBannerText };
