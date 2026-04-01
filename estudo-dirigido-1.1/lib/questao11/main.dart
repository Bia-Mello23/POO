 import 'triangulo.dart';

void main() {
  Triangulo t1 = Triangulo(5, 4, 3, "*");
  Triangulo t2 = Triangulo(6, 5, 4, "#");

  print("Resumo T1");
  t1.exibirResumo();

  print("\n Resumo T2 ");
  t2.exibirResumo();

  print("\n Desenho Esquerda T1 ");
  t1.desenharEsquerda();

  print("\n Desenho Centralizado T1 ");
  t1.desenharCentralizado();

  print("\n Desenho Esquerda T2 ");
  t2.desenharEsquerda();

  print("\n Desenho Centralizado T2 ");
  t2.desenharCentralizado();

  print("\n Alterando lados do T1");
  t1.lado1 = 7;
  t1.lado2 = 6;
  t1.lado3 = 5;
  t1.exibirResumo();
}