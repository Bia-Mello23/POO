import 'Animal.dart';
import 'Sonoro.dart';

class Vaca extends Animal implements Sonoro {

  Vaca (String nome, String tipo) :super (nome, tipo);

  @override
  void emitirSom() {
    print('Muh!');
  }
}