import 'Animal.dart';

class Passaro extends Animal {
  Passaro(String nome) :super (nome);

  @override
  void emitirSom(){
    print("$nome faz 'Piu piu'");
  }
}