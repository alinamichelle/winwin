import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Friendships with a Purpose"],
    typeSpeed: 80,
    loop: false
  });
}

export { loadDynamicBannerText };
