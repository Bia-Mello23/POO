import 'quadrado.dart';

void main() {
  Quadrado q1 = Quadrado(4, "#");
  Quadrado q2 = Quadrado(3, "*");
  Quadrado q3 = Quadrado(4, "#");
  Quadrado q4 = Quadrado(4, "#");

  q1.exibirResumo();
  q2.exibirResumo();

  q1.desenhar();
  print("");

  q2.desenhar();
  print("");

  print("q1 e q3 são iguais? ${q1.ehIgual(q3)}");
  print("q3 e q4 são iguais? ${q3.ehIgual(q4)}");
}