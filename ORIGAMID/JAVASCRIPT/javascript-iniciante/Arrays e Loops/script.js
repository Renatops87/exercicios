var videoGames = ['Switch','PS4', 'XBOX', '3DS'];

videoGames.forEach(function(item, index, array){
  console.log(item, index, array);
})

// Crie uma array com os anos que o Brasil ganhou a copa
// 1959, 1962, 1970, 1994, 2002
var anoCopa = [1959, 1962, 1970, 1994, 2002];

// Interaja com a array utilizando um loop, para mostrar
// no console a seguinte mensagem, `O brasil ganhou a copa de ${ano}
anoCopa.forEach(function(ano){
  console.log(`O Brasil ganhou a copa de ${ano}`);
})

// Interaja com um loop nas frutas abaixo e pare ao chegar em Pera
var frutas = ['Banana', 'Maçã', 'Pera', 'Uva', 'Melância']
for(let i = 0; i < frutas.length; i++) {
  console.log(frutas[i]);
  if (frutas[i] === 'Pera') {
    break;
  }
}

console.log('=================================');

// Coloque a última fruta da array acima em uma variável,
// sem remover a mesma da array.
var UltimaFruta
for(let i = 0; i < frutas.length; i++) {
  if (i === (frutas.length) - 1) {
    UltimaFruta = frutas[i];
  }
  console.log(frutas[i]);
}
console.log('Ultima = ' + UltimaFruta);