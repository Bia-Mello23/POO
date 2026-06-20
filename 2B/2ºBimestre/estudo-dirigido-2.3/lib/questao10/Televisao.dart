import 'Dispositivo.dart';
import 'Ligavel.dart';

class Televisao extends Dispositivo implements Ligavel {
  String tamanhoPolegadas;

  Televisao (String marca, String modelo, this.tamanhoPolegadas) :super (marca, modelo);

  String toString() {
    return 'Marca: $marca | Modelo: $modelo | Polegadas: $tamanhoPolegadas';
  }

  @override
  void ligar() => print('A TV $marca, $modelo ligou!');

  @override
  void desligar() => print('A TV $marca, $modelo desligou!');
}