import 'Forma.dart';
import 'enum.dart';

class Quadrado extends Forma {
  double lado = 0;

  Quadrado(this.lado) : super(tpForma.Quadrado) {
    Forma.idFormaClasse = 1;
    super.idFormaInstancia = 1;
  }

  @override
  double calculaArea() {
    return lado * lado;
  }
}
