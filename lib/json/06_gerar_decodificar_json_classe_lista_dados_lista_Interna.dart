import 'dart:convert';

class Usuario {
  String nome;
  int idade;
  bool eEstudante;
  List<String> telefones;
  List<String> emails;

  Usuario(
      {required this.nome,
      required this.idade,
      required this.eEstudante,
      required this.telefones,
      required this.emails});

  // Método para converter um objeto Usuario em um mapa
  Map<String, dynamic> paraJson() {
    return {
      'nome': nome,
      'idade': idade,
      'eEstudante': eEstudante,
      'telefones': telefones,
      'emails': emails
    };
  }

  // Método para criar um objeto Usuario a partir de um mapa
  factory Usuario.deJson(Map<String, dynamic> json) {
    return Usuario(
        nome: json['nome'],
        idade: json['idade'],
        eEstudante: json['eEstudante'],
        telefones: List<String>.from(json['telefones']),
        emails: List<String>.from(json['emails']));
  }
}

void main() {
  // String JSON com um único usuário
  String jsonString = '''[
                         {"nome":"Alice",
                          "idade":30,
                          "eEstudante":false,
                          "telefones": ["1234-5678","9876-5432"],
                          "emails": ["alice@gmail.com", "alice@hotmail.com"]
                          },
                         {"nome":"Bob",
                          "idade":25,
                          "eEstudante":true,
                          "telefones": ["2345-6789"],
                          "emails": ["bob@gmail.com"]
                          },
                         {"nome":"Carol",
                          "idade":29,
                          "eEstudante":false,
                          "telefones": ["3456-7890","3155-5698"],
                          "emails": ["carol@hotmail.com"]
                          }                          
                          ]''';

  // Converter a string JSON em uma Lista de mapas
  List<dynamic> usuariosJson = jsonDecode(jsonString);

  // Criar uma lista de objetos Usuario a partir da Lista de Mapas
  List<Usuario> usuarios =
      usuariosJson.map((usuarioJson) => Usuario.deJson(usuarioJson)).toList();

  for (var usuario in usuarios) {
    // Exibir os detalhes do usuário
    print('''
           Nome: ${usuario.nome}, 
           Idade: ${usuario.idade}, 
           Estudante: ${usuario.eEstudante}
           Telefone: ${usuario.telefones.join(', ')}
           E-mail: ${usuario.emails.join(', ')}
          ''');
  }

  // Converter a Lista de objeto Usuario de volta para JSON
  String jsonSaida = jsonEncode( usuarios.map((usuario) => usuario.paraJson()).toList());
  print(jsonSaida);
}
