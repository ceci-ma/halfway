const clipboard_to_share = () => {
  // const button = document.getElementById('share')
  const sharebtn = document.getElementById('share')

  sharebtn.addEventListener('click', (e) => {
    var copyText = document.getElementById("copyinput");

      /* Select the text field */
      copyText.select();
      copyText.setSelectionRange(0, 99999); /*For mobile devices*/

      /* Copy the text inside the text field */
      document.execCommand("copy");

      /* Alert the copied text */
      alert("Copied the text: " + copyText.value);
      console.log(copyText.value);
  })
}

export { clipboard_to_share };


