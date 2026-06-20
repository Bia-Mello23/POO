import 'Animal.dart';
import 'Sonoro.dart';

class Ovelha extends Animal implements Sonoro {

  Ovelha (String nome, String tipo) :super (nome, tipo);

  @override
  void emitirSom(){
    print('Beh!');
  }
}