import 'Forma.dart';
import 'enum.dart';

class Triangulo extends Forma{
  double base = 0;  
  double altura = 0;  

  Triangulo( this.base, this.altura ) : super(tpForma.Triangulo);
 
  @override
  double calculaArea(){
    return base * altura / 2;
  }
 
}