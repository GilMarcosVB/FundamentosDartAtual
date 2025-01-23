// Função síncrona
String buscarDados() {
  // Simulando o retorno de dados sem delay
  return "Dados recebidos";
}

// Chamada da função síncrona
void main() {
  String resultado = buscarDados();
  print(resultado); // Saída: Dados recebidos
}