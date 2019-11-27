const clipboard_to_share = () => {
  // const button = document.getElementById('share')
  const sharebtn = document.getElementById('share');

  sharebtn.addEventListener('click', (e) => {
      const el = document.createElement('textarea');
      el.value = window.location.href;
      el.setAttribute('readonly', '');
      el.style.position = 'absolute';
      el.style.left = '-9999px';
      document.body.appendChild(el);
      el.select();
      document.execCommand('copy');
      document.body.removeChild(el);
      alert("Copied the text: " + el.value);
  })
}

export { clipboard_to_share };


