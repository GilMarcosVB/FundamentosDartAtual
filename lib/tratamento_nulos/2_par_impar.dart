import 'dart:io';

void main(List<String> args) {
  print("Informe o número: ");
  final numero = stdin.readLineSync();
  if (numero != null && int.tryParse(numero) != null ) {
    final numeroConvertido = int.tryParse(numero);
    // if (numeroConvertido! % 2 == 0)
    //   print("Número Par");
    // else
    //   print("Número Impar");

    print("O número é ${numeroConvertido! % 2 == 0 ? 'Par':'Ímpar'}");
  }else{
    print("Número inteiro inválido. Ajuda eu fi");
  }
}
