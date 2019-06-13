var nome = 'Renato';

var nomeMinusculo = nome.toLowerCase();

var btn = document.querySelector('.btn');
btn.addEventListener('click', function() {
  console.log('Clicou');
})

// nomeie 3 propriedades ou métodos de strings
console.log(nome.length);
console.log(nome.toLowerCase());
console.log(nome.replace('na', 'ni'));
console.log(nome.charAt(0));

// nomeie 5 propriedades ou métodos de elementos do DOM
//activeElement;
//close();
//getElementById();
//execCommand();
//querySelector();

// busque na web um objeto (método) capaz de interagir com o clipboard
// clipboard é a parte do seu computador que lida com o CTRL + C e CTRL + V
//document.execCommand('copy');
// clipboardjs