const item_menu = document.querySelectorAll('#menu ul li');
console.log(item_menu);
const logo = document.querySelectorAll('.icone');
console.log(logo);

item_menu.forEach((item, index) => {
  item.addEventListener('mouseover', function(){
    logo.forEach((img, id) => {
      if (id === index) {
        img.classList.add('ativo');
      } else {
        img.classList.remove('ativo');
      }
    })
  });
});



