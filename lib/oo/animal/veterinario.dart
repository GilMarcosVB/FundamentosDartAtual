import 'animal.dart';
import 'tratamento.dart';
// Associação
// Relacionamento entre Animal e Veterinario

class Veterinario {
  String nome;

  Veterinario(this.nome);

  void atender(Animal animal, [Tratamento? tratamento]) {
    if(tratamento != null)
      print('$nome está tratando o animal ${animal.nome} com ${tratamento.descricao}');
    else
      print('$nome está atendendo o animal ${animal.nome}');
  }
}