import 'dart:ffi';

void main(){

  // sintaxe: 
  // <tipo> nome = atribuição;

  // <tipo> nome; 
  // nome = atribuição

  // fortemente tipada

  //Na declaração das variáveis 
  
  String nome = "Alunos Que Reclamam";

  int idade;
  idade = 10;

  double cotacaoDolar = 5.64;

  // Interpolação de String
  print("Nome ${nome} - Idade ${idade}");

  //Concatenação de Strings
  print("Nome " + nome +" - Idade " + idade.toString());

  /* Por ser fortemente tipado não permite atribuir um valor que 
   não perterce ao tipo da varável*/
  // idade = "Numero nove";

  /*Por ser fortemente tipado não permite atribuir uma valor que
  gera perda da precisão da informação*/
  // idade = 1.5;
  cotacaoDolar = 5;
  cotacaoDolar = 5.0;

  // Nome da varável não usar caracteres especiais, espaços ou 
  // palavras reservadas
  // https://dart.dev/language/keywords

  // Palavra reservada var é utilizada em Dart para declarar uma variavel
  // com o tipo inferido
  var idadeInferido = 1;
  idadeInferido = 20;

  // apresenta o erro na atribuição de um tipo diferente
  // idadeInferido = 1.5;

  print("Idade ${idadeInferido}");

  //aceita qualquer coisa
  dynamic tipoMae;
  tipoMae = 10;
  tipoMae = "String";

  /*Object é a classe base de todos os objetos
   Isso significa que todos os tipos em Dart, incluindo os tipos primitivos, são do tipo
   Object  
  */
  Object tipoMaeDasMaes;
  tipoMaeDasMaes = 20;
  tipoMaeDasMaes = 20.5;
  tipoMaeDasMaes = "20.5";

  //Evite tipos Object ou Dynamic, pois poderá ocorrer um erro em tempo de execução
  tipoMae += 10;

  print("Valor da variável tipoMae ${tipoMae}");

}