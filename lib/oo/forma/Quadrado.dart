import 'Forma.dart';
import 'enum.dart';

class Quadrado extends Forma{
  double lado = 0;

  Quadrado( this.lado ) : super(tpForma.Quadrado);
 
  @override
  double calculaArea(){
    return lado * lado;
  }

}