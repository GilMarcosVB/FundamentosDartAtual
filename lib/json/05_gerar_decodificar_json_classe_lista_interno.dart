import 'dart:convert';

class Usuario {
  String nome;
  int idade;
  bool eEstudante;
  List<String> telefones;
  List<String> emails;

  Usuario({required this.nome, 
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
      emails: List<String>.from(json['emails'])
    );
  }
}

void main() {
  // String JSON com um único usuário
  String jsonString = '''{"nome":"Alice",
                          "idade":30,
                          "eEstudante":false,
                          "telefones": ["1234-5678","9876-5432"],
                          "emails": ["alice@gmail.com", "alice@hotmail.com"]
                          }''';

  // Converter a string JSON em um mapa
  Map<String, dynamic> usuarioJson = jsonDecode(jsonString);

  // Criar um objeto Usuario a partir do mapa
  Usuario usuario = Usuario.deJson(usuarioJson);

  // Exibir os detalhes do usuário
  print('''${usuario.nome}, 
           Idade: ${usuario.idade}, 
           Estudante: ${usuario.eEstudante}''');
  print('Telefone: ${usuario.telefones.join(', ')}');         
  print('E-mail: ${usuario.emails.join(', ')}');         

  // Exibir os detalhes do usuário
  // print('''${usuario.nome}, 
  //          Idade: ${usuario.idade}, 
  //          Estudante: ${usuario.eEstudante},
  //          Telefone: ${usuario.telefones.join(', ')},
  //          E-mail: ${usuario.emails.join(', ')}
  //       ''');
           
  // Converter o objeto Usuario de volta para JSON
  String jsonSaida = jsonEncode(usuario.paraJson());
  print(jsonSaida);
}