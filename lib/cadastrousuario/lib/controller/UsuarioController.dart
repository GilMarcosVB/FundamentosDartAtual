import 'package:cadastrousuario/model/usuario.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

class UsuarioControler {
  static Database? _bancoDeDados;

// Para utilizar-los precisa unificar os 3 async , await e join
  Future<Database> get bancodeDados async {
    if (_bancoDeDados != null) {
      return _bancoDeDados!;
    } else {
      _bancoDeDados = await _iniciarBancoDeDados();
      return _bancoDeDados!;
    }
  }

  Future<Database> _iniciarBancoDeDados() async {
    String caminho = join(await getDatabasesPath(), 'usuarios.db');
    return await openDatabase(
      caminho,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          '''CREATE TABLE usuarios(id INTEGER PRIMARY KEY AUTOINCREMENT,
                            nome TEXT,
                            email TEXT,
                            senha TEXT)''',
        );
      },
    );
  }

  Future<int> AdicionarUsuario(Usuario usuario) async {
    final db = await bancodeDados;
    return await db.insert('usuarios', usuario.toMap());
  }

  Future<int> atualizarUsuario(Usuario usuario) async {
    final db = await bancodeDados;
    return await db.update('usuarios', usuario.toMap(),
        where: 'id = ?', whereArgs: [usuario.id]);
  }

  // Excluir Usuario
  Future<int> deletarUsuario(Usuario usuario) async {
    final db = await bancodeDados;
    return await db
        .delete('usuarios', where: 'id = ?', whereArgs: [usuario.id]);
  }

  // Obter dadosdo usuario atraves do ID
  Future<Usuario?> obterUsuario(int id) async {
    final db = await bancodeDados;
    List<Map<String, dynamic>> mapa =
        await db.query('usuario', where: 'id = ?', whereArgs: [id]);

    if (mapa.isNotEmpty) {
      return Usuario.fromMap(mapa.first);
    }
  }

  // Obter todos os usuarios
  Future<List<Usuario>> obterUsuarios() async {
    final db = await bancodeDados;
    final List<Map<String, dynamic>> mapa = await db.query('usuario');

    return List.generate(mapa.length, (i) {
      return Usuario.fromMap(mapa[i]);
    });
  }
}
