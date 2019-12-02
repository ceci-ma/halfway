const clipboard_to_share = () => {
 const button = document.getElementById('share')
//   const sharebtn = document.getElementById('share');
//   if (sharebtn) {
//     sharebtn.addEventListener('click', (e) => {
//         const el = document.createElement('textarea');
//         el.value = window.location.href;
//         el.setAttribute('readonly', '');
//         el.style.position = 'absolute';
//         el.style.left = '-9999px';
//         document.body.appendChild(el);
//         el.select();
//         document.execCommand('copy');
//         document.body.removeChild(el);
//         alert("Copied the text: " + el.value);
//     })
//   }
// }

// if (sharebtn) {
//   button.addEventListener("click", async () => {
//     try {
//       await navigator.share({ title: "Example Page", url: "" });
//       console.log("Data was shared successfully");
//     } catch (err) {
//       console.error("Share failed:", err.message);
//     }
//   });
// }


  // button.addEventListener('click', (e) => {
  //   var text = 'Add text to share with the URL';
  //   if(navigator.share) {
  //       navigator.share({
  //           title: document.title,
  //           text: text,
  //           url: location.href,
  //       })
  //   } else {
  //       // Here we use the WhatsApp API as fallback; remember to encode your text for URI
  //       location.href = 'https://api.whatsapp.com/send?text='
  //   }
// });

  button.addEventListener('click', (e) => {
    e.preventDefault();§
    if (navigator.share) {
      navigator.share({
        title: document.title,
        text: text,
        url: location.href,
      })
        .then(() => console.log('Successful share'))
        .catch((error) => console.log('Error sharing', error));
    } else {
    }
  });




// if(navigator.share !== undefined) {
//     document.addEventListener('DOMContentLoaded', e => {
//       const shareBtn = document.getElementById('share');
//       shareBtn.addEventListener('click', clickEvent => {
//         clickEvent.preventDefault();
//         navigator.share({title: document.title, text: window.location.href, url: window.location.href})
//           .then(() => console.log('Successful share'),
//            error => console.log('Error sharing:', error));
//       });
//     });
// }
}

export { clipboard_to_share };





