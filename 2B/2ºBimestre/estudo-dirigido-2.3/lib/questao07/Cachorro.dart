import 'Animal.dart';
import 'Sonoro.dart';

class Cachorro extends Animal implements Sonoro{

  Cachorro(String nome, String tipo): super(nome, tipo);

  @override
  void emitirSom(){
    print("Au!");
  }
}