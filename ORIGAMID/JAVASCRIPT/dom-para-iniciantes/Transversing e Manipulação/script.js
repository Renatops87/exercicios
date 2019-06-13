// // const h1 = document.querySelector('h1');
// const animaisLista = document.querySelector('.animais-descricao');

// // h1.innerHTML = '<p>Novo Titulo</p>';

// console.log(animaisLista.innerHTML);

// // transversing - navegar pelo dom

// const lista = document.querySelector('.animais-lista');

// console.log(lista.parentElement); // pai
// console.log(lista.previousElementSibling); //elemento acima
// console.log(lista.nextElementSibling); // elemento abaixo
// console.log(lista.children); //HTMLCollection com os filhos
// console.log(lista.children[0]); // primeiro filho
// console.log(lista.children[--lista.children.length]); // ultimo filho
// console.log(lista.querySelectorAll('li'));
// console.log(lista.querySelector('li:last-child')) // ultimo filho

// console.log(lista.childNodes);
// console.log(lista.previousSibling);

// const animais = document.querySelector('.animais');
// const contato = document.querySelector('.contato');
// const titulo = contato.querySelector('.titulo');

// const mapa = document.querySelector('.mapa');

// // contato.insertBefore(animais, mapa);

// const novoh1 = document.createElement('h1');
// novoh1.innerText = 'Novo Titulo';
// novoh1.classList.add('titulo');

// mapa.appendChild(novoh1); // adicionou após o primeiro filho de mapa

// const h1 = document.querySelector('h1');
// const faq = document.querySelector('.faq');

// const cloneh1 = h1.cloneNode(true);

// faq.appendChild(cloneh1);

// Duplique o menu e adicione ele em copy
const menu = document.querySelector('.menu')
console.log(menu);

const cloneMenu = menu.cloneNode(true);

const copy = document.querySelector('.copy');

copy.appendChild(cloneMenu);

// Selecione o primeiro DT da dl de Faq

const faqLista = document.querySelector('.faq .faq-lista');
const dt = faqLista.children[0]
console.log(dt);

// Selecione o DD referente ao primeiro DT
console.log(dt.nextElementSibling);

// Substitua o conteúdo html de .faq pelo de .animais
const faq = document.querySelector('.faq');
const animais = document.querySelector('.animais');

faq.innerHTML = animais.innerHTML;

// const conteudoFaq = faq.querySelector('*');
// const conteudoAnimais = animais.querySelector('*');
// faq.replaceChild(conteudoAnimais, conteudoFaq);
// console.log(conteudoFaq);

