// Função com parâmetros nomeados
import 'dart:io';

// Chave determina que o parametro é opcional e nomeado
void exibirMensagem({String nome = "Visitante", String mensagem = "Bem-vindo"}) {
  print("$mensagem, $nome.");
}

void exibirMensagemPocional([String? nome, String mensagem = "Bem-vindo"]) {
  print("$mensagem, ${nome ??= "Visitante"}.");
}

void main(List<String> args) {

  print("Digite o nome do Visitante");
  var visitante = stdin.readLineSync();

  print("Digite a mensagem");
  var mensagem = stdin.readLineSync();

  if( visitante != "" && mensagem != "" ){    
    exibirMensagem( mensagem: mensagem!, nome: visitante.toString() );
    exibirMensagemPocional(visitante!, mensagem);
  }else if( visitante == "" && mensagem == ""){
    exibirMensagem();
    exibirMensagemPocional();

  }else if( visitante != ""){
    exibirMensagem(nome: visitante!);
    exibirMensagemPocional(visitante!);

  }else if( mensagem != null && mensagem != ""){
    exibirMensagem(mensagem: mensagem);
    exibirMensagemPocional(null,mensagem);

  }
}
