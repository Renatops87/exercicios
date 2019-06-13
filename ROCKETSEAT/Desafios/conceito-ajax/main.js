// requisição AJAX assincrona de informações do servidor backend sem atualizar
var xhr = new XMLHttpRequest();

xhr.open('GET','https://api.github.com/users/renatops87');
xhr.send(null);

xhr.onreadystatechange = function() {
  if (xhr.readyState === 4) {
    console.log(JSON.parse(xhr.responseText));
  }
}
