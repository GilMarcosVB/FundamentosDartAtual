// Declaração de função tradicional 
import 'dart:io';

// Argumentos posicionais
int somar(int a, int b) { 
  return a + b; 
}

void somarSemRetorno(int a, int b) {   
  print("O resultado de ${a} + ${b} = ${a + b}");
}

int somarComRetorno(int a, int b) { 
   return 0; 
}

void main(List<String> args) {
  print("Informe o 1º Numero");
  var numero1 = stdin.readLineSync();

  print("Informe o 2º Numero");
  var numero2 = stdin.readLineSync();

  try{
    var resultado = somar(int.parse(numero1!), int.parse(numero2!));
    print("O resultado de ${numero1} + ${numero2} = ${resultado}");
  }catch(e){
    print("Número 1 ou 2 inválido");
  }
}