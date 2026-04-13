import 'quadrado.dart';

void main() {
  // 2 quadrados diferentes
  Quadrado q1 = Quadrado(3, "*");
  Quadrado q2 = Quadrado(5, "#");

  // 2 quadrados iguais
  Quadrado q3 = Quadrado(4, "@");
  Quadrado q4 = Quadrado(4, "%");

  // Exibindo resumos
  print("Quadrado 1:");
  q1.exibirResumo();
  q1.desenhar();

  print("\nQuadrado 2:");
  q2.exibirResumo();
  q2.desenhar();

  print("\nQuadrado 3:");
  q3.exibirResumo();
  q3.desenhar();

  print("\nQuadrado 4:");
  q4.exibirResumo();
  q4.desenhar();

  // Comparações
  print("\nComparações:");
  print("q1 == q2? ${q1.ehIgual(q2)}");
  print("q3 == q4? ${q3.ehIgual(q4)}");
}