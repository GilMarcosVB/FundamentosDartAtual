import 'dart:convert';

class Usuario {
  String nome;
  int idade;
  bool eEstudante;

  Usuario({required this.nome, required this.idade, required this.eEstudante});

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
  // String JSON com vários usuários
  String jsonString = '''
  [
    {"nome":"Alice","idade":30,"eEstudante":false},
    {"nome":"Bob","idade":25,"eEstudante":true},
    {"nome":"Charlie","idade":28,"eEstudante":false}
  ]
  ''';

  // Converter a string JSON em uma lista de mapas
  List<dynamic> usuariosJson = jsonDecode(jsonString);

  // Criar a lista de objetos Usuario a partir da lista do mapas
  List<Usuario> usuarios =
      usuariosJson.map((usuarioJson) => 
        Usuario.deJson(usuarioJson)).toList();

  // Exibir os detalhes do usuário  
  for (var usuario in usuarios) {
    print('''${usuario.nome}, 
           Idade: ${usuario.idade}, 
           Estudante: ${usuario.eEstudante?"Sim":"Não"}''');
  }

  // Converter o objeto Usuario de volta para JSON
  String jsonSaida = jsonEncode( 
                          usuarios.map( (usuario) 
                            => usuario.paraJson()).toList()
                     );
  print(jsonSaida);
}
