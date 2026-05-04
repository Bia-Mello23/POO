import 'Cachorro.dart';
import 'Gato.dart';
import 'Passaro.dart';
void main(){
  var cachorro = Cachorro("Caozinho");
  var gato = Gato("Gatinho");
  var passaro = Passaro("Passarinho");

  cachorro.emitirSom();
  gato.emitirSom();
  passaro.emitirSom();
}