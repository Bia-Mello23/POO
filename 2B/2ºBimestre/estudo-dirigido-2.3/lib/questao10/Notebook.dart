import 'Dispositivo.dart';
import 'Ligavel.dart';

class Notebook extends Dispositivo implements Ligavel {
  String memoriaRam;

  Notebook (String marca, String modelo, this.memoriaRam) :super (marca, modelo);

  String toString() {
    return 'Marca: $marca | Modelo: $modelo | Memória RAM: $memoriaRam';
  }

  @override
  void ligar() => print('O Notebook $marca, $modelo ligou!');

  @override
  void desligar() => print('O NOtebbok $marca, $modelo desligou!');
}