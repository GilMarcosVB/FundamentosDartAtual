void main() {

  var somarAnonimo = (int a, int b) {
    return a + b;
  };

  print("Chamando uma função anônima ${somarAnonimo(10,5)}");
  print("Chamando uma função nomeada ${somarNomeado(10,5)}");

  List<String> pessoas = ["Fulano|Gerente","Beltrano|Vendedor"];
  pessoas.forEach(print);

  // var imprimePessoa = ( String pessoa ){
  //     var dados = pessoa.split("|");
  //     print("Nome: ${dados[0]} Profissão: ${dados[1]}");
  // };
  // pessoas.forEach(imprimePessoa);  
  pessoas.forEach( ( String pessoa ){
       var dados = pessoa.split("|");
       print("${pessoas.indexOf(pessoa)+1 }º Nome: ${dados[0]} Profissão: ${dados[1]}");
   }
  );

  for (var pessoa in pessoas) {
     var dados = pessoa.split("|");
     print("Nome: ${dados[0]} Profissão: ${dados[1]}");
  }
}

int somarNomeado(int a, int b) {
  return a + b;
}
