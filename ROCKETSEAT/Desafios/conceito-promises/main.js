// promises - funções que não influenciam na linha do tempo do código javascript
// var minhaPromise = function () {
//   return new Promise(function (resolve, reject) {
//     var xhr = new XMLHttpRequest();

//     xhr.open('GET', 'https://api.github.com/users/renatops87');
//     xhr.send(null);

//     xhr.onreadystatechange = function () {
//       if (xhr.readyState === 4) {
//         if(xhr.status === 200) {
//           resolve(JSON.parse(xhr.responseText));
//         } else {
//           reject('Erro na requisição');
//         }
//       }
//     }
//   });
// }

// minhaPromise()
//   .then(function(response) {
//     console.log(response);
//   })
//   .catch(function(error) {
//     console.warn(error);
//   });

var dados;
var container = document.querySelector('#lista');
var ulElement = document.createElement('ul');
container.appendChild(ulElement);


var listElement = document.querySelector('ul');

function adicionar() {
  listElement.innerHTML = '';
  var nomeUsuario = document.querySelector('input[name=user]');
 
  var link = 'https://api.github.com/users/' + nomeUsuario.value + '/repos'
  
  axios.get(link)
  .then(function (response) {
    dados = response.data;
    for (dado of dados) {
      var liElement = document.createElement('li');
      var textElement = document.createTextNode(dado.name);

      liElement.appendChild(textElement);
      ulElement.appendChild(liElement);
      nomeUsuario.value = '';
    }
  })
  .catch(function (error) {
    listElement.innerHTML = '';
    alert('Usuario não cadastrado');
    nomeUsuario.value = '';
  });
}



var idade = 20;

function checaIdade(idade) {
  return new Promise(function (resolve, reject) {
    if (idade > 18) {
      setTimeout(resolve, 2000);
    } else {
      setTimeout(reject, 2000);
    }
  });
}

checaIdade(idade)
  .then(function () {
    console.log("Maior que 18");
  })
  .catch(function () {
    console.log("Menor que 18");
  });
