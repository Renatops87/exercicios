const menu = document.querySelector('.menu');

menu.classList.add('ativo');

menu.classList.toggle('azul');

menu.classList.toggle('azul');

console.log(menu.classList); // array like

if(menu.classList.contains('azul')) {
  menu.classList.add('possui-azul');
} else {
  menu.classList.add('nao-possui-azul');
}

// Attributes

const animais = document.querySelector('.animais');

console.log(animais.attributes);

// getAttribute/ setAttribute  - métodos que retornam ou definem de acordo com o atributo selecionado

const img = document.querySelector('img');
console.log(img);

const altImg = img.getAttribute('alt');

img.setAttribute('alt', 'Raposa');

const possuiAlt = img.hasAttribute('alt');
console.log(possuiAlt);

// Read Only vs Writable

// Adicione a classe ativo a todos os itens do menu
const menu2 = document.querySelectorAll('.menu a');

menu2.forEach(function(item) {
  item.classList.add('ativo');
  console.log(item);
})

// Remove a classe ativo de todos os itens do menu e mantenha apenas no primeiro
menu2.forEach(function(item, index) {
  if (index > 0) {
    item.removeAttribute('class');
  }
  console.log(item);
})

// Verifique se as imagens possuem o atributo alt

const imgs = document.querySelectorAll('img');
console.log(imgs);

imgs.forEach((item) => {
  const possuiAlts = item.hasAttribute('alt');
  console.log(possuiAlts);
})

// Modifique o href do link externo no menu
const linkExt = menu.querySelector('[href^="http"]');
linkExt.setAttribute('href','#imagens');
console.log(linkExt);

