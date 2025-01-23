void main(List<String> args) {
  
   String nomeNonNullSafety;  
  //  Variável non-nullable tem que inicializar antes de utiilizar
  nomeNonNullSafety = '';
  print('nomeNonNullSafety Está vázia ${nomeNonNullSafety.isEmpty} ');

  String? nomeNullSafety;  
  if( nomeNullSafety != null ){
    print('nomeNullSafety Está vázia ${nomeNullSafety.isEmpty} ');
  }  

  String? nomeNullSafety1;  
  // ! ignora as validações do null safety e vc fica responsável em garantir
  // que a variável não está nula  
  nomeNullSafety1 = '';
  print('nomeNullSafety1 Está vázia ${nomeNullSafety1!.isEmpty} ');

  String? nomeNullSafety2;  
  // ?? é um operador ternário. Se a variável estiver nula, executará a expressão 
  // do lado direito do operador ??
  print('nomeNullSafety2 Está vázia ${nomeNullSafety2?.isEmpty ?? 'Não preenchido'} ');
  print('nomeNullSafety2 Está vázia ${nomeNullSafety2?.isEmpty ?? true} ');

  String? nomeNullSafety3;  
  // ?? é um operador ternário. Se a variável estiver nula, executará a expressão 
  // do lado direito do operador ??
  nomeNullSafety3 = 'Fulano';
  print('nomeNullSafety3 Está vázia ${nomeNullSafety3.isEmpty ?? 'Não preenchido'} ');
  print('nomeNullSafety3 Está vázia ${nomeNullSafety3?.isEmpty ?? true} ');

}