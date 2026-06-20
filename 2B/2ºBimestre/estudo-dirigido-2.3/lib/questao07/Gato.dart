import 'Animal.dart';
import 'Sonoro.dart';

class Gato extends Animal implements Sonoro {

  Gato (String nome, String tipo) :super (nome, tipo);

  @override
  void emitirSom() {
    print('Miau!');
  }
}