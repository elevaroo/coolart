const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-coolart');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-coolart-white');
      } else {
        navbar.classList.remove('navbar-coolart-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
