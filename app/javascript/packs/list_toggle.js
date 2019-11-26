const list_toggle = () => {
  const button = document.getElementById('arrow')

  button.addEventListener("click", (e) => {
    document.getElementById('transition').classList.toggle("full-screen");
  })
}

export { list_toggle };

