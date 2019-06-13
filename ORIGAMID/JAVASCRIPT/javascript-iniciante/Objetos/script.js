var pessoa = {
  nome: 'Renato',
  idade: 31,
}

var quadrado = {
  lados: 4,
  area: function area(lado) {
    return lado * lado;
  },
  perimetro(lado) { // ES6+ 
    return this.lados * lado;
  },
}

// Crie um objeto com os seus dados pessoais

var dadosPessoais = {
  nome: 'Renato',
  sobrenome: 'Pereira',
  nomeCompleto() {
    return `${this.nome} ${this.sobrenome}`;
  },
}

// Crie um método no objeto anterior, que mostre o seu nome completo

// Modifique o valor da propriedade para 3000
var carro = {
  preco: 1000,
  portas: 4,
  marca: 'Audi',
}

carro.preco = 3000;

// Crie um objeto de um cachorro que represente um labrador
// preto com 10 anos, que late ao ver um homem
var cachorro = {
  cor: 'preto',
  raca: 'labrador',
  idade: 10,
  latir(pessoa) {
    if (pessoa === 'Homem') {
      return 'Latir';
    } else {
      return 'Nada';
    }
  },
}