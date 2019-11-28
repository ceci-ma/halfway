const cat_button_click = () => {
  const cat_btns = document.querySelectorAll(".cat_btn")
  // cat_btns.forEach do |btn|
  //   btn.addEventListener("click", (e) => {
  //     e.currentTaget.toggleClass("active");
  //   })
  // end


  // cat_btns.forEach do |btn|
  //   btn.addEventListener("click", (e) => {
  //     e.currentTaget.toggleClass("active");
  //   })
  // end

  cat_btns.forEach((btn) => {
    btn.addEventListener("click", (e) => {
      e.target.classList.toggle("active-cat");
    })
  })

}

export { cat_button_click }
