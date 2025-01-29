class Usuario {
  int? id;
  String nome;
  String email;
  String senha;

  Usuario(
      {this.id, required this.nome, required this.email, required this.senha});

// Converte um objeto de um usuario para um mapa (formato que o sqlite entende)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'senha': senha,
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      id: map['id'],
      nome: map['nome'],
      email: map['email'],
      senha: map['senha'],
    );
  }
}
