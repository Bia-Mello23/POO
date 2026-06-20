import '../questao05/ListaGenerica.dart';
import 'Cachorro.dart';
import 'Gato.dart';
import 'Passaro.dart';
import 'Vaca.dart';
import 'Ovelha.dart';
import 'Sonoro.dart';

void main(){

  var Rex = Cachorro('Rex', 'Cachorro');
  var Mimi = Gato('Mimi', 'Gato');
  var Piu = Passaro('Piu', 'Passaro');
  var Mimosa = Vaca('Mimosa', 'Vaca');
  var Dolly = Ovelha('Dolly', 'Ovelha');

  print('\n Animais da lista \n');

  var listaAnimais = ListaGenerica<Sonoro>();

  listaAnimais.adicionar(Rex);
  listaAnimais.adicionar(Mimi);
  listaAnimais.adicionar(Piu);
  listaAnimais.adicionar(Mimosa);
  listaAnimais.adicionar(Dolly);

  listaAnimais.imprimirItens();

  print('\n Demontração dos Sons \n');

  for (var Animal in listaAnimais.itens) {
    Animal.emitirSom();
  }

}