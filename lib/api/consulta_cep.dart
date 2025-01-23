import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> main(List<String> args) async{
  final url = Uri.parse('https://viacep.com.br/ws/17515440/json/');

  final resposta = await http.get(url);

  if(resposta.statusCode == 200){
    Map<String,dynamic> cep = jsonDecode(resposta.body);
    print("Logradouro: ${cep["logradouro"]}");
    print("Bairro: ${cep["bairro"]}");
    print("Cidade: ${cep["localidade"]}");
    print("UF: ${cep["uf"]}");

  }
}