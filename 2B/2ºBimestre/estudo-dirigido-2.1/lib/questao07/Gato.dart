import 'Animal.dart';

class Gato extends Animal {
  Gato (String nome) :super (nome);

  @override
  void emitirSom(){
    print("$nome faz 'miau'");
  }
}