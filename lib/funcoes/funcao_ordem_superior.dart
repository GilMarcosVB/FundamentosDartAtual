// Função que recebe outra função como parâmetro
void executarOperacao(int a, int b, Function operacao) {
  print(operacao(a, b));
}

void main(List<String> args) {

// Chamada com uma função anônima
  executarOperacao(4, 5, (a, b) => a + b); // Saída: 9
  executarOperacao(4, 5, (a, b) => a - b); // Saída: -1
  executarOperacao(4, 5, (a, b) => a * b); // Saída: 20
  executarOperacao(4, 5, (a, b) => a / b); // Saída: 4
  
  
}
