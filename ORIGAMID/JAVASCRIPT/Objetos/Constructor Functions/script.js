function Carro(marcaAtribuida, precoAtribuido) {
  this.marca = marcaAtribuida;
  this.preco = precoAtribuido;
}

const honda = new Carro('Honda', 2000);
const fiat = new Carro();

//fiat.marca = 'Fiat';

function Carro2(marca, precoInicial) {
  const taxa = 1.2;
  const precoFinal = precoInicial * taxa;
  this.marca = marca;
  this.preco = precoFinal;
}

const mazda = new Carro2('Mazda', 5000);

function Dom(seletor) {
  this.element = function() {
    return document.querySelector(seletor);
  }
  this.ativar = function(classe) {
    this.element().classList.add(classe);
  }
}

// const lid = new Dom('li');
// const ul = new Dom('li');

// ul.ativar('ativo');

// Transforme o objeto abaixo em uma Constructor Function
const pessoa = {
  nome: 'Nome pessoa',
  idade: 0,
  andar() {
    console.log(this.nome + ' andou');
  }
}

function Pessoa(nome, idade) {
  this.nome  = nome;
  this.idade = idade;
  this.andar = function() {
    console.log(nome + ' andou');
  }
}

const pessoa2 = new Pessoa('Renato', 31);
pessoa2.andar();

// Crie 3 pessoas, João - 20 anos,
// Maria - 25 anos, Bruno - 15 anos
const joao = new Pessoa('João', 20);
const maria = new Pessoa('Maria', 25);
const bruno = new Pessoa('Bruno', 15);

// Crie uma Constructor Function (Dom) para manipulação
// de listas de elementos do dom. Deve conter as seguintes
// propriedades e métodos:
//
// elements, retorna NodeList com os elementos selecionados
// addClass(classe), adiciona a classe a todos os elementos
// removeClass(classe), remove a classe a todos os elementos
function Dom2(seletor) {
  this.elements = document.querySelectorAll(seletor);
  this.addClass = function(classe) {
    this.elements.forEach((item) => {
      item.classList.add(classe);
    })
  }
  this.removeClass = function(classe) {
    this.elements.forEach((item) => {
      item.classList.remove(classe);
    })
  }
}

const li = new Dom2('li');
console.log(li);