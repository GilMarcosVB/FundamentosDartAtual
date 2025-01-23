void main() {

  //Declaração de varíavel e atribuição;
  var nomeCurso = "Fundamentos Dart";
  print(nomeCurso);

  // Uma variável pode ter o valor reatribuído, respeitando o tipo da sua declaração
  nomeCurso = "Fundamentos em Dart versão atual";
  print(nomeCurso);

  //Final
  // Uma variável declarada como final pode ser atribuída apenas uma vez e seu valor não pode 
  //ser alterado depois de ser definido
  final nomeCursoFinal = "Fundamentos em Dart";
  print(nomeCursoFinal);

  // Não é possível reatribuir o valor na varável declarada como final
  // nomeCursoFinal = "Fundamentos em Dart Atual";

  //Const
  const nomeCursoConstante = "Fundamentos em Dart";
  print(nomeCursoConstante);



}