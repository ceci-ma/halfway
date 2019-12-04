const hide_review_toggle = () => {

  // if (review_button) {
  // }

  const review_box = document.querySelector(".review-card-wrapper")
  const review_button = document.querySelector(".btn-review")

  review_button.addEventListener("click", (e) => {
    review_box.classList.toggle("hide-review");
    console.log("WORKIIIIIIIING")
  })
}

export { hide_review_toggle }
