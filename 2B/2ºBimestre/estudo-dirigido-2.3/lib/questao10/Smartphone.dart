import 'Dispositivo.dart';
import 'Ligavel.dart';

class Smartphone extends Dispositivo implements Ligavel {
  String SistemaOperacional;

  Smartphone (String marca, String modelo, this.SistemaOperacional) :super (marca,modelo);

  @override
  String toString(){
    return 'Marca: $marca | Modelo: $modelo | Sistema Operacional: $SistemaOperacional';
  }

  @override
  void ligar() => print('O smartphone $marca, $modelo ligou');

  @override
  void desligar() =>('O Smartphone $marca, $modelo desligou');
}