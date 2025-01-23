import 'dart:convert';
import 'endereco.dart';
import 'package:http/http.dart' as http;

class EnderecoController {
  Future<Endereco> buscarEndereco(String cep) async {
    final url = Uri.parse('https://viacep.com.br/ws/$cep/json/');
    final resposta = await http.get(url);
    print(resposta.statusCode);
    if (resposta.statusCode == 200) {      
      Map<String, dynamic> cep = jsonDecode(resposta.body);
      if(cep.containsKey('erro') && cep['erro'] == 'true'){
        throw Exception("CEP não encontrado!");
      }
      return Endereco.deJson(cep);
    }else{
      throw Exception("Erro na busca do endereço: ${resposta.statusCode}");
      //return null;
    }
  }
}