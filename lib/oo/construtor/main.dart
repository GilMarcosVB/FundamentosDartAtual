import 'padrao.dart' as padrao;
import 'com_parametros.dart' as com_parametro;
import 'inicializacao_formal.dart' as inic_formal;
import 'opcional_posicional.dart' as op_posicional;
import 'opcional_nomeado.dart' as op_nomeado;
import 'obrigatorio_nomeado.dart' as ob_nomeado;

void main(List<String> args) {
  //Construtor Padrão
  final carroGTR = padrao.Carro();
  carroGTR.fabricante = "Nissan";
  carroGTR.modelo = "GTR";
  carroGTR.anoFabricacao = 2012;
  carroGTR.anoModelo = 2011;
  carroGTR.temABS = true;
  carroGTR.imprimeDados();

  final carroGolDoLeo = padrao.Carro();
  carroGolDoLeo.fabricante = "Volkswagen";
  carroGolDoLeo.modelo = "Gol";
  carroGolDoLeo.anoFabricacao = 1988;
  carroGolDoLeo.anoModelo = 1988;
  carroGolDoLeo.temABS = false;
  // carroGolDoLeo.imprimeDados();
  print(carroGolDoLeo);

  // final carroF150 = Carro();
  // carroF150.imprimeDados();
  final carroGTR1 = com_parametro.Carro("Nissan 1","GTR",2012,2011,true);
  carroGTR1.imprimeDados();

  final carroGTR2 = inic_formal.Carro("Nissan 2","GTR",2012,2011,true);
  carroGTR2.imprimeDados();

  final carroGTR3 = op_posicional.Carro("Nissan 3","GTR");
  carroGTR3.imprimeDados();

  final carroGTR4 = op_posicional.Carro("Nissan 4","GTR",2013,2012,false);
  carroGTR4.imprimeDados();

  final carroGTR5 = op_nomeado.Carro("Nissan 5","GTR");
  carroGTR5.imprimeDados();

  final carroGTR6 = op_nomeado.Carro("Nissan 6","GTR", 
                                    //  anoFabricacao: 2013, 
                                     anoModelo: 2012,
                                    //  temABS: false
                                    );
  carroGTR6.imprimeDados();

  final carroGTR7 = ob_nomeado.Carro(fabricante: "Nissan 7",
                                     modelo: "GTR", 
                                     anoFabricacao: 2013, 
                                     anoModelo: 2012,
                                     temABS: false
                                    );
  carroGTR7.imprimeDados();

}