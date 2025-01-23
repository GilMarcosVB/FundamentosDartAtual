void main() {
  /*
  Null Safety é uma caracteristica introdizida no DART a partir da
  versão 2.12 que visa evitar erros em tempo de execução.
  O Null Safety torna o sistema de Tipagem Forte mais rigoroso
  */

  // variáveis non-nullable
  String nomeCompletoSemAtribuicao;
  // print(nomeCompletoSemAtribuicao);
  nomeCompletoSemAtribuicao = "Fundamentos do Dart";

  // String nomeCompletoComAtribuicao = null;
  // nomeCompletoComAtribuicao = "Fundamentos do Dart";
  String nomeCompletoComAtribuicao = "Fundamentos do Dart";

  // variável nullable
  String? nomeCompletoComAtribuicaoNullAble = null;
  print(nomeCompletoComAtribuicaoNullAble);
 


}