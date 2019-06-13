function imc(peso, altura) {
  var imc = peso / (altura ** 2);
  return imc;
}

console.log(imc(80, 1.80));

function corFavorita(cor) {
  if (cor === 'Azul' ) {
    return "Gosta de Azul";
  } else if (cor === 'Verde') {
      return 'Gosta de Azul';
  } else {
      return 'Não tem cor favorita';
  }
}

console.log(corFavorita());

addEventListener('click', function(){ 
  console.log('Oi'); // Função callback (argumento que é função)
})

// Crie uma função para verificar se um valor é Truthy
function verificaThuthy (valor) {
  return(!!valor);
  // if (!!valor) {
  //   return 'É Truthy';
  // } else {
  //   return 'não É Truthy';
  // }
}

// Crie uma função matemática que retorne o perímetro de um quadrado
// lembrando: perímetro é a soma dos quatro lados do quadrado
function perimetroQuadrado(lado) {
  return lado * 4;
}

// Crie uma função que retorne o seu nome completo
// ela deve possuir os parâmetros: nome e sobrenome
function nomeCompleto(nome, sobrenome) {
  return `Nome completo: ${nome} ${sobrenome}`
}

// Crie uma função que verifica se um número é par
function verificaPar(numero) {
  if (numero % 2 === 0){
    return 'é par';
  } else {
      return 'não é par';
  }
}
// Crie uma função que retorne o tipo de
// dado do argumento passado nela (typeof)
function tipoDado(dado) {
  return typeof dado;
}

// addEventListener é uma função nativa do JavaScript
// o primeiro parâmetro é o evento que ocorre e o segundo o Callback
// utilize essa função para mostrar no console o seu nome completo
// quando o evento 'scroll' ocorrer.
addEventListener('scroll', function(){
  console.log('Renato Pereira');
})

// Corrija o erro abaixo
var totalPaises = 193;
function precisoVisitar(paisesVisitados) {
    return `Ainda faltam ${totalPaises - paisesVisitados} países para visitar`
}
function jaVisitei(paisesVisitados) {
   return `Já visitei ${paisesVisitados} do total de ${totalPaises}`
}
precisoVisitar(20);
jaVisitei(20);
console.log(precisoVisitar(20));
console.log(jaVisitei(20));

