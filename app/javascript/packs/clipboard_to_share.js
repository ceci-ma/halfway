const clipboard_to_share = () => {
 const button = document.getElementById('share')
  button.addEventListener('click', (e) => {
    e.preventDefault();

    if (navigator.share) {
      navigator.share({
        title: document.title,
        text: "Meet me halfway!",
        url: window.location.href,
      })
        .then(() => console.log('Successful share'))
        .catch((error) => console.log('Error sharing', error));
    } else {
    }
  });
}

export { clipboard_to_share };





