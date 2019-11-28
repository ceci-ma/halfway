
const list_toggle = () => {
  const button = document.getElementById('arrow')
  const show_markers = document.querySelectorAll(".mapTrigger")
  const transition = document.getElementById('transition')

  if (button) {
    button.addEventListener("click", (e) => {
      transition.classList.toggle("full-screen");
      if (transition.classList.contains("full-screen")) {
        show_markers.forEach((show_marker) => {
          show_marker.addEventListener("click", (e) => {
            transition.classList.remove("full-screen");
          });
        });
      };
    });
  };
};

export { list_toggle };

