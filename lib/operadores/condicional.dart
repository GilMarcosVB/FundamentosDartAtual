import 'dart:io';

void main() {
  const limiteIdade = 16;

  print("Informe a sua idade: ");
  final idade = stdin.readLineSync();
  /*
  = -> atribuição
  == -> Comparação
  < -> Menor que
  > => Maior que
  <= -> Menor ou igual a
  >= => Maior ou igual a
  != -> Diferente
  += -> soma e atribui
  -= -> subtrai e atribui
  *= -> multiplica e atribui
  /= -> divide e atribui
  ++ -> incrementa 1
  -- -> decrementa 1
  */
  if (idade != null) {
    final idadeConvertido = int.tryParse(idade);


    if (idadeConvertido != null && idadeConvertido < limiteIdade) {
      print("Não pode votar");
    }else if(idadeConvertido == limiteIdade){
      print("Primeiro ano de votação!");
    }else{
      print("Pode votar");
    }

    // Operador ternário    
    // (teste lógico)?Valor Se Verdadeiro:Valor Se Falso;
    final podeVotar = (idadeConvertido != null) ? idadeConvertido >= limiteIdade : false;
    
    if(podeVotar){
      print("Pode votar");
    }else{
      print("Não pode votar");
    }

  }// Fim do if (idade != null)
}
