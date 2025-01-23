void main() {
  print('--------------------------------- DESAFIO FUNDAMENTOS EM DART ---------------------------------');
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];


  //1º Imprima os dados dos pacientes na tela 
  print('\n// 1º - Pacientes');
  for (var paciente in pacientes) {
    final dados = paciente.split("|");
    print("Nome: ${dados[0]} Idade: ${dados[1]} Profissão: ${dados[2]} UF: ${dados[2]}");
  }
  

  //2º Imprima os pacientes acima de 20 anos
  print('\n// 2º - Pacientes acima de 20 ano');
  
  // 3º Imprima a quantidade de pacientes por profissão
  print('\n// 3º - Quantidade de pacientes por profissão');  
  print( '- Quantidade de Desenvolvedore(s):  ${0}');
  print( '- Quantidade de Estudante(s):  ${0}'); 
  print( '- Quantidade de Dentista(s):  ${0}');
  print( '- Quantidade de Jornalista(s):  ${0}'); 

  // 4º Imprima os pacientes do estado de SP
  // Deve ser impresso apenas Nome, idade e profissão.
  print('\N// 4º - Pacientes que moram em SP');

  // 5º Exclua todos os estudantes e em seguida imprima os pacientes

  // 6º Inclua os pacentes abaixo nas primeira posições
  // Manoel Silva|12|estagiário|MG'
  // Joaquim Rahman|18|estagiário|SP
  // Fernando Verne|35|estagiário|MG'
  
}
