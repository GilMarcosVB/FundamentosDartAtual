import 'dart:math';

void main() {

  //********** FILLRANGE ***********/
  List<int?> numeros = [1, 2, 3, 4, 5];
  numeros.fillRange(1, 4);
  print(numeros);  
  // Saída: [1, null, null, null, 5]

  //********** SHUFFLE ***********/
  List<String> cartas = ['Copa', 'Espada', 'Ouro', 'Paus'];  
  // Embaralha a lista de cartas
  cartas.shuffle();  
  print(cartas);  // A saída será uma ordem aleatória das cartas

}