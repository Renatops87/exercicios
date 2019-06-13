// Por qual motivo o código abaixo retorna com erros?
{ 
  // var cor = 'preto';
  // const marca = 'Fiat';
  // let portas = 4;
}

// console.log(cor, marca, portas);
// const e let não vazam do bloco

// Como corrigir o erro abaixo?
const dois = 2;
function somarDois(x) {
  // const dois = 2; declarar a constante fora da função
  return x + dois;
}
function dividirDois(x) {
  return x + dois;
}
somarDois(4);
dividirDois(6);
  
// O que fazer para total retornar 500?
var numero = 50;
for(let numero = 0; numero < 10; numero++) { // mudar de var para let
  console.log(numero);
}
const total = 10 * numero;
console.log(total);