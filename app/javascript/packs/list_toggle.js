const list_toggle = () => {
  const button = document.getElementById('arrow')

  button.addEventListener("click", (e) => {
    e.currentTarget.classList.toggle("full-screen");
    // console.log("WORKIIIIIIING");
  })
}

export { list_toggle };
