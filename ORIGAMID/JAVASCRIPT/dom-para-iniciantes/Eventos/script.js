// const img = document.querySelector('img');

// function callback() {
//   console.log('clicou');
// }

// img.addEventListener('click', callback);

// const animaisLista = document.querySelector('.animais-lista');

// function callbackLista(event) {
//   console.log(event.currentTarget);
//   console.log(event.target);
// }

// animaisLista.addEventListener('click', callbackLista);

// const linkExterno = document.querySelector('a[href^="http"]');

// function handleLinkExterno(event) {
//   event.preventDefault(); // tira do padrão
//   console.log('Clicou');
// }

// linkExterno.addEventListener('click', handleLinkExterno);

// const h1 = document.querySelector('h1');

// function handleEvent(event) {
//   console.log(event.type, event);
// }

// h1.addEventListener('click', handleEvent);
// h1.addEventListener('mouseenter', handleEvent);

// window.addEventListener('scroll', handleEvent);

// const imgs = document.querySelectorAll('img');

// function handleImg(event) {
//   console.log(event.target);
// }

// imgs.forEach((img) => {
//   img.addEventListener('click', handleImg);
// });

// Quando o usuário clicar nos links internos do site,
// adicione a classe ativo ao item clicado e remova dos
// demais itens caso eles possuam a mesma. Previna
// o comportamento padrão desses links

linksInternos = document.querySelectorAll('a[href^="#"]');
console.log(linksInternos);

function ativar(event) {
  event.preventDefault();
  linksInternos.forEach((item) => {
    item.classList.remove('ativo');
  })
  event.currentTarget.classList.add('ativo');
}

linksInternos.forEach((link) => {
  link.addEventListener('click', ativar);
});

// Selecione todos os elementos do site começando a partir do body,
// ao clique mostre exatamente quais elementos estão sendo clicados

function clicks(event) {
  const elemento = event.currentTarget;
  console.log(elemento);
}


const clicado = document.querySelectorAll('body *');
clicado.forEach((item) => {
  item.addEventListener('click',clicks);
})


// Utilizando o código anterior, ao invés de mostrar no console,
// remova o elemento que está sendo clicado, o método remove() remove um elemento

// function clicks(event) {
//   event.currentTarget.remove();
// }

// Se o usuário clicar na tecla (t), aumente todo o texto do site.

function handleClickT(event) {
  if(event.key === 't') {
    document.documentElement.classList.toggle.add('textomaior');
  }
}

window.addEventListener('keydown', handleClickT);