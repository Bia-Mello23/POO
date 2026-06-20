import 'lista_generica.dart';
import 'Notebook.dart';
import 'Smartphone.dart';
import 'Televisao.dart';
import 'Ligavel.dart';

void main() {

  var s1 = Smartphone('Samsung', 'Galaxy S24', 'Android');
  var s2 = Smartphone('Apple', 'iPhone 15', 'iOS');
  var n1 = Notebook('Dell', 'Inspiron', '16 GB de RAM');
  var n2 = Notebook('Lenovo', 'ThinkPad', '32 GB de RAM');
  var t1 = Televisao('LG', 'OLED55', '55 polegadas');

  var listaDispositivos = ListaGenerica<Ligavel>();

  listaDispositivos.adicionar(s1);
  listaDispositivos.adicionar(s2);
  listaDispositivos.adicionar(n1);
  listaDispositivos.adicionar(n2);
  listaDispositivos.adicionar(t1);

  print('\n imprimirItens: \n');
  listaDispositivos.imprimirItens();

  print('\n Métodos Ligar e Desligar: \n');
  for (Ligavel dispositivo in listaDispositivos.itens) {
    dispositivo.ligar();
    dispositivo.desligar();
  }
}