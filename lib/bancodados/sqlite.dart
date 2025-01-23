import 'package:sqlite3/sqlite3.dart';

class Usuario {
  final int? id;
  final String nome;
  final int idade;

  Usuario({this.id, required this.nome, required this.idade});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'idade': idade,
    };
  }
}

class DatabaseHelper {
  static late sqlite3.Database db;

  // Conectar ao banco de dados SQLite no arquivo específico
  static void conectar() {
    db = sqlite3.open(r'C:\Projetos\SQLite\escola.db'); // Caminho absoluto do banco de dados
    // Caso o banco não exista, ele será criado automaticamente
    db.execute(
      'CREATE TABLE IF NOT EXISTS usuarios (id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT, idade INTEGER)',
    );
  }

  // Inserir um novo usuário
  static void inserirUsuario(Usuario usuario) {
    db.execute(
      'INSERT INTO usuarios (nome, idade) VALUES (?, ?)',
      [usuario.nome, usuario.idade],
    );
  }

  // Atualizar um usuário
  static void atualizarUsuario(Usuario usuario) {
    db.execute(
      'UPDATE usuarios SET nome = ?, idade = ? WHERE id = ?',
      [usuario.nome, usuario.idade, usuario.id],
    );
  }

  // Excluir um usuário
  static void excluirUsuario(int id) {
    db.execute(
      'DELETE FROM usuarios WHERE id = ?',
      [id],
    );
  }

  // Obter todos os usuários
  static List<Usuario> obterUsuarios() {
    final result = db.select('SELECT * FROM usuarios');
    List<Usuario> usuarios = [];
    for (final row in result) {
      usuarios.add(Usuario(
        id: row['id'] as int?,
        nome: row['nome'] as String,
        idade: row['idade'] as int,
      ));
    }
    return usuarios;
  }

  // Fechar a conexão
  static void fecharConexao() {
    db.dispose();
  }
}

void main() {
  // Conectar ao banco
  DatabaseHelper.conectar();

  // Adicionar usuários
  var usuario1 = Usuario(nome: 'Carlos', idade: 30);
  var usuario2 = Usuario(nome: 'Ana', idade: 25);
  
  DatabaseHelper.inserirUsuario(usuario1);
  DatabaseHelper.inserirUsuario(usuario2);

  // Obter todos os usuários
  var usuarios = DatabaseHelper.obterUsuarios();
  for (var usuario in usuarios) {
    print('Usuario: ${usuario.nome}, Idade: ${usuario.idade}');
  }

  // Atualizar um usuário
  var usuarioAtualizado = Usuario(id: 1, nome: 'Carlos Silva', idade: 31);
  DatabaseHelper.atualizarUsuario(usuarioAtualizado);

  // Obter todos os usuários novamente
  var usuariosAtualizados = DatabaseHelper.obterUsuarios();
  for (var usuario in usuariosAtualizados) {
    print('Usuario Atualizado: ${usuario.nome}, Idade: ${usuario.idade}');
  }

  // Excluir um usuário
  DatabaseHelper.excluirUsuario(2);

  // Obter usuários restantes
  var usuariosRestantes = DatabaseHelper.obterUsuarios();
  for (var usuario in usuariosRestantes) {
    print('Usuario Restante: ${usuario.nome}, Idade: ${usuario.idade}');
  }

  // Fechar a conexão
  DatabaseHelper.fecharConexao();
}