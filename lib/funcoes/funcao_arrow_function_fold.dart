void main() {
	var numeros = [1, 2, 3, 4, 5];  
	var soma = numeros.fold(0, (valorAnterior, elemento) => valorAnterior + elemento); 
  print(soma); // Saída: 15

  soma = 0;
  for (var elemento in numeros) {
    soma += elemento;
  }  

  var saudacao = ["Olá"," ","Fulano","!"];
  var msg = "";
  for (var elemento in saudacao) {
    msg += elemento;
  }
  print(msg);

	msg = saudacao.fold("", (valorAnterior, elemento) => valorAnterior + elemento); 
  print(msg);

  print( saudacao.fold<String>('', (valorAnterior, elemento) => valorAnterior + elemento) );

}
