const page_load = () => {
  const button = document.getElementById('search-venues')
  const loading_page = document.getElementById('loader')

  if (button) {
    button.addEventListener("click", (e) => {
      loading_page.classList.toggle("loading-page");

    });
  };
};

export { page_load };


