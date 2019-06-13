const listaAnimais = document.querySelector('.animais-lista');

// altura contando o scroll
const height = listaAnimais.scrollHeight;
console.log(height);

// distancia entre o topo do elemento e o topo da página
const animaisTop = listaAnimais.offsetTop;
console.log(animaisTop);

// distância entre o canto esquerdo do elemento e o canto esquerdo da página
const raposah2 = document.querySelector('h2');
const h2Left = raposah2.offsetLeft;

console.log(h2Left);

// Método que retorna um objeto com valores de width, height, distâncias do elemento e mais

const h2rect = raposah2.getBoundingClientRect();

console.log(h2rect.left);

console.log(
  window.innerWidth,
  window.innerHeight,
  window.outerHeight,
  window.outerWidth,
  window.pageYOffset,
);

const small = window.matchMedia('(max-width: 600px)').matches;

if(small) {
  console.log('Usuario Mobile');
} else {
  console.log('Usuario desktop');
}

// Verifique a distância da primeira imagem
// em relação ao topo da página
const primeiraImagem = document.querySelector('img');

console.log(primeiraImagem.offsetTop);

// Retorne a soma da largura de todas as imagens

function somaImagens(){
  const img = document.querySelectorAll('img');
  let soma = 0;
  img.forEach((item) => {
    largura = item.offsetWidth;
    soma += largura;
  })
  console.log(soma);
}

window.onload = function() {
  somaImagens();
};


// Verifique se os links da página possuem
// o mínimo recomendado para telas utilizadas
// com o dedo. (48px/48px de acordo com o google)
const links = document.querySelectorAll('a');

links.forEach((item, index) => {
  let larg = item.offsetWidth;
  let alt = item.offsetHeight;
  console.log(index + " - " + alt + " x " + larg);
})

// Se o browser for menor que 720px,
// adicione a classe menu-mobile ao menu
const menor720 = window.matchMedia('(max-width: 720px)').matches;

const menu =  document.querySelector('.menu');
console.log(menu);

if (menor720) {
  menu.classList.add('menu-mobile');
} 