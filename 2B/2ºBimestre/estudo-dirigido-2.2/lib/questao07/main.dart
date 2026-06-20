import 'animal.dart';
import 'cachorro.dart';
import 'gato.dart';
import 'passaro.dart';
import 'vaca.dart';

void main() {
  List<Animal> animais = [
    Cachorro("Rex"),
    Gato("Mimi"),
    Passaro("Piu"),
    Vaca("Mimosa")
  ];

  for (var animal in animais) {
    animal.emitirSom();
  }
}