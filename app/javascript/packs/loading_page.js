const page_load = () => {
  const button = document.getElementById('search-venues')
  const loading_page = document.getElementById('loader')

  if (button) {
    button.addEventListener("click", (e) => {
      document.querySelector('#loader-page').style.display = 'flex';
      document.querySelector('.loader').style.display = 'block';

    });
  };
};

export { page_load };


