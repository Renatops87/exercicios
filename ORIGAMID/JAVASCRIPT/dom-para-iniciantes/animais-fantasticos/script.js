const animais = document.getElementById('animais');

const gridsection = document.getElementsByClassName('grid-section');

// querySelector retorna o primeoro elemento que combinar com o seu seletor CSS

const primeiraLi = document.querySelector('li');

const primeiraUl = document.querySelector('ul');

const linksInternos = document.querySelector('[href^="#"]');

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

// Retorne no console apenas as imagens que começaram com a palavra

// Selecione todos os links internos (onde o href começa com #)

// Selecione o primeiro h2 dentro de .animais-descricao

// Selecione o último p do site