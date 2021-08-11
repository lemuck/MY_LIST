const initUpdateLogobarOnScroll = () => {
  const logobar = document.querySelector('#logobar');
  let previousScroll = 20;
  if (logobar) {
    window.addEventListener('scroll', () => {
      let scroll = window.scrollY
      if (scroll >= previousScroll) {
        logobar.style.top = '-50px'
      } else {
        logobar.style.top = '0px'
      }
      previousScroll = scroll;
    });
  }
}

export { initUpdateLogobarOnScroll };