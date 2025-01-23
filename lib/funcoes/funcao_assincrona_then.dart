// Função assíncrona
Future<String> buscarDados() async {
  await Future.delayed(Duration(seconds: 2));
  return "Processamento Assíncrono  - hora: ${DateTime.now()}";
}

// Função síncrona
String processarDados() {
  return "Processando Síncrono - hora: ${DateTime.now()}";
}

void main() async {    
  buscarDados().then( (resultado){
    print(resultado);
  });
  
  // Chamada da função síncrona  
  print(processarDados());
}