String saudacao(String name, {DateTime? dateTime}){
  dateTime ??= DateTime.now();
  int hour = dateTime.hour;
  if( hour < 12){
    return('Bom dia, $name');
  }else if( hour < 18){
    return('Boa tarde, $name');    
  }else{
    return('Boa noite, $name');    
  }
}

void main(List<String> args) {
  print(saudacao("Maria"));
  final dataHora = DateTime(2023,6,13,15,30);
  print(saudacao("João",dateTime: dataHora));
  // print(saudacao("João",
                  // dateTime: DateTime(2023,6,13,15,30)));
}