import 'dart:io';
import 'endereco.dart';
import 'endereco_controller.dart';

String validaCEP(String? cep) {

  if (cep == null || cep.isEmpty){
    throw Exception("CEP inválido. Tente novamente!");
  }else {
    cep = cep.replaceAll(RegExp(r'[^0-9]'), '');
    if (cep.length != 8) {
      throw Exception("CEP inválido, deve possuir 8 números");
    } else {
      return cep;
    }
  }
  
}

void main(List<String> args) async {
  final controller = EnderecoController();

  print("Informe o CEP (Format 00000-000): ");
  String? cep = stdin.readLineSync();

  // if (cep != null && cep.isNotEmpty) {
  try {
    Endereco endereco = await controller.buscarEndereco(validaCEP(cep));
    if(endereco == null) {
      throw Exception("Não retornou nenhum endereço!");
    }
    print("Logradouro: ${endereco.logradouro}");
    print("Bairro: ${endereco.bairro}");
    print("Cidade: ${endereco.localidade}");
    print("UF: ${endereco.uf}");
  } catch (e) {
    print(e);
  }
  // }else{
  //   print("CEP inválido. Tente novamente!");
  // }
}
