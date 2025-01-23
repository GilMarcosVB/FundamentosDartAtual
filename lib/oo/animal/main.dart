import 'dart:ffi';

import 'alimento.dart';
import 'brinquedo.dart';
import 'cachorro.dart';
import 'gato.dart';
import 'tratamento.dart';
import 'veterinario.dart';

void main(List<String> args) {
    var racaoGato = Alimento("ração de atum");

    var gato = Gato("Garfield", 25.0,0,racaoGato);
    gato.fazerSom();

    // print(gato.toString());
    print(gato);

    var racaoCachorro = Alimento("Royal Canym");
    var bola = Brinquedo("Bola");
    var osso = Brinquedo("Osso");
    var piscina = Brinquedo("Piscina de Bolinha");
    Cachorro cachorro = Cachorro("Snup", 14.0, 0, racaoCachorro);
    cachorro.incluirBrinquedo(bola);
    cachorro.incluirBrinquedo(osso);

    cachorro.brincar(bola);

    final vetJoao = Veterinario("João");
    vetJoao.atender(cachorro);

    final vermifugar = Tratamento("Vermifugação");
    vetJoao.atender(gato,vermifugar);

}