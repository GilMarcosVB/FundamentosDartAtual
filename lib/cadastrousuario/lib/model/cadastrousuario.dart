import 'package:cadastrousuario/model/usuario.dart';
import 'package:cadastrousuario/controller/UsuarioController.dart';

void main() async {
  final usuarioController = UsuarioControler(); // Corrigido o nome da classe

  // Criando um objeto do tipo Usuario
  Usuario usuario = Usuario(
    nome: 'João',
    email: 'Brabo@gmail.com',
    senha: 'senha',
  );

  // Chamando o método para adicionar o usuário
  await usuarioController.adicionarUsuario(usuario); // Corrigido o nome do método
}
