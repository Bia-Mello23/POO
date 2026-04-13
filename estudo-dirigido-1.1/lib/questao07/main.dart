import 'contador.dart';

void main() {
  // Criando 2 contadores
  Contador c1 = Contador(5);
  Contador c2 = Contador(0);

  // Operações com o contador 1
  print("Contador 1:");
  c1.exibirValor();
  c1.incrementar();
  c1.incrementar();
  c1.exibirValor();
  c1.decrementar();
  c1.exibirValor();

  print("------------------");

  // Operações com o contador 2
  print("Contador 2:");
  c2.exibirValor();
  c2.decrementar(); // não pode ficar negativo
  c2.exibirValor();
  c2.incrementar();
  c2.exibirValor();
  c2.zerar();
  c2.exibirValor();
}