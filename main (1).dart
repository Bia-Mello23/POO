import 'quadrado.dart';

void main() {
  Quadrado q1 = Quadrado(4, "*");
  Quadrado q2 = Quadrado(3, "#");
  Quadrado q3 = Quadrado(4, "@");

  print("Lado do Q1: ${q1.lado}");
  print("Caractere do Q1: ${q1.caractere}");

  print("Resumo Q1");
  q1.exibirResumo();

  print("Resumo Q2");
  q2.exibirResumo();

  print("Resumo Q3");
  q3.exibirResumo();

  print("Desenho Q1");
  q1.desenhar();

  print("Desenho Q2");
  q2.desenhar();

 
}