import 'dart:convert';

import 'package:http/http.dart' as http;

class Endereco {
  String cep;
  String logradouro;
  String complemento;
  String unidade;
  String bairro;
  String localidade;
  String uf;
  String estado;
  String regiao;
  String ibge;
  String gia;
  String ddd;
  String siafi; 

  Endereco(
      {required this.cep,
      required this.logradouro,
      required this.complemento,
      required this.unidade,
      required this.bairro,
      required this.localidade,
      required this.uf,
      required this.estado,
      required this.regiao,
      required this.ibge,
      required this.gia,
      required this.ddd,
      required this.siafi});

  // Método para converter um objeto Usuario em um mapa
  Map<String, dynamic> paraJson() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'unidade': unidade,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'estado': estado,
      'regiao': regiao,
      'ibge': ibge,
      'gia': gia,
      'ddd': ddd,
      'siafi': siafi
    };
  }

  // Método para criar um objeto Usuario a partir de um mapa
  factory Endereco.deJson(Map<String, dynamic> json) {
    return Endereco(
        cep: json['cep'],
        logradouro: json['logradouro'],
        complemento: json['complemento'],
        unidade: json['unidade'],
        bairro: json['bairro'],
        localidade: json['localidade'],
        uf: json['uf'],
        estado: json['estado'],
        regiao: json['regiao'],
        ibge: json['ibge'],
        gia: json['gia'],
        ddd: json['ddd'],
        siafi: json['siafi']);
  }
}

Future<void> main(List<String> args) async {
  final url = Uri.parse('https://viacep.com.br/ws/17515440/json/');

  final resposta = await http.get(url);

  if (resposta.statusCode == 200) {
    Map<String, dynamic> cep = jsonDecode(resposta.body);
    Endereco endereco = Endereco.deJson(cep);
    print("Logradouro: ${endereco.logradouro}");
    print("Bairro: ${endereco.bairro}");
    print("Cidade: ${endereco.localidade}");
    print("UF: ${endereco.uf}");
  }
}
