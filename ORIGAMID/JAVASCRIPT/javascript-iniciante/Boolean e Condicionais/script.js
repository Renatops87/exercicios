// Verifique se a sua idade é maior do que a de algum parente
// Dependendo do resultado coloque no console 'É maior', 'É igual
var idade = 31;
var idadeParente = 55;

if (idade > idadeParente) {
  console.log("É maior");
} else if (idade < idadeParente) {
    console.log("É menor")
} else {
    console.log("É igual");
}

// Qual valor é retornado na seguinte expressão? 
var expressao = (5 - 2) && (5 - ' ') && (5 - 2);
console.log(expressao); // retorna 3
// 5 - ' ' retorna 5

// Verifique se as seguintes variáveis são Truthy ou Falsy
console.log('=========================');
var nome = 'Andre'; 
console.log(!!nome)
var idade = 28;
console.log(!!idade);
var possuiDoutorado = false;
console.log(!!possuiDoutorado);
var empregoFuturo;
console.log(!!empregoFuturo);
var dinheiroNaConta = 0;
console.log(!!dinheiroNaConta);
console.log('=========================');

// Compare o total de habitantes do Brasil com China (valor em mi
var brasil = 207;var china = 1340;

// O que irá aparecer no console? // falso
if(('Gato' === 'gato') && (5 > 2)) {
  console.log('Verdadeiro');
} else {
    console.log('Falso');
}

// O que irá aparecer no console? // Cão
if(('Gato' === 'gato') || (5 > 2)) {
  console.log('Gato' && 'Cão');
} else {
    console.log('Falso');
}