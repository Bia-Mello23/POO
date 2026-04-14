import 'contador.dart';

void main() {
  Contador c1 = Contador(5);
  Contador c2 = Contador(0);

  // Operações no contador 1
  c1.incrementar();
  c1.incrementar();
  c1.exibirValor();

  // Operações no contador 2
  c2.decrementar(); // não vai ficar negativo
  c2.incrementar();
  c2.exibirValor();

  // Zerando
  c1.zerar();
  c1.exibirValor();
}