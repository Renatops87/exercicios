const animais = document.getElementById('animais');

const gridsection = document.getElementsByClassName('grid-section');

// querySelector retorna o primeoro elemento que combinar com o seu seletor CSS

const primeiraLi = document.querySelector('li');

const primeiraUl = document.querySelector('ul');

// const linksInternos = document.querySelector('[href^="#"]');

// querySelectorAll retorna todos os elementos compatíveis com o seletor CSS em uma NodeList (a lista é estática)

const animaisImg = document.querySelectorAll('.animais img');

const gridSectionHTML = document.getElementsByClassName('grid-section');
const gridSectionNode = document.querySelectorAll('.grid-section');


gridSectionNode.forEach(function(item, index){
  console.log(item);
})

// transformar gridSectionHTML e usar foreach()

const arrayGrid = Array.from(gridSectionHTML);

arrayGrid.forEach(function(item){
  console.log(item);
})

// Retorne no console todas as imagens do site
const imagens = document.getElementsByTagName('img');
console.log(imagens);

// Retorne no console apenas as imagens que começaram com a palavra imagem
const imagens2 = document.querySelectorAll('[src^="img/imagem"]');
console.log(imagens2);

// Selecione todos os links internos (onde o href começa com #)
const linksInternos = document.querySelectorAll('[href^="#"]');
console.log(linksInternos);

// Selecione o primeiro h2 dentro de .animais-descricao
const primeiroH2 = document.querySelector('H2');
console.log(primeiroH2);

const animais2 = document.querySelector('animais-descricao');
const h2Animais = animais2.querySelector('h2');

// Selecione o último p do site
const paragrafos = document.querySelectorAll('p');
console.log(paragrafos[--paragrafos.length]);

const ultimoP = document.getElementsByTagName('p');
console.log(ultimoP[24]);