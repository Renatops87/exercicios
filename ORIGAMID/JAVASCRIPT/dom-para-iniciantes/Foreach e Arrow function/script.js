const imgs = document.querySelectorAll('img');

// imgs.forEach(function(item, index, array){
//   console.log(item, index, array);
// });

const titulos = document.getElementsByClassName('titulo');
const titulosArray = Array.from(titulos);

titulosArray.forEach(function(item, index, array){
  console.log(item, index, array);
})

// arrow function - sintaxe curta em relação a function expression

imgs.forEach(item => {
  console.log(item);
});

let i = 0;
// imgs.forEach(() => {
//   console.log(i++);
// });

imgs.forEach(() => console.log(i++));

//Mostre no console cada parágrado do site
const paragrafo = document.querySelectorAll('p')
paragrafo.forEach((item, index) => {
  console.log(item, index);
})

// Mostre o texto dos parágrafos no console
const texto = document.querySelectorAll('p');
texto.forEach(function(item, index){
  console.log(index, item.innerText);
})

// Como corrigir os erros abaixo:
const imgs2 = document.querySelectorAll('img');
imgs2.forEach((item, index) => {
  console.log(item, index);
});

i = 0;
imgs2.forEach(() => {
  console.log(i++);
});

imgs2.forEach(() => console.log(i++));