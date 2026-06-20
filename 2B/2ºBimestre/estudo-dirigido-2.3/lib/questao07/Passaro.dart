import 'Animal.dart';
import 'Sonoro.dart';

class Passaro extends Animal implements Sonoro {

  Passaro (String nome, String tipo) :super (nome, tipo);

  @override
  void emitirSom() {
    print('Piu!');
  }
}