import 'dart:convert';

class Usuario {
  String nome;
  int idade;
  bool eEstudante;

  Usuario({required this.nome, 
           required this.idade, 
           required this.eEstudante});

  // Método para converter um objeto Usuario em um mapa
  Map<String, dynamic> paraJson() {
    return {
      'nome': nome,
      'idade': idade,
      'eEstudante': eEstudante,
    };
  }

  // Método para criar um objeto Usuario a partir de um mapa
  factory Usuario.deJson(Map<String, dynamic> json) {
    return Usuario(
      nome: json['nome'],
      idade: json['idade'],
      eEstudante: json['eEstudante'],
    );
  }
}

void main() {
  // String JSON com um único usuário
  String jsonString = '{"nome":"Alice","idade":30,"eEstudante":false}';

  // Converter a string JSON em um mapa
  Map<String, dynamic> usuarioJson = jsonDecode(jsonString);

  // Criar um objeto Usuario a partir do mapa
  Usuario usuario = Usuario.deJson(usuarioJson);

  // Exibir os detalhes do usuário
  print('''${usuario.nome}, 
           Idade: ${usuario.idade}, 
           Estudante: ${usuario.eEstudante}''');
           
  // Converter o objeto Usuario de volta para JSON
  String jsonSaida = jsonEncode(usuario.paraJson());
  print(jsonSaida);
}