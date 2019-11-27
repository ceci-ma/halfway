const list_toggle = () => {
  const button = document.getElementById('arrow')
  if (button) {
    button.addEventListener("click", (e) => {
      document.getElementById('transition').classList.toggle("full-screen");
    })
  }

export { list_toggle };

