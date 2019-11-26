const list_toggle = () => {
  const button = document.getElementById('arrow')

  button.addEventListener("click", (e) => {
     document.getElementById('transition').classList.toggle("full-screen");
    console.log("WORKIIIIIIING");
  })
}

export { list_toggle };
